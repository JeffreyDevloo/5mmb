set version 011719a

set struct_toon { account passwd name role raids}
# Toon list processing
set toons_l { }

array unset toons
array unset autodelete
array unset raidorder10
array unset raidorder20
array unset raidorder40
array unset levelingparty
set acc_client [dict create]
set dontsoulstone ""
set dontflashframe ""
set useautotrade ""
set dontautodelete ""
set dontbuystacks ""
set dontautopass ""
set autoturn ""
set clearcastmissiles ""
set warlockpet ""
set healhellfireat ""
set healtankat ""
set healchumpat ""
set healselfat ""
set maxheal "8 4 8 4"
set raidname "myraid1"
set gazefollow ""
set dedicated_healers ""
set powerleveler ""
set use2monitors false
set openlevelers ""
set shiftlevelers ""
set ctrllevelers ""
set goldto ""
set boeto ""
set monitor 4k
set oem oem3
# End toonlist processing
set HKN 5mmb_HKN.txt
set SME "Interface\\Addons\\SuperMacro\\SM_Extend.lua"
#set SME SM_Extend.lua
set fail false


proc wait_for_any_key {} {
	puts "hit any key to return"
	gets stdin char
}


# Validate the existence of the toonlist.
proc validate_toonlist {} {
	if { ! [file exist toonlist.txt ] } {
		puts "ERROR: YOU MUST HAVE A FILE NAMED toonlist.txt IN THIS DIRECTORY"
		puts ""
		puts "FORMAT OF FILE:"
		puts "# <-this is a comment. It is ignored by the program"
		puts "You need to specify your multibox accounts with 5 words starting with box"
		puts "box <accountname> <password> <toon name> <role>"
		puts "Role can be tank / melee/ caster / hunter /healer"
		puts "EVERY TOON must have a role"
		puts "Windows for the toons will come out on the screen in the order you list them."
		puts "First toon will be in upper left"
		puts "Last toon will be in lower right"
		puts "Tanks will get bigger windows, if possible"
		return false
	}
	return true
}


# Read the toonlist
proc parse_toonlist {} {

	# Validate the length of the line and throw exception if it doens't match
	proc validate_line_length { line {expected_elements 1} {message ""} } {
		if { [llength $line] != $expected_elements } {
			if { [$message != ""] } {
				set error_message $message
			} else {
				switch $expected_elements {
					1 {
						set error_message "ERROR: should be only one element on line $line"
					}
					default {
						set error_message "ERROR: incorrect number of elements line $line"
					}
				}
			}
			return -code error $error_message
		}
	}

	set tL [open toonlist.txt r]
	set supported_keyboard {"us" "uk" "de" "other"}
	set supported_monitors {"1k" "3k" "4k" }
	if { $tL != "" } {
		puts "Found toonlist.txt"
	} else {
		return -code error "ERROR: Could not open toonlist.txt in read mode."
	}
	if {[catch {
		while { [gets $tL line] >= 0 } {
			set line [regsub "\n" $line "" ]
			if { $line == "" } { continue }
			set line [string trim $line]
			if { [string index $line 0] == "#" } {
				continue
			}
			set first_word [string tolower [lindex $line 0]]
			switch $first_word {
				"box" {
					if { [llength $line] < 5 } { return -code error "ERROR: box takes 4 or 5 arguments in toonlist line $line" }
					set account [lindex $line 1]
					set passwd [lindex $line 2]
					set name [lindex $line 3]
					set role [lindex $line 4]
					set raidletters [string tolower [lrange $line 5 end]]
					set raids ""
					foreach userraid $raidletters {
						regexp {([a-z]|)([0-9])?} $userraid match userraid cpunum
						if { $cpunum=="" } { set cpunum 1 }
						lappend raids ${userraid}${cpunum}
					  }
					if { $raids == "" } { set raids m1 }
					lappend ::toons_l [list $account $passwd $name $role $raids]
				}
				"keyboard" {
					validate_line_length $line 2
					set keyboard [lindex $line 1]
					if { [lsearch -exact $supported_keyboard $keyboard ] == -1 }  { return -code error "ERROR: keyboard choices are us/uk/de/other" }
					switch $keyboard {
						"de" {
							set oem "oem5"
						}
						"other" {
							set oem "oem7"
						}
						"uk" {
							set oem "oem8"
						}
						default {
							set oem "oem3"
						}
					}
					set ::oem $oem
				}
				"monitor" {
					validate_line_length $line 2
					set monitor [lindex $line 1]
					if { [lsearch -exact $supported_monitors $monitor] == -1 }  { return -code error "ERROR: monitor choices are 1k/3k/4k"}
					set ::monitor $monitor
				}
				"computer" {
					validate_line_length $line 3
					set ::computer([lindex $line 1]) [lindex $line 2]
				}
				"raidname" {
					validate_line_length $line 2
					if { [llength [lindex $line 1]] > 1 } { return -code error "ERROR: arg must be one name $line" }
					set ::raidname [lindex $line 1]
				}
				"powerlevel" {
					validate_line_length $line 2
					if { [llength [lindex $line 1]] > 1 } { return -code error "ERROR: arg must be one name $line" }
					set ::powerleveler [lindex $line 1]
				}
				"bombfollow" {
					validate_line_length $line 2
					if { [llength [lindex $line 1]] > 1 } { return -code error "ERROR: arg must be one name $line" }
					set ::bombfollow [lindex $line 1]
				}
				"gazefollow" {
					validate_line_length $line 2
					if { [llength [lindex $line 1]] > 1 } { return -code error "ERROR: arg must be one name $line" }
						set ::gazefollow [lindex $line 1]
				}
				"dedicated_healers" {
					if { [expr ([llength $line]-1) % 2] } { return -code error "ERROR: must be sequence of paired tank and healer $line" }
					set ::dedicated_healers [lrange $line 1 end]
				}
				"goldto" {
					validate_line_length $line 2
					if { [llength [lindex $line 1]] > 1 } { return -code error "ERROR: arg must be one name $line" }
					set ::goldto [lindex $line 1]
				}
				"boeto" {
					if { [llength $line]  < 2 } { return -code error "ERROR: incorrect number of elements line $line" }
					set ::boeto [lrange $line 1 end]
				}
				"itemto" {
					if { [llength $line] < 3 } { return -code error "ERROR: incorrect number of elements line $line" }
					set ::itemto([lindex $line 1]) [lrange $line 2 end]
				}
				"maxheal" {
					validate_line_length $line 5
					set ::maxheal [lrange $line 1 end]
				}
				"dontautodelete" {
					validate_line_length $line 1
					set ::dontautodelete true
				}
				"dontsoulstone" {
					validate_line_length $line 1
					set ::dontsoulstone true
				}
				"dontflashframe" {
					validate_line_length $line 1
					set ::dontflashframe true
				}
				"use2monitors" {
					validate_line_length $line 1
					set ::use2monitors true
				}
				"useautotrade" {
					validate_line_length $line 1
					set ::useautotrade true
				}
				"dontbuystacks" {
					validate_line_length $line 1
					set ::dontbuystacks true
				}
				"dontautopass" {
					validate_line_length $line 1
					set ::dontautopass
				}
				"autoturn" {
					validate_line_length $line 1
					set ::autoturn true
				}
				"clearcastmissiles" {
					validate_line_length $line 1
					set ::clearcastmissiles true
				}
				"warlockpet" {
					validate_line_length $line 2
					set ::warlockpet [lindex $line 1]
				}
				"healhellfireat" {
					validate_line_length $line 2
					set ::healhellfireat [lindex $line 1]
				}
				"healtankat" {
					validate_line_length $line 2
					set ::healtankat [lindex $line 1]
				}
				"healchumpat" {
					validate_line_length $line 2
					set ::healchumpat [lindex $line 1]
				}
				"healselfat" {
					validate_line_length $line 2
					set ::healselfat [lindex $line 1]
				}
				"autodelete" {
					validate_line_length $line 3
					if {  [expr ([llength $line ]-1) % 2] } { return -code error "ERROR: must be even number of elements after command $line" }
					foreach {item stack} [lrange $line 1 end] {
						set ::autodelete($item) $stack
					}
				}
				"levelingparty" {
					if { [llength $line] < 2 || [llength $line] > 6  } { return -code error "ERROR: incorrect number of elements line $line. Must be between one and 5 toon names" }
					set sql [string totitle [ string tolower [lindex $line 1]]]
					set sqmem [lrange $line 2 end]
					set ::levelingparties($sql) $sqmem
				}
				"raidorder10" {
					if { [llength [lindex $line 1]] >11 } { return -code error "ERROR: second arg must 10 or less names $line"}
					set index [expr [array size raidorder10] + 1]
					set ::raidorder10($index) [lrange $line 1 end]
				}
				"raidorder20" {
					if { [llength [lindex $line 1]] >21 } { return -code error "ERROR: second arg must 20 or less names $line" }
					set index [expr [array size raidorder20] + 1]
					set ::raidorder20($index) [lrange $line 1 end]
				}
				"raidorder40" {
					if { [llength [lindex $line 1]] >41 } { puts "ERROR: second arg must 40 or less names $line" ; puts "hit any key to return" ; gets stdin char ; return }
					set index [expr [array size raidorder40] + 1]
					set ::raidorder40($index) [lrange $line 1 end]
				}
				"acc_client" {
					validate_line_length $line 3
					set account [lindex $line 1]
					set client [lindex $line 2]
					set ::acc_client($account) $client
				}
			}
		}
	} result] } {
		# On error
		close $tL
		return -code error $result
	} else {
		# On result
		close $tL
	}
}

# Validate the existence of the passed exe names
# Checks the full list. Does not exit after a single failure
# Returns true if an empty list was passed
proc validate_wow_exes { exe_names {mode "and"} } {
	set res true
	foreach {exe_name} $exe_names {
		set exists [file exist $exe_name]
		if { ! $exists } {
			puts "ERROR: THIS PROGRAM MUST BE THE DIRECTORY WHERE YOUR WOW.EXE resides. $exe_name not found."
		}
		set res [expr $res && $exists]
	}
	return $res
}

# Ask for overwrite. Returns true if user said OK to the overwrite
proc ask_overwrite {file_name} {
	set overwrite false
	if { [file exist $file_name] } {
	  puts "DO YOU WANT TO OVERWRITE $file_name ?"
	  puts "You should back this file up first."
	  puts "ARE YOU SURE YOU WANT TO OVERWRITE $file_name? y/n"
	  gets stdin char
	  if { $char!="Y" && $char!="y" } {
		puts "File won't be changed."
		set overwrite true
		wait_for_any_key
	  }
	}
	return $overwrite
}

# Get the wow.exe name to use for the given account
proc get_wow_executable_for_account { account } {
	if {[catch {
		puts [dict get $::acc_client $account]
	} result]} {
		return "wow.exe"
	} else {
		return $result
	}
}

proc write_autohot_key {} {
	if { $nohotkeyoverwrite } { return }
	set hK [open $HKN w+]
	set curdir [pwd]
	if {[catch {
		puts $hK {// Defined WoW Lauchers:
		// ***NOTE: NONE OF THESE ARE CASE SENSITIVE***
		//
		// Special keys:
		// Ctrl-i: send /init to all windows
		// Ctrl-l: send /reload to all windows
		// t: BACK UP HUNTERS (feel free to add other toons)
		// r: BACK UP MELEE
		// f: MOVE MELEE FORWARD
		// y: BACK UP HEALERS
		// h: BACK UP ALL MANA USERS
		// Alt Ctrl O: Close all windows
		// 0: party up! Form a party or raid with all your toons.

		//-----------------------------------------------------------
		// SUBROUTINE TO LAUNCH AND RENAME A COPY OF WOW.
		//-----------------------------------------------------------
		// Arguments:
		// LaunchAndRename %1<Which PC(always "Local" for us)> %2<Window Name> %3<Account> %4<Password> %5<Winsizex> %6<Winsizey> %7<Winposx> %8<Winposy>

	 <Command OpenOne>
		 <SendPC %1%>}
		set curdir [pwd]
		puts -nonewline $hK {     <Open "}
		puts $hK "$curdir/Wow.exe\" -nosound>"

		puts $hK {
	 <Command RunOne>
		 <SendPC %1%>}
		set curdir [pwd]
		puts -nonewline $hK {     <Run "}
		puts $hK "$curdir/Wow.exe\" -nosound>
		"

		puts $hK { <Command RenameAndSize>
		 <SendPC %1%>}
		puts $hK {     <TargetWin "World of Warcraft">
		 <RenameTargetWin %2%>
		 <SetWinSize %5% %6%>
		 <SetWinPos %7% %8%>
		 <SetForegroundWin>
		 <WaitForInputIdle>
		 <Text %3%>
		 <wait 50>
		 <Key Tab>
		 <wait 50>
		 <Text %4%>
		 //<RemoveWinFrame>

	 <Command LaunchHiresAndRename>
		 <SendPC %1%>
		 <Run "C:\wow_hires_1.12\WoW.exe" -nosound>
		 <RenameTargetWin %2%>
		 <WaitForWin %2% 40000>
		 <WaitForInputIdle 40000>
		 <Text %3%>
		 <Key Tab>
		 <WaitForInputIdle 40000>
		 <Wait 500>
		 <Text %4%>
		 <Key Enter>
		 <Wait 500>
		 <Key Enter>
		 <Text %4%>
		 <Key Enter>
		 <TargetWin %2%>
		 <SetWinSize %5% %6%>
		 <SetWinPos %7% %8%>

		// ResetWindowPosition %1<Which PC(always "Local" for us)> %2<Window Name> %3<Account> %4<Password> %5<Winsizex> %6<Winsizey> %7<Winposx> %8<Winposy>
		<Command ResetWindowPosition>
		   <SendPC %1%>
			  <TargetWin %2%>
			  <SetForegroundWin>
			  <SetWinSize %5% %6%>
			  <SetWinPos %7% %8%>
		}
		set totallabels 0
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set toonname [string tolower [lindex $toons($i) 2]]
		  set account [lindex $toons($i) 0]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
		  set length [string length $account]
			foreach mycomp $comps {
			if { $length > 2 } {
				set length [string length $account]
				set acctnick "[string index $account 0][string index $account [expr $length-2]][string index $account [expr $length-1]]"
			} else {
				set acctnick ${account}
			}
			set acct_winname($account) ${acctnick}
				set winnum [format "%03d" $totallabels]
			puts $hK "  <Label ax${winnum} $computer($mycomp) SendWinM ${toonname}_${mycomp}${acctnick}>"
				incr totallabels
			}
		}
		puts $hK ""

		# 20 Window Raid
		if { $monitor == "4k" } {
		  #4k
			if { $use2monitors } {
				set raidhash(5) "1920 1440 960 720 960 720 0 720 960 720 960 0 960 720 1920 0 960 720 2880 720"
				set raidhash(10) "1280 1020 0 960 1280 1020 1280 960 1280 1020 2560 960 640 480 640 0 640 480 0 0 640 480 0 480 640 480 1280 0 640 480 640 480 640 480 1280 480 640 480 1920 480"
				set raidhash(20) "640 480 0 0 960 720 0 1440 960 720 960 1440 960 720 1920 1440 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 0 960 640 480 640 960 640 480 1280 960 640 480 1920 960  640 480 2560 960"
			set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
			set raidhash(40) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
			} else {
				set raidhash(5) "1920 1440 960 720 960 720 0 720 960 720 960 0 960 720 1920 0 960 720 2880 720"
				set raidhash(10) "1280 1020 0 960 1280 1020 1280 960 1280 1020 2560 960 640 480 640 0 640 480 0 0 640 480 0 480 640 480 1280 0 640 480 640 480 640 480 1280 480 640 480 1920 480"
				set raidhash(20) "640 480 0 0 960 720 0 1440 960 720 960 1440 960 720 1920 1440 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 0 960 640 480 640 960 640 480 1280 960 640 480 1920 960  640 480 2560 960"
			set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
			set raidhash(40) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
			set raidhash(80) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
			}
		} elseif { $monitor == "3k" } {
		  #3k
			if { $use2monitors } {
				set raidhash(5) "1720 1440 860 0 860 720 0 0 860 720 0 720 860 720 2580 0 860 720 2580 720"
			set raidhash(10) "2064 960 688 0 688 480 0 0 688 480 0 480 688 480 0 960 688 480 688 960 688 480 1376 960 688 480 2064 960 688 480 2752 0 688 480 2752 480 688 480 2752 960"
			set raidhash(15) "1440 1200 720 0 720 600 0 0 720 600 0 600 720 600 2160 0 720 600 2160 600 480 400 2880 0 480 400 2880 400 480 400 2880 800 480 400 3360 0 480 400 3360 400 480 400 3360 800 480 400 3840 0 480 400 3840 400 480 400 3840 800 480 400 4320 0"
					set raidhash(20) "490 360 0 0 490 360 0 360 490 360 0 720 490 360 0 1080 490 360 490 0 490 360 490 360 490 360 490 720 490 360 490 1080 980 720 980 0 490 360 980 1080 490 360 1470 720 490 360 1470 1080 490 360 1960 0 490 360 1960 720 490 360 1960 1080 490 360 2450 0 490 360 2450 360 490 360 2450 720 490 360 2450 1080 490 360 980 720"
			} else {
				set raidhash(5) "1720 1440 860 0 860 720 0 0 860 720 0 720 860 720 2580 0 860 720 2580 720"
			set raidhash(10) "2064 960 688 0 688 480 0 0 688 480 0 480 688 480 0 960 688 480 688 960 688 480 1376 960 688 480 2064 960 688 480 2752 0 688 480 2752 480 688 480 2752 960"
			set raidhash(15) "1440 1200 720 0 720 600 0 0 720 600 0 600 720 600 2160 0 720 600 2160 600 480 400 2880 0 480 400 2880 400 480 400 2880 800 480 400 3360 0 480 400 3360 400 480 400 3360 800 480 400 3840 0 480 400 3840 400 480 400 3840 800 480 400 4320 0"
			set raidhash(20) "490 360 0 0 490 360 0 360 490 360 0 720 490 360 0 1080 490 360 490 0 490 360 490 360 490 360 490 720 490 360 490 1080 980 720 980 0 490 360 980 1080 490 360 1470 720 490 360 1470 1080 490 360 1960 0 490 360 1960 720 490 360 1960 1080 490 360 2450 0 490 360 2450 360 490 360 2450 720 490 360 2450 1080 490 360 980 720"
			}
		} else {
		  #1080p
			if { $use2monitors } {
				set raidhash(5) "1920 1080 0 0 960 540 1920 540 960 540 1920 0 960 540 2880 0 960 540 2880 540 "
				set raidhash(10) "1920 1080 0 0 640 360 1920 0 640 360 2560 0 640 360 3200 0 640 360 1920 360 640 360 2560 360 640 360 3200 360 640 360 1920 720 640 360 2560 720 640 360 3200 720 "
			set raidhash(20) "960 720 0 360 480 360 0 0 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 960 360 480 360 1440 360 480 360 960 720 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 "
			set raidhash(25) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720 "
			set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
			set raidhash(25) "266 215 774 0 774 645 0 430 266 215 774 215 266 215 774 430 266 215 774 645 266 215 774 860 266 215 1040 0 266 215 1040 215 266 215 1040 430 266 215 1040 645 266 215 1040 860 266 215 1307 0 266 215 1307 215 266 215 1307 430 266 215 1307 645 266 215 1307 860 266 215 1573 0 266 215 1573 215 266 215 1573 430 266 215 1573 645 266 215 1573 860 266 215 241 0 266 215 507 0 266 215 241 215 266 215 507 215"
			set raidhash(40) "240 180 0 0 480 360 480 720 480 360 0 720 480 360 960 720 480 360 1440 720 240 180 120 0 240 180 240 0 240 180 360 0 240 180 480 0 240 180 600 0 240 180 720 0 240 180 840 0 240 180 960 0 240 180 1200 0 240 180 1440 0 240 180 1680 0 240 180 0 180 240 180 240 180 240 180 480 180 240 180 720 180 240 180 960 180 240 180 1200 180 240 180 1440 180 240 180 1680 180 240 180 0 360 240 180 240 360 240 180 480 360 240 180 720 360 240 180 960 360 240 180 1200 360 240 180 1440 360 240 180 1680 360 240 180 0 540 240 180 240 540 240 180 480 540 240 180 720 540 240 180 960 540 240 180 1200 540 240 180 1440 540 240 180 1680 540"
			} else {
				set raidhash(5) "960 720 480 360 480 360 0 360 480 360 480 0 480 360 960 0 480 360 1440 360"
				set raidhash(10) "640 510 0 480 640 510 640 480 640 510 1280 480 320 240 320 0 320 240 0 0 320 240
			0 240 320 240 640 0 320 240 320 240 320 240 640 240 320 240 960 240"
			set raidhash(20) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720"
			set raidhash(25) "266 215 774 0 774 645 0 430 266 215 774 215 266 215 774 430 266 215 774 645 266 215 774 860 266 215 1040 0 266 215 1040 215 266 215 1040 430 266 215 1040 645 266 215 1040 860 266 215 1307 0 266 215 1307 215 266 215 1307 430 266 215 1307 645 266 215 1307 860 266 215 1573 0 266 215 1573 215 266 215 1573 430 266 215 1573 645 266 215 1573 860 266 215 241 0 266 215 507 0 266 215 241 215 266 215 507 215"
				set raidhash(40) "240 180 0 0 480 360 480 720 480 360 0 720 480 360 960 720 480 360 1440 720 240 180 120 0 240 180 240 0 240 180 360 0 240 180 480 0 240 180 600 0 240 180 720 0 240 180 840 0 240 180 960 0 240 180 1200 0 240 180 1440 0 240 180 1680 0 240 180 0 180 240 180 240 180 240 180 480 180 240 180 720 180 240 180 960 180 240 180 1200 180 240 180 1440 180 240 180 1680 180 240 180 0 360 240 180 240 360 240 180 480 360 240 180 720 360 240 180 960 360 240 180 1200 360 240 180 1440 360 240 180 1680 360 240 180 0 540 240 180 240 540 240 180 480 540 240 180 720 540 240 180 960 540 240 180 1200 540 240 180 1440 540 240 180 1680 540"
			}
		}
		array unset raidlist
		array unset raididx
		set raids ""
		for {set i 0} {$i < [array size toons]} {incr i} {
			foreach letter [lrange $toons($i) 4 end] {
				if {[lsearch $raids $letter]== -1} {
				  set raids "$raids $letter"
				}
			}
		}
		set mainraids ""
		foreach userraid $raids {
			regexp {([a-z]|[A-Z])([0-9])?} $userraid match userraid cpunum
			set raididx($userraid) 0
			array unset group${userraid}
			if { [lsearch $mainraids $userraid ] == -1 } { lappend mainraids $userraid }
		}
		for {set i 0} {$i < [array size toons]} {incr i} {
			set myraids [lrange $toons($i) 4 end]
			foreach userraid $myraids {
				regexp {([a-z]|[A-Z])([0-9])?} $userraid match userraid cpunum
				set group${userraid}($raididx($userraid)) "[lrange $toons($i) 0 3] ${userraid}${cpunum}"
				incr raididx($userraid)
			}
		}
		array unset windowcount
		for {set i 0} {$i < [array size toons]} {incr i} {
			set myraids [lrange $toons($i) 4 end]
		  foreach  userraid $myraids {
				if [info exists windowcount($userraid)] {
					incr windowcount($userraid)
				} else {
					set  windowcount($userraid) 1
				}
			}
		}
		foreach raid [array names windowcount] {
		  #Set window count in each raid to something I actually have a hash for
			if {$windowcount($raid) > 25} { set windowcount($raid) 40
			} elseif {$windowcount($raid) > 20 } { set windowcount($raid) 25
			} elseif {$windowcount($raid) > 10 } { set windowcount($raid) 20
			} elseif {$windowcount($raid) > 5 } { set windowcount($raid) 10
			} else { set windowcount($raid) 5 }
			set windex($raid) 0
		}
		foreach mainraid $mainraids {
			puts $hK ""
			puts $hK "<Hotkey ScrollLockOn Alt Ctrl $mainraid>"
			set arrayname group${mainraid}
			set sz [array size $arrayname]
			for { set i 0 } { $i<$sz } { incr i } {
				set thistoon [lindex [array get $arrayname $i] 1]
				set myraid [lindex $thistoon 4]
				set toonname [string tolower [lindex $thistoon 2]]
				regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				set account [lindex $thistoon 0]
				set winname ${toonname}_${cpunum}$acct_winname($account)
				puts $hK " <if WinDoesNotExist $winname>"
				if { $i==[expr $sz - 1] } {
				  puts $hK "   <RunOne $computer($cpunum)>"
				} else {
				  puts $hK "   <OpenOne $computer($cpunum)>"
				}
				puts $hK " <endif>"
			}
			puts $hK "   <TargetWin \"World of Warcraft\">"
			puts $hK "   <WaitForInputIdle 40000>"
			for { set i 0 } { $i<[array size $arrayname] } { incr i } {
				set thistoon [lindex [array get $arrayname $i] 1]
			set toonname [string tolower [lindex $thistoon 2]]
			set myraid [lindex $thistoon 4]
				regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			set account [lindex $thistoon 0]
			set passwd [lindex $thistoon 1]
			set winname ${toonname}_${cpunum}$acct_winname($account)
			puts $hK "  <if WinDoesNotExist $winname>"
			puts $hK "  <RenameAndSize $computer($cpunum) $winname $account $passwd [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+0]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+1]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+2]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+3]]>"
				puts $hK " <endif>"
				incr windex($myraid)
			}
			foreach raid [array names windowcount] {
				set windex($raid) 0
			}
			puts $hK ""
			puts $hK "<Hotkey ScrollLockOn Shift Ctrl $mainraid>"
			for { set i 0 } { $i<[array size $arrayname] } { incr i } {
				set thistoon [lindex [array get $arrayname $i] 1]
			set toonname [string tolower [lindex $thistoon 2]]
			set myraid [lindex $thistoon 4]
				regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			set account [lindex $thistoon 0]
			set passwd [lindex $thistoon 1]
			set winname ${toonname}_${cpunum}$acct_winname($account)
			puts $hK "  <ResetWindowPosition $computer($cpunum) $winname $account $passwd [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+0]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+1]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+2]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+3]]>"
				incr windex($myraid)
			}
		}
		set winlabels ""
		for { set i 0 } { $i<$totallabels } { incr i } {
			set winnum [format "%03d" $i]
			set winlabels  "$winlabels ax${winnum}"
		}
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Ctrl i>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<Key enter><Wait 250><key divide><wait 25><Text init><Wait 175><Key enter>"
		}
		puts $hK ""
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Ctrl l>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<Key enter><Wait 250><key divide><wait 25><Text reload><Wait 175><Key enter>"
		}
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Alt Ctrl o>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<CloseWin>"
		}
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn 0>"
		puts $hK "  <SendFocusWin><Key 0>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<Key Alt 4>"
		}
		puts $hK ""
		puts $hK {//-----------------------------------------------------------
		// DEFINE HOTKEYS FOR ALL KEY COMBINATIONS THAT WILL GET
		// SENT TO BOTH WOWS. ADD MORE KEY COMBO'S IF YOU WANT.
		//-----------------------------------------------------------
	<Hotkey ScrollLockOn A-Z, 1-9, Shift, Ctrl, Alt, Plus, Minus, Esc , Space, Tab, Divide, F1-F12 except E,F,Q,H, W, A, S, D, R, T, Y, I, U, J>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<Key %Trigger%>"
		}
		puts $hK ""
		puts $hK {//-----------------------------------------------------------
		// DEFINE MOVEMENT KEYS THAT WILL GET SENT TO BOTH WOW'S.
		// ADD MORE KEYS IF YOU WANT.
		//-----------------------------------------------------------
	<MovementHotkey ScrollLockOn up, down, left, right,e,q>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<Key %Trigger%>"
		}
		puts $hK ""
		puts $hK {//-----------------------------------------------------------
		// BROADCAST MOUSE CLICKS. HOLD DOWN oem3 (ON U.S. KEYBOARDS,
		// THAT'S THE SQUIGGLE KEY IN UPPPER LEFT CORNER) WHEN YOU
		// WANT TO BROADCAST. oem5 on euro kbs.
		//-----------------------------------------------------------}
		puts $hK "<UseKeyAsModifier $oem>"
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn $oem LButton, RButton, Button4, Button5>"
		puts $hK "<Cancel>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK "<ClickMouse %TriggerMainKey%>"
		}
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Alt 1><SendFocusWin><Key f10>"
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 1>}
			}
		puts $hK {<Hotkey ScrollLockOn Alt 2>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 2>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 3>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 3>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 4>}
		puts $hK {  <SendFocusWin> <Key f10>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 4>}
		}
			puts $hK {<Hotkey ScrollLockOn Alt 5>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 5>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 6>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 6>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 7>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Alt 7>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 8>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Alt 8>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 9>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Alt 9>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt 0>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Alt 0>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt Plus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Alt Plus>}
		}
		puts $hK {<Hotkey ScrollLockOn Alt Minus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Alt Minus>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 1>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Ctrl 1>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 2>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Ctrl 2>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 3>}
		puts $hK {  <SendFocusWin><Key Ctrl 3>}
		puts $hK {<Hotkey ScrollLockOn Ctrl 4>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {  <Key Ctrl 4>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 5>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 5>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 6>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 6>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 7>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 7>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 8>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 8>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 9>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 9>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl 0>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl 0>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl Plus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl Plus>}
		}
		puts $hK {<Hotkey ScrollLockOn Ctrl Minus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Ctrl Minus>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 1>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 1>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 2>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 2>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 3>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 3>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 4>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 4>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 5>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 5>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 6>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 6>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 7>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 7>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 8>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 8>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 9>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 9>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift 0>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift 0>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift Plus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift Plus>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift Minus>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift Minus>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F1>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F1>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F2>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F2>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F3>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F3>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F4>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F4>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F5>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F5>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F6>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F6>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F7>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F7>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F8>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F8>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F9>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F9>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F10>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F10>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F11>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F11>}
		}
		puts $hK {<Hotkey ScrollLockOn Shift F12>}
		foreach lab $winlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Shift F12>}
		}
		puts $hK ""
			puts $hK {//Hunter backup}
		puts $hK {<MovementHotkey ScrollLockOn T>}
		set totallabels 0
		set classlabels ""
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set role [lindex $toons($i) 3]
		  set role [string tolower $role ]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
			foreach mycomp $comps {
			if { $role=="hunter" } {
					set winnum [format "%03d" $totallabels]
			  set classlabels  "$classlabels ax${winnum}"
				}
			  incr totallabels
		  }
		}
		foreach lab $classlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Down>}
		}
		puts $hK ""
			puts $hK {//Melee backup}
		puts $hK {<MovementHotkey ScrollLockOn R>}
		set totallabels 0
		set classlabels ""
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set role [lindex $toons($i) 3]
		  set role [string tolower $role ]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
			foreach mycomp $comps {
			if { $role=="melee" } {
					set winnum [format "%03d" $totallabels]
			  set classlabels  "$classlabels ax${winnum}"
				}
			  incr totallabels
		  }
		}
		foreach lab $classlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key Down>}
		}
		puts $hK ""
			puts $hK {//Melee forward}
		puts $hK {<MovementHotkey ScrollLockOn F>}
		set totallabels 0
		set classlabels ""
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set role [lindex $toons($i) 3]
		  set role [string tolower $role ]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
			foreach mycomp $comps {
			if { $role=="melee" } {
					set winnum [format "%03d" $totallabels]
			  set classlabels  "$classlabels ax${winnum}"
				}
			  incr totallabels
		  }
		}
		foreach lab $classlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key up>}
		}
		puts $hK ""
			puts $hK {//Healer backup}
		puts $hK {<MovementHotkey ScrollLockOn Y>}
		set totallabels 0
		set classlabels ""
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set role [lindex $toons($i) 3]
		  set role [string tolower $role ]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
			foreach mycomp $comps {
			if { $role=="healer" } {
					set winnum [format "%03d" $totallabels]
			  set classlabels  "$classlabels ax${winnum}"
				}
			  incr totallabels
		  }
		}
		foreach lab $classlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key down>}
		}
		puts $hK ""
			puts $hK {//Mana backup}
		puts $hK {<MovementHotkey ScrollLockOn H>}
		set totallabels 0
		set classlabels ""
		for { set i 0 } { $i<[array size toons] } { incr i } {
		  set role [lindex $toons($i) 3]
		  set role [string tolower $role ]
		  set raids [lrange $toons($i) 4 end]
			set comps 1
			foreach myraid $raids {
				  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
				  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
			}
			foreach mycomp $comps {
			if { $role=="healer" || $role=="caster" } {
					set winnum [format "%03d" $totallabels]
			  set classlabels  "$classlabels ax${winnum}"
				}
			  incr totallabels
		  }
		}
		foreach lab $classlabels {
			puts -nonewline $hK "  <SendLabel "
			puts -nonewline $hK "${lab}>"
			puts $hK {<Key down>}
		}
	} result ] } {
		close $hK
	} else {
		close $hK
	}
}

#
# Start program
#
if {![validate_toonlist] } {
	return
}

# @todo fix
#if { ! ([validate_wow_exes {{"WoW.exe"}} ] || [validate_wow_exes {{"wow.exe"}} ]) } {
#	puts "No wow.exe found. Put the program in the wow.exe directory."
#	return
#}

set nohotkeyoverwrite false
set nosmoverwrite false
if { $fail } {
	wait_for_any_key
	return
}

set nohotkeyoverwrite [ask_overwrite $HKN]
set nosmoverwrite [ask_overwrite $SME]
if {[catch {
    parse_toonlist
} result]} {
	puts $result
	wait_for_any_key
	return
}

if { ! [info exists computer(1) ] } { set computer(1) Local }
set tooncount [llength $toons_l]

# Convert our list back the array. @todo use the list
for { set i 0 } { $i < $tooncount } { incr i } {
    set x [lindex $toons_l $i]
	set toons($i) [join x]
    puts "Items is $x index is $i"
}

if { $tooncount == 0 } {
  puts "ERROR: No box commands with toon names were found in toonlist.txt. "
  puts "SEE toonlist_command_reference.txt"
  wait_for_any_key
}

while { $tooncount >= 1 } {
  #puts $toons($tooncount)
  #puts "Account $account has password [lindex $toons($tooncount) 1]"
  set name [string tolower [lindex $toons($tooncount) 2]]
  set name [string totitle $name ]
  #puts "Account $account has toon name $name"
  #puts "Account $account has role [ string tolower [lindex $toons($tooncount) 3]]"
  incr tooncount -1
}

# Write out autohotkey
if { ! $nohotkeyoverwrite } {
	set hK [open $HKN w+]
	puts $hK {// Defined WoW Lauchers:
	// ***NOTE: NONE OF THESE ARE CASE SENSITIVE***
	//
	// Special keys:
	// Ctrl-i: send /init to all windows
	// Ctrl-l: send /reload to all windows
	// t: BACK UP HUNTERS (feel free to add other toons)
	// r: BACK UP MELEE
	// f: MOVE MELEE FORWARD
	// y: BACK UP HEALERS
	// h: BACK UP ALL MANA USERS
	// Alt Ctrl O: Close all windows
	// 0: party up! Form a party or raid with all your toons.

	//-----------------------------------------------------------
	// SUBROUTINE TO LAUNCH AND RENAME A COPY OF WOW.
	//-----------------------------------------------------------
	// Arguments:
	// LaunchAndRename %1<Which PC(always "Local" for us)> %2<Window Name> %3<Account> %4<Password> %5<Winsizex> %6<Winsizey> %7<Winposx> %8<Winposy>

 <Command OpenOne>
     <SendPC %1%>}
	set curdir [pwd]
	puts -nonewline $hK {     <Open "}
	puts $hK "$curdir/Wow.exe\" -nosound>"

	puts $hK {
 <Command RunOne>
     <SendPC %1%>}
	set curdir [pwd]
	puts -nonewline $hK {     <Run "}
	puts $hK "$curdir/Wow.exe\" -nosound>
	"

	puts $hK { <Command RenameAndSize>
     <SendPC %1%>}
	puts $hK {     <TargetWin "World of Warcraft">
     <RenameTargetWin %2%>
     <SetWinSize %5% %6%>
     <SetWinPos %7% %8%>
     <SetForegroundWin>
     <WaitForInputIdle>
     <Text %3%>
     <wait 50>
     <Key Tab>
     <wait 50>
     <Text %4%>
     //<RemoveWinFrame>

 <Command LaunchHiresAndRename>
     <SendPC %1%>
     <Run "C:\wow_hires_1.12\WoW.exe" -nosound>
     <RenameTargetWin %2%>
     <WaitForWin %2% 40000>
     <WaitForInputIdle 40000>
     <Text %3%>
     <Key Tab>
     <WaitForInputIdle 40000>
     <Wait 500>
     <Text %4%>
     <Key Enter>
     <Wait 500>
     <Key Enter>
     <Text %4%>
     <Key Enter>
     <TargetWin %2%>
     <SetWinSize %5% %6%>
     <SetWinPos %7% %8%>

	// ResetWindowPosition %1<Which PC(always "Local" for us)> %2<Window Name> %3<Account> %4<Password> %5<Winsizex> %6<Winsizey> %7<Winposx> %8<Winposy>
	<Command ResetWindowPosition>
	   <SendPC %1%>
	      <TargetWin %2%>
	      <SetForegroundWin>
	      <SetWinSize %5% %6%>
	      <SetWinPos %7% %8%>
	}
	set totallabels 0
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set toonname [string tolower [lindex $toons($i) 2]]
	  set account [lindex $toons($i) 0]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
	  set length [string length $account]
		foreach mycomp $comps {
	  	if { $length > 2 } {
	    	set length [string length $account]
	    	set acctnick "[string index $account 0][string index $account [expr $length-2]][string index $account [expr $length-1]]"
	  	} else {
	    	set acctnick ${account}
	  	}
	  	set acct_winname($account) ${acctnick}
			set winnum [format "%03d" $totallabels]
	  	puts $hK "  <Label ax${winnum} $computer($mycomp) SendWinM ${toonname}_${mycomp}${acctnick}>"
			incr totallabels
		}
	}
	puts $hK ""

	# 20 Window Raid
	if { $monitor == "4k" } {
	  #4k
		if { $use2monitors } {
			set raidhash(5) "1920 1440 960 720 960 720 0 720 960 720 960 0 960 720 1920 0 960 720 2880 720"
			set raidhash(10) "1280 1020 0 960 1280 1020 1280 960 1280 1020 2560 960 640 480 640 0 640 480 0 0 640 480 0 480 640 480 1280 0 640 480 640 480 640 480 1280 480 640 480 1920 480"
		 	set raidhash(20) "640 480 0 0 960 720 0 1440 960 720 960 1440 960 720 1920 1440 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 0 960 640 480 640 960 640 480 1280 960 640 480 1920 960  640 480 2560 960"
	  	set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
	  	set raidhash(40) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
		} else {
			set raidhash(5) "1920 1440 960 720 960 720 0 720 960 720 960 0 960 720 1920 0 960 720 2880 720"
			set raidhash(10) "1280 1020 0 960 1280 1020 1280 960 1280 1020 2560 960 640 480 640 0 640 480 0 0 640 480 0 480 640 480 1280 0 640 480 640 480 640 480 1280 480 640 480 1920 480"
		 	set raidhash(20) "640 480 0 0 960 720 0 1440 960 720 960 1440 960 720 1920 1440 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 0 960 640 480 640 960 640 480 1280 960 640 480 1920 960  640 480 2560 960"
	  	set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
	  	set raidhash(40) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
	  	set raidhash(80) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
		}
	} elseif { $monitor == "3k" } {
	  #3k
		if { $use2monitors } {
 			set raidhash(5) "1720 1440 860 0 860 720 0 0 860 720 0 720 860 720 2580 0 860 720 2580 720"
     	set raidhash(10) "2064 960 688 0 688 480 0 0 688 480 0 480 688 480 0 960 688 480 688 960 688 480 1376 960 688 480 2064 960 688 480 2752 0 688 480 2752 480 688 480 2752 960"
     	set raidhash(15) "1440 1200 720 0 720 600 0 0 720 600 0 600 720 600 2160 0 720 600 2160 600 480 400 2880 0 480 400 2880 400 480 400 2880 800 480 400 3360 0 480 400 3360 400 480 400 3360 800 480 400 3840 0 480 400 3840 400 480 400 3840 800 480 400 4320 0"
      			set raidhash(20) "490 360 0 0 490 360 0 360 490 360 0 720 490 360 0 1080 490 360 490 0 490 360 490 360 490 360 490 720 490 360 490 1080 980 720 980 0 490 360 980 1080 490 360 1470 720 490 360 1470 1080 490 360 1960 0 490 360 1960 720 490 360 1960 1080 490 360 2450 0 490 360 2450 360 490 360 2450 720 490 360 2450 1080 490 360 980 720"
		} else {
 			set raidhash(5) "1720 1440 860 0 860 720 0 0 860 720 0 720 860 720 2580 0 860 720 2580 720"
     	set raidhash(10) "2064 960 688 0 688 480 0 0 688 480 0 480 688 480 0 960 688 480 688 960 688 480 1376 960 688 480 2064 960 688 480 2752 0 688 480 2752 480 688 480 2752 960"
     	set raidhash(15) "1440 1200 720 0 720 600 0 0 720 600 0 600 720 600 2160 0 720 600 2160 600 480 400 2880 0 480 400 2880 400 480 400 2880 800 480 400 3360 0 480 400 3360 400 480 400 3360 800 480 400 3840 0 480 400 3840 400 480 400 3840 800 480 400 4320 0"
     	set raidhash(20) "490 360 0 0 490 360 0 360 490 360 0 720 490 360 0 1080 490 360 490 0 490 360 490 360 490 360 490 720 490 360 490 1080 980 720 980 0 490 360 980 1080 490 360 1470 720 490 360 1470 1080 490 360 1960 0 490 360 1960 720 490 360 1960 1080 490 360 2450 0 490 360 2450 360 490 360 2450 720 490 360 2450 1080 490 360 980 720"
		}
	} else {
	  #1080p
		if { $use2monitors } {
			set raidhash(5) "1920 1080 0 0 960 540 1920 540 960 540 1920 0 960 540 2880 0 960 540 2880 540 "
			set raidhash(10) "1920 1080 0 0 640 360 1920 0 640 360 2560 0 640 360 3200 0 640 360 1920 360 640 360 2560 360 640 360 3200 360 640 360 1920 720 640 360 2560 720 640 360 3200 720 "
	  	set raidhash(20) "960 720 0 360 480 360 0 0 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 960 360 480 360 1440 360 480 360 960 720 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 "
	  	set raidhash(25) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720 "
	  	set raidhash(25) "533 430 1548 0 1548 1290 0 860 533 430 1548 430 533 430 1548 860 533 430 1548 1290 533 430 1548 1720 533 430 2081 0 533 430 2081 430 533 430 2081 860 533 430 2081 1290 533 430 2081 1720 533 430 2614 0 533 430 2614 430 533 430 2614 860 533 430 2614 1290 533 430 2614 1720 533 430 3147 0 533 430 3147 430 533 430 3147 860 533 430 3147 1290 533 430 3147 1720 533 430 482 0 533 430 1015 0 533 430 482 430 533 430 1015 430"
	  	set raidhash(25) "266 215 774 0 774 645 0 430 266 215 774 215 266 215 774 430 266 215 774 645 266 215 774 860 266 215 1040 0 266 215 1040 215 266 215 1040 430 266 215 1040 645 266 215 1040 860 266 215 1307 0 266 215 1307 215 266 215 1307 430 266 215 1307 645 266 215 1307 860 266 215 1573 0 266 215 1573 215 266 215 1573 430 266 215 1573 645 266 215 1573 860 266 215 241 0 266 215 507 0 266 215 241 215 266 215 507 215"
		set raidhash(40) "240 180 0 0 480 360 480 720 480 360 0 720 480 360 960 720 480 360 1440 720 240 180 120 0 240 180 240 0 240 180 360 0 240 180 480 0 240 180 600 0 240 180 720 0 240 180 840 0 240 180 960 0 240 180 1200 0 240 180 1440 0 240 180 1680 0 240 180 0 180 240 180 240 180 240 180 480 180 240 180 720 180 240 180 960 180 240 180 1200 180 240 180 1440 180 240 180 1680 180 240 180 0 360 240 180 240 360 240 180 480 360 240 180 720 360 240 180 960 360 240 180 1200 360 240 180 1440 360 240 180 1680 360 240 180 0 540 240 180 240 540 240 180 480 540 240 180 720 540 240 180 960 540 240 180 1200 540 240 180 1440 540 240 180 1680 540"
		} else {
			set raidhash(5) "960 720 480 360 480 360 0 360 480 360 480 0 480 360 960 0 480 360 1440 360"
			set raidhash(10) "640 510 0 480 640 510 640 480 640 510 1280 480 320 240 320 0 320 240 0 0 320 240
	 	0 240 320 240 640 0 320 240 320 240 320 240 640 240 320 240 960 240"
	  	set raidhash(20) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720"
	  	set raidhash(25) "266 215 774 0 774 645 0 430 266 215 774 215 266 215 774 430 266 215 774 645 266 215 774 860 266 215 1040 0 266 215 1040 215 266 215 1040 430 266 215 1040 645 266 215 1040 860 266 215 1307 0 266 215 1307 215 266 215 1307 430 266 215 1307 645 266 215 1307 860 266 215 1573 0 266 215 1573 215 266 215 1573 430 266 215 1573 645 266 215 1573 860 266 215 241 0 266 215 507 0 266 215 241 215 266 215 507 215"
			set raidhash(40) "240 180 0 0 480 360 480 720 480 360 0 720 480 360 960 720 480 360 1440 720 240 180 120 0 240 180 240 0 240 180 360 0 240 180 480 0 240 180 600 0 240 180 720 0 240 180 840 0 240 180 960 0 240 180 1200 0 240 180 1440 0 240 180 1680 0 240 180 0 180 240 180 240 180 240 180 480 180 240 180 720 180 240 180 960 180 240 180 1200 180 240 180 1440 180 240 180 1680 180 240 180 0 360 240 180 240 360 240 180 480 360 240 180 720 360 240 180 960 360 240 180 1200 360 240 180 1440 360 240 180 1680 360 240 180 0 540 240 180 240 540 240 180 480 540 240 180 720 540 240 180 960 540 240 180 1200 540 240 180 1440 540 240 180 1680 540"
		}
	}
	array unset raidlist
	array unset raididx
	set raids ""
	for {set i 0} {$i < [array size toons]} {incr i} {
		foreach letter [lrange $toons($i) 4 end] {
			if {[lsearch $raids $letter]== -1} {
			  set raids "$raids $letter"
			}
		}
	}
	set mainraids ""
	foreach userraid $raids {
		regexp {([a-z]|[A-Z])([0-9])?} $userraid match userraid cpunum
		set raididx($userraid) 0
		array unset group${userraid}
		if { [lsearch $mainraids $userraid ] == -1 } { lappend mainraids $userraid }
	}
	for {set i 0} {$i < [array size toons]} {incr i} {
		set myraids [lrange $toons($i) 4 end]
		foreach userraid $myraids {
			regexp {([a-z]|[A-Z])([0-9])?} $userraid match userraid cpunum
			set group${userraid}($raididx($userraid)) "[lrange $toons($i) 0 3] ${userraid}${cpunum}"
			incr raididx($userraid)
		}
	}
	array unset windowcount
	for {set i 0} {$i < [array size toons]} {incr i} {
		set myraids [lrange $toons($i) 4 end]
	  foreach  userraid $myraids {
			if [info exists windowcount($userraid)] {
				incr windowcount($userraid)
			} else {
				set  windowcount($userraid) 1
			}
		}
	}
	foreach raid [array names windowcount] {
	  #Set window count in each raid to something I actually have a hash for
		if {$windowcount($raid) > 25} { set windowcount($raid) 40
		} elseif {$windowcount($raid) > 20 } { set windowcount($raid) 25
		} elseif {$windowcount($raid) > 10 } { set windowcount($raid) 20
		} elseif {$windowcount($raid) > 5 } { set windowcount($raid) 10
		} else { set windowcount($raid) 5 }
		set windex($raid) 0
	}
	foreach mainraid $mainraids {
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Alt Ctrl $mainraid>"
		set arrayname group${mainraid}
		set sz [array size $arrayname]
		for { set i 0 } { $i<$sz } { incr i } {
			set thistoon [lindex [array get $arrayname $i] 1]
	  		set myraid [lindex $thistoon 4]
	  		set toonname [string tolower [lindex $thistoon 2]]
			regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
	  		set account [lindex $thistoon 0]
	  		set winname ${toonname}_${cpunum}$acct_winname($account)
	  		puts $hK " <if WinDoesNotExist $winname>"
			if { $i==[expr $sz - 1] } {
			  puts $hK "   <RunOne $computer($cpunum)>"
		  	} else {
			  puts $hK "   <OpenOne $computer($cpunum)>"
		  	}
	  		puts $hK " <endif>"
		}
		puts $hK "   <TargetWin \"World of Warcraft\">"
		puts $hK "   <WaitForInputIdle 40000>"
		for { set i 0 } { $i<[array size $arrayname] } { incr i } {
			set thistoon [lindex [array get $arrayname $i] 1]
	  	set toonname [string tolower [lindex $thistoon 2]]
	  	set myraid [lindex $thistoon 4]
			regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
	  	set account [lindex $thistoon 0]
	  	set passwd [lindex $thistoon 1]
	  	set winname ${toonname}_${cpunum}$acct_winname($account)
	  	puts $hK "  <if WinDoesNotExist $winname>"
	  	puts $hK "  <RenameAndSize $computer($cpunum) $winname $account $passwd [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+0]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+1]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+2]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+3]]>"
	        puts $hK " <endif>"
			incr windex($myraid)
		}
		foreach raid [array names windowcount] {
			set windex($raid) 0
		}
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Shift Ctrl $mainraid>"
		for { set i 0 } { $i<[array size $arrayname] } { incr i } {
			set thistoon [lindex [array get $arrayname $i] 1]
	  	set toonname [string tolower [lindex $thistoon 2]]
	  	set myraid [lindex $thistoon 4]
			regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
	  	set account [lindex $thistoon 0]
	  	set passwd [lindex $thistoon 1]
	  	set winname ${toonname}_${cpunum}$acct_winname($account)
	  	puts $hK "  <ResetWindowPosition $computer($cpunum) $winname $account $passwd [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+0]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+1]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+2]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+3]]>"
			incr windex($myraid)
		}
	}
	set winlabels ""
	for { set i 0 } { $i<$totallabels } { incr i } {
		set winnum [format "%03d" $i]
		set winlabels  "$winlabels ax${winnum}"
	}
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn Ctrl i>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<Key enter><Wait 250><key divide><wait 25><Text init><Wait 175><Key enter>"
	}
	puts $hK ""
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn Ctrl l>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<Key enter><Wait 250><key divide><wait 25><Text reload><Wait 175><Key enter>"
	}
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn Alt Ctrl o>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<CloseWin>"
	}
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn 0>"
	puts $hK "  <SendFocusWin><Key 0>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<Key Alt 4>"
	}
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// DEFINE HOTKEYS FOR ALL KEY COMBINATIONS THAT WILL GET
	// SENT TO BOTH WOWS. ADD MORE KEY COMBO'S IF YOU WANT.
	//-----------------------------------------------------------
<Hotkey ScrollLockOn A-Z, 1-9, Shift, Ctrl, Alt, Plus, Minus, Esc , Space, Tab, Divide, F1-F12 except E,F,Q,H, W, A, S, D, R, T, Y, I, U, J>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<Key %Trigger%>"
	}
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// DEFINE MOVEMENT KEYS THAT WILL GET SENT TO BOTH WOW'S.
	// ADD MORE KEYS IF YOU WANT.
	//-----------------------------------------------------------
<MovementHotkey ScrollLockOn up, down, left, right,e,q>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<Key %Trigger%>"
	}
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// BROADCAST MOUSE CLICKS. HOLD DOWN oem3 (ON U.S. KEYBOARDS,
	// THAT'S THE SQUIGGLE KEY IN UPPPER LEFT CORNER) WHEN YOU
	// WANT TO BROADCAST. oem5 on euro kbs.
	//-----------------------------------------------------------}
	puts $hK "<UseKeyAsModifier $oem>"
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn $oem LButton, RButton, Button4, Button5>"
	puts $hK "<Cancel>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK "<ClickMouse %TriggerMainKey%>"
	}
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn Alt 1><SendFocusWin><Key f10>"
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 1>}
        }
	puts $hK {<Hotkey ScrollLockOn Alt 2>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 2>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 3>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 3>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 4>}
	puts $hK {  <SendFocusWin> <Key f10>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 4>}
	}
        puts $hK {<Hotkey ScrollLockOn Alt 5>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 5>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 6>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 6>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 7>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Alt 7>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 8>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Alt 8>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 9>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Alt 9>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt 0>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Alt 0>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt Plus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Alt Plus>}
	}
	puts $hK {<Hotkey ScrollLockOn Alt Minus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Alt Minus>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 1>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Ctrl 1>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 2>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Ctrl 2>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 3>}
	puts $hK {  <SendFocusWin><Key Ctrl 3>}
	puts $hK {<Hotkey ScrollLockOn Ctrl 4>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {  <Key Ctrl 4>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 5>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 5>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 6>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 6>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 7>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 7>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 8>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 8>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 9>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 9>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl 0>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl 0>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl Plus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl Plus>}
	}
	puts $hK {<Hotkey ScrollLockOn Ctrl Minus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Ctrl Minus>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 1>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 1>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 2>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 2>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 3>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 3>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 4>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 4>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 5>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 5>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 6>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 6>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 7>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 7>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 8>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 8>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 9>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 9>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift 0>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift 0>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift Plus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift Plus>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift Minus>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift Minus>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F1>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F1>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F2>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F2>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F3>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F3>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F4>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F4>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F5>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F5>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F6>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F6>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F7>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F7>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F8>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F8>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F9>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F9>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F10>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F10>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F11>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F11>}
	}
	puts $hK {<Hotkey ScrollLockOn Shift F12>}
	foreach lab $winlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Shift F12>}
	}
	puts $hK ""
        puts $hK {//Hunter backup}
	puts $hK {<MovementHotkey ScrollLockOn T>}
	set totallabels 0
	set classlabels ""
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
		foreach mycomp $comps {
	    if { $role=="hunter" } {
				set winnum [format "%03d" $totallabels]
	      set classlabels  "$classlabels ax${winnum}"
			}
		  incr totallabels
	  }
	}
	foreach lab $classlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Down>}
	}
	puts $hK ""
        puts $hK {//Melee backup}
	puts $hK {<MovementHotkey ScrollLockOn R>}
	set totallabels 0
	set classlabels ""
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
		foreach mycomp $comps {
	    if { $role=="melee" } {
				set winnum [format "%03d" $totallabels]
	      set classlabels  "$classlabels ax${winnum}"
			}
		  incr totallabels
	  }
	}
	foreach lab $classlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key Down>}
	}
	puts $hK ""
        puts $hK {//Melee forward}
	puts $hK {<MovementHotkey ScrollLockOn F>}
	set totallabels 0
	set classlabels ""
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
		foreach mycomp $comps {
	    if { $role=="melee" } {
				set winnum [format "%03d" $totallabels]
	      set classlabels  "$classlabels ax${winnum}"
			}
		  incr totallabels
	  }
	}
	foreach lab $classlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key up>}
	}
	puts $hK ""
        puts $hK {//Healer backup}
	puts $hK {<MovementHotkey ScrollLockOn Y>}
	set totallabels 0
	set classlabels ""
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
		foreach mycomp $comps {
	    if { $role=="healer" } {
				set winnum [format "%03d" $totallabels]
	      set classlabels  "$classlabels ax${winnum}"
			}
		  incr totallabels
	  }
	}
	foreach lab $classlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key down>}
	}
	puts $hK ""
        puts $hK {//Mana backup}
	puts $hK {<MovementHotkey ScrollLockOn H>}
	set totallabels 0
	set classlabels ""
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lrange $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum }
		}
		foreach mycomp $comps {
	    if { $role=="healer" || $role=="caster" } {
				set winnum [format "%03d" $totallabels]
	      set classlabels  "$classlabels ax${winnum}"
			}
		  incr totallabels
	  }
	}
	foreach lab $classlabels {
		puts -nonewline $hK "  <SendLabel "
		puts -nonewline $hK "${lab}>"
		puts $hK {<Key down>}
	}
}
if { ! $nosmoverwrite } {
	set INSTUFF2TRACK false
	set INAUTODELETE false
	set INTHELIST false
	set INLEVPART false
	set sM [open $SME r]
	set sMN [open tmp w+]
	while { [gets $sM line] >= 0 } {
	  if { [regexp "^MB_tanklist" $line ] } {
	    puts -nonewline $sMN "MB_tanklist=\{"
	    set first false
	    for { set i 0 } { $i<[array size toons] } { incr i } {
	      if { [lindex $toons($i) 3] == "tank" } {
	        set name [string totitle [ string tolower [lindex $toons($i) 2]]]
	        if { $first=="false" } {
	          puts -nonewline $sMN \"$name\"
	          set first true
	        } else {
	          puts -nonewline $sMN ,\"$name\"
	        }
	      }
	    }
	    puts $sMN "\}"
	  } elseif { [regexp "^MB_healer_list" $line ] } {
	    puts -nonewline $sMN "MB_healer_list=\{"
	    set first false
	    for { set i 0 } { $i<[array size toons] } { incr i } {
	      if { [lindex $toons($i) 3] == "healer" } {
	        set name [string totitle [ string tolower [lindex $toons($i) 2]]]
	        if { $first=="false" } {
	          puts -nonewline $sMN \"$name\"
	          set first true
	        } else {
	          puts -nonewline $sMN ,\"$name\"
	        }
	      }
	    }
	    puts $sMN "\}"
	  } elseif { [regexp "^MB_toonlist" $line ] } {
	    puts -nonewline $sMN "MB_toonlist=\{"
	    set first false
	    for { set i 0 } { $i<[array size toons] } { incr i } {
	      set name [string totitle [ string tolower [lindex $toons($i) 2]]]
	      if { $first=="false" } {
	        puts -nonewline $sMN \"$name\"
	        set first true
	      } else {
	        puts -nonewline $sMN ,\"$name\"
	      }
	    }
	    puts $sMN "\}"
		} elseif { [regexp "^MB_RAID" $line ] && $raidname!="" } {
	    puts $sMN "MB_RAID = \"MULTIBOX_$raidname\""
		} elseif { [regexp "^MB_powerleveler" $line ] && $powerleveler!="" } {
	    set powerleveler [string totitle [ string tolower $powerleveler]]
	    puts $sMN "MB_powerleveler=\"$powerleveler\""
		} elseif { [regexp "^MB_bomfollow" $line ] && $bombfollow!="" } {
	    set bombfollow [string totitle [ string tolower $bombfollow]]
	    puts $sMN "MB_bombfollow=\"$bombfollow\""
		} elseif { [regexp "^MB_gazefollow" $line ] && $gazefollow!="" } {
	    set gazefollow [string totitle [ string tolower $gazefollow]]
	    puts $sMN "MB_gazefollow=\"$gazefollow\""
	  } elseif { [regexp "^MB_dedicated_healers" $line ] } {
	    puts -nonewline $sMN "MB_dedicated_healers=\{"
	    set first true
	    foreach { tank healer } $dedicated_healers {
	      set tank [string totitle [ string tolower $tank]]
	      set healer [string totitle [ string tolower $healer]]
	      if { $first=="true" } {
	        puts -nonewline $sMN "$tank=\"$healer\""
	        set first false
	      } else {
	        puts -nonewline $sMN ",$tank=\"$healer\""
	      }
	    }
	    puts $sMN "\}"
	  } elseif { [regexp "^MB_maxheal" $line ] && $maxheal!="" } {
	    puts -nonewline $sMN "MB_maxheal=\{Druid=[lindex $maxheal 0],Priest=[lindex $maxheal 1],Shaman=[lindex $maxheal 2],Paladin=[lindex $maxheal 3]"
	    puts $sMN "\}"
		} elseif { [regexp "^MB_soulstone_rezzers" $line ] && $dontsoulstone == "true" } {
	    puts $sMN "MB_soulstone_rezzers=false"
		} elseif { [regexp "^MB_soulstone_rezzers" $line ] && $dontsoulstone == "" } {
	    puts $sMN "MB_soulstone_rezzers=true"
		} elseif { [regexp "^MB_frameflash" $line ] && $dontflashframe == "true" } {
	    puts $sMN "MB_frameflash=false"
		} elseif { [regexp "^MB_frameflash" $line ] && $dontflashframe == "" } {
	    puts $sMN "MB_frameflash=true"
		} elseif { [regexp "^MB_autotrade=" $line ] && $useautotrade == "true" } {
	    puts $sMN "MB_autotrade=true"
		} elseif { [regexp "^MB_autotrade=" $line ] && $useautotrade == "" } {
	    puts $sMN "MB_autotrade=false"
		} elseif { [regexp "^MB_autodelete" $line ] && $dontautodelete == "true" } {
	    puts $sMN "MB_autodelete=false"
		} elseif { [regexp "^MB_autodelete" $line ] && $dontautodelete == "" } {
	    puts $sMN "MB_autodelete=true"
		} elseif { [regexp "^MB_buystacks" $line ] && $dontbuystacks == "true" } {
	    puts $sMN "MB_buystacks=false"
		} elseif { [regexp "^MB_buystacks" $line ] && $dontbuystacks == "" } {
	    puts $sMN "MB_buystacks=true"
		} elseif { [regexp "^MB_autopass" $line ] && $dontautopass == "true" } {
	    puts $sMN "MB_autopass=false"
		} elseif { [regexp "^MB_autopass" $line ] && $dontautopass == "" } {
	    puts $sMN "MB_autopass=true"
		} elseif { [regexp "^MB_autoturn" $line ] && $autoturn == "true" } {
	    puts $sMN "MB_autoturn=true"
		} elseif { [regexp "^MB_autoturn" $line ] && $autoturn == "" } {
	    puts $sMN "MB_autoturn=false"
		} elseif { [regexp "^MB_clearcastAM" $line ] && $clearcastmissiles == "true" } {
	    puts $sMN "MB_clearcastAM=true"
		} elseif { [regexp "^MB_clearcastAM" $line ] && $clearcastmissiles == "" } {
	    puts $sMN "MB_clearcastAM=false"
		} elseif { [regexp "^MB_default_warlock_pet" $line ] && $warlockpet != "" } {
	      set warlockpet [string totitle [ string tolower $warlockpet]]
	    	puts $sMN "MB_default_warlock_pet=\"$warlockpet\""
		} elseif { [regexp "^MB_default_warlock_pet" $line ] && $warlockpet == "" } {
	    	puts $sMN "MB_default_warlock_pet=\"Imp\""
		} elseif { [regexp "^MB_hellfire_threshold" $line ] && $healhellfireat != "" } {
	    puts $sMN "MB_hellfire_threshold=$healhellfireat"
		} elseif { [regexp "^MB_hellfire_threshold" $line ] && $healhellfireat == "" } {
	    puts $sMN "MB_hellfire_threshold=.85"
		} elseif { [regexp "^MB_healtank_threshold" $line ] && $healtankat != "" } {
	    puts $sMN "MB_healtank_threshold=$healtankat"
		} elseif { [regexp "^MB_healtank_threshold" $line ] && $healtankat == "" } {
	    puts $sMN "MB_healtank_threshold=.5"
		} elseif { [regexp "^MB_healchump_threshold" $line ] && $healchumpat != "" } {
	    puts $sMN "MB_healchump_threshold=$healchumpat"
		} elseif { [regexp "^MB_healchump_threshold" $line ] && $healchumpat == "" } {
	    puts $sMN "MB_healchump_threshold=.33"
		} elseif { [regexp "^MB_healself_threshold" $line ] && $healselfat != "" } {
	    puts $sMN "MB_healself_threshold=$healselfat"
		} elseif { [regexp "^MB_healself_threshold" $line ] && $healselfat == "" } {
	    puts $sMN "MB_healself_threshold=.3"
		} elseif { [regexp "^FsR_Stuff2Track" $line ] } {
				set INSTUFF2TRACK true
		} elseif {$INSTUFF2TRACK && ![regexp "^FsR" $line] } {
		} elseif {$INSTUFF2TRACK && [regexp "^FsR" $line] && ![regexp "^FsR_Stuff2Track" $line] } {
				set INSTUFF2TRACK false
	    	puts $sMN "FsR_Stuff2Track=\{"
				if { $goldto!="" } {
	        set goldto [string totitle [ string tolower $goldto]]
	    		puts $sMN "\t\[\"Gold\"\] = \{itemkind = \"special\", collector = \{\"$goldto\"\}\},"
				} else {
	    		puts $sMN "\t\[\"Gold\"\] = \{itemkind = \"special\", collector = \{\"\"\}\},"
				}
				puts $sMN  	{	["EmptyBagSlots"] = {itemkind = "special"},
 	["Soul Shard"] = {itemkind = "special"},
	["Sacred Candle"] = {itemkind = "item" , class = {Priest = {AnnounceValue = 5}}},
 	["Symbol of Kings"] = {itemkind = "item" , class = {Paladin = {AnnounceValue = 5}}},
 	["Wild Thornroot"] = {itemkind = "item" , class = {Druid = {AnnounceValue = 5}}},
 	["Major Healing Potion"] = {itemkind = "item", class = {Druid = {},Rogue = {},Warrior = {},Hunter = {},Warlock = {},Mage = {}, Priest = {}, Shaman = {}, Paladin = {}}},
	["Major Mana Potion"] = {itemkind = "item" , class = {Druid = {}, Priest = {}, Shaman = {}, Paladin = {}}},}
				if { $boeto!="" } {
	    		puts -nonewline $sMN "\t\[\"BOE\"\] = \{itemkind = \"itemGrp\", collector = \{"
	    	  set first true
					foreach boetoon $boeto {
	          set boetoon [string totitle [ string tolower $boetoon]]
					  if { $first } {
						  puts -nonewline $sMN \"$boetoon\"
							set first false
						} else {
						  puts -nonewline $sMN ,\"$boetoon\"
			      }
					}
					puts $sMN "\}\},"
				} else {
	    		puts $sMN "\t\[\"BOE\"\] = \{itemkind = \"itemGrp\", collector = \{\"\"\}\},"
				}
				if { [array size itemto] > 0 } {
					foreach item [array names itemto ] {
						puts -nonewline $sMN "\t\[\"$item\"\] = \{itemkind = \"itemGrp\", collector = \{"
							set first true
	            foreach coll $itemto($item) {
	              set coll [string totitle [ string tolower $coll]]
								if { $first } {
									puts -nonewline $sMN \"$coll\"
									set first false
								} else {
									puts -nonewline $sMN ,\"$coll\"
								}
							}
							puts $sMN "\}\},"
					  }
					} else {
	    			puts $sMN "\t\[\"Lockbox\"\] = \{itemkind = \"itemGrp\", collector = \{\"\"\}\},"
					}
	 		puts $sMN {	["Conjured Sparkling Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}}}
			puts $sMN "\}"
			puts $sMN $line
		} elseif { [regexp "^MB_TheList" $line ] } {
				set INTHELIST true
		} elseif {$INTHELIST && ![regexp "^\}" $line] } {
		} elseif {$INTHELIST && [regexp "^\}" $line] } {
			set INTHELIST false
	   	puts $sMN "MB_TheList=\{"
	 	  set first true
		  foreach item [array names autodelete] {
	      if { $first } {
					puts -nonewline $sMN "\t\[\"$item\"\]=$autodelete($item)"
					set first false
				} else {
					puts -nonewline $sMN ",\n\t\[\"$item\"\]=$autodelete($item)"
			  }
			}
			puts $sMN ""
			puts $sMN $line
		} elseif { [regexp "^MB_levelingparties" $line ] } {
			set INLEVPART true
		} elseif {$INLEVPART && ![regexp "^\}" $line] } {
		} elseif {$INLEVPART && [regexp "^\}" $line] } {
			set INLEVPART false
			set firstparty false
	   	puts $sMN "MB_levelingparties=\{"
			set firstsq true
		  foreach sql [array names levelingparties] {
	      set sql [string totitle [ string tolower $sql]]
				set sq $levelingparties($sql)
				if { !$firstsq } {
				  puts -nonewline $sMN ",\n\t${sql}=\{"
				} else {
					puts -nonewline $sMN "\t${sql}=\{"
					set firstsq false
				}
				set firstmem true
				foreach sqmem $sq {
	        set sqmem [string totitle [ string tolower $sqmem]]
					if { !$firstmem } {
						puts -nonewline $sMN ","
						puts -nonewline $sMN "\"$sqmem\""
					} else {
						set firstmem false
						puts -nonewline $sMN "\"$sqmem\""
					}
				}
				puts -nonewline $sMN "\}"
			}
			puts $sMN ""
			puts $sMN $line
	  } else {
	    puts $sMN $line
	  }
	}
	close $sMN
	close $sM
	file copy -force tmp $SME
	file delete tmp
}
