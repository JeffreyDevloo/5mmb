set version 102718a
array unset toons
array unset autodelete
array unset raidorder10
array unset raidorder20
array unset raidorder40
set dontsoulstone ""
set dontflashframe ""
set dontautotrade ""
set dontautodelete ""
set dontbuystacks ""
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
set goldto ""
set boeto ""
set monitor 4k
set oem oem3
set HKN 5mmb_HKN.txt
set SME "Interface\\Addons\\SuperMacro\\SM_Extend.lua"
#set SME SM_Extend.lua
set fail false
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
	return
}
if { ! [file exist "wow.exe" ] && ! [file exist "Wow.exe"] } {
	puts "ERROR: THIS PROGRAM MUST BE THE DIRECTORY WHERE YOUR WOW.EXE resides"
	return
}
set nohotkeyoverwrite false
set nosmoverwrite false
if { $fail } { puts "hit any key to return" ; gets stdin char ; return }
set tL [open toonlist.txt r]
if { [set tL [open toonlist.txt r]] != "" } {
  puts "Found toonlist.txt"
} else {
  puts "ERROR: Could not open toonlist.txt in read mode."
}
if { [file exist $HKN] } {
  puts "DO YOU WANT TO OVERWRITE $HKN ?"
  puts "You should back this file up first."
  puts "ARE YOU SURE YOU WANT TO OVERWRITE $HKN? y/n"
  gets stdin char
  if { $char!="Y" && $char!="y" } {
    puts "File won't be changed."
    set nohotkeyoverwrite true
    puts "hit enter to continue" ; gets stdin char
  }
}
if { [file exist $SME] } {
  puts "DO YOU WANT TO OVERWRITE $SME ?"
  puts "You should back this file up first."
  puts "ARE YOU SURE YOU WANT TO OVERWRITE $SME? y/n"
  gets stdin char
  if { $char!="Y" && $char!="y" } {
    puts "File won't be changed."
	set nosmoverwrite true
    puts "hit enter to contineue" ; gets stdin char
  }
}
set numtoons 0
while { [gets $tL line] >= 0 } {
  set line [regsub "\n" $line "" ]
  if { $line == "" } { continue }
  set line [string trim $line] 
  if { [string index $line 0] != "#" } {
    if { [string tolower [lindex $line 0]] == "box" } {
      if { [llength $line] < 5 } { puts "ERROR: box takes 4 or 5 arguments in toonlist line $line" ; puts "hit any key to return" ; gets stdin char ; return }
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
      set toons($numtoons) "$account $passwd $name $role $raids"
      incr numtoons
    } elseif { [string tolower [lindex $line 0]] == "keyboard" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set keyboard [lindex $line 1] 
				if { $keyboard !="us" && $keyboard !="uk" && $keyboard !="de" }  { puts "ERROR: keyboard choices are us/uk/de" ; return }
				if { $keyboard=="de" } {
					set oem "oem5"
				} elseif { $keyboard=="uk" } {
					set oem "oem8"
				} else {
					set oem "oem3"
				}
    } elseif { [string tolower [lindex $line 0]] == "monitor" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set monitor [lindex $line 1] 
				if { $monitor !="1k" && $monitor !="4k" }  { puts "ERROR: monitor choices are 1k/4k" ; return }
    } elseif { [string tolower [lindex $line 0]] == "computer" } {
 		  	if { [llength $line] != 3 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set computer([lindex $line 1]) [lindex $line 2]
    } elseif { [string tolower [lindex $line 0]] == "raidname" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
 		  	if { [llength [lindex $line 1]] > 1 } { puts "ERROR: arg must be one name $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set raidname [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "bombfollow" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
 		  	if { [llength [lindex $line 1]] > 1 } { puts "ERROR: arg must be one name $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set bombfollow [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "gazefollow" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
 		  	if { [llength [lindex $line 1]] > 1 } { puts "ERROR: arg must be one name $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set gazefollow [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "dedicated_healers" } {
 		  	if { [expr ([llength $line]-1) % 2] } { puts "ERROR: must be sequence of paired tank and healer $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dedicated_healers [lrange $line 1 end]
    } elseif { [string tolower [lindex $line 0]] == "goldto" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
 		  	if { [llength [lindex $line 1]] > 1 } { puts "ERROR: arg must be one name $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set goldto [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "boeto" } {
 		  	if { [llength $line]  < 2 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set boeto [lrange $line 1 end]
    } elseif { [string tolower [lindex $line 0]] == "itemto" } {
 		  	if { [llength $line] < 3 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set itemto([lindex $line 1]) [lrange $line 2 end]
    } elseif { [string tolower [lindex $line 0]] == "maxheal" } {
 		  	if { [llength $line] != 5 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set maxheal [lrange $line 1 end]
    } elseif { [string tolower [lindex $line 0]] == "dontautodelete" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dontautodelete true
    } elseif { [string tolower [lindex $line 0]] == "dontsoulstone" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dontsoulstone true
    } elseif { [string tolower [lindex $line 0]] == "dontflashframe" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dontflashframe true
    } elseif { [string tolower [lindex $line 0]] == "dontautotrade" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dontautotrade true
    } elseif { [string tolower [lindex $line 0]] == "dontbuystacks" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set dontbuystacks true
    } elseif { [string tolower [lindex $line 0]] == "autoturn" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set autoturn true
    } elseif { [string tolower [lindex $line 0]] == "clearcastmissiles" } {
 		  	if { [llength $line] != 1 } { puts "ERROR: should be only one element on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set clearcastmissiles true
    } elseif { [string tolower [lindex $line 0]] == "warlockpet" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set warlockpet [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "healhellfireat" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set healhellfireat [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "healtankat" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set healtankat [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "healchumpat" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set healchumpat [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "healchumpat" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set healchumpat [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "healselfat" } {
 		  	if { [llength $line] != 2 } { puts "ERROR: should be only two elements on line $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set healselfat [lindex $line 1]
    } elseif { [string tolower [lindex $line 0]] == "autodelete" } {
 		  	if { [llength $line] < 3 } { puts "ERROR: incorrect number of elements line $line" ; puts "hit any key to return" ; gets stdin char ; return }
 		  	if {  [expr ([llength $line ]-1) % 2] } { puts "ERROR: must be even number of elements after command $line" ; puts "hit any key to return" ; gets stdin char ; return }
				foreach {item stack} [lrange $line 1 end] {
					set autodelete($item) $stack
				}
    } elseif { [string tolower [lindex $line 0]] == "raidorder10" } {
 		  	if { [llength [lindex $line 1]] >11 } { puts "ERROR: second arg must 10 or less names $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set index [expr [array size raidorder10] + 1]
				set raidorder10($index) [lrange $line 1 end]
    } elseif { [string tolower [lindex $line 0]] == "raidorder20" } {
 		  	if { [llength [lindex $line 1]] >21 } { puts "ERROR: second arg must 20 or less names $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set index [expr [array size raidorder20] + 1]
				set raidorder20($index) [lrange $line 1 end]
    } elseif { [string tolower [lindex $line 0]] == "raidorder40" } {
 		  	if { [llength [lindex $line 1]] >41 } { puts "ERROR: second arg must 40 or less names $line" ; puts "hit any key to return" ; gets stdin char ; return }
				set index [expr [array size raidorder40] + 1]
				set raidorder40($index) [lrange $line 1 end]
    }
  }
}
if { ! [info exists computer(1) ] } { set computer(1) Local }
if $numtoons==0 { 
  puts "ERROR: No box commands with toon names were found in toonlist.txt. "
  puts "SEE toonlist_command_reference.txt"
  puts "hit any key to return" ; gets stdin char ; return
}
set tooncount $numtoons
close $tL 
while { $tooncount >= 1 } {
  incr tooncount -1
  #puts $toons($tooncount)
  #puts "Account $account has password [lindex $toons($tooncount) 1]"
  set name [string tolower [lindex $toons($tooncount) 2]]
  set name [string totitle $name ]
  #puts "Account $account has toon name $name"
  #puts "Account $account has role [ string tolower [lindex $toons($tooncount) 3]]"
}
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
	
	<Command LaunchAndRename>
	   <SendPC %1%>}
	set curdir [pwd]
	puts -nonewline $hK {   <Run "}
	puts $hK "$curdir/Wow.exe\" -nosound>"
	puts $hK {      <RenameTargetWin %2%>  
	      <WaitForWin %2% 40000>
	      <WaitForInputIdle 40000>
	      <Text %3%>
	      <Key Tab>
	      <Text %4%>
	      <TargetWin %2%>
	      //<RemoveWinFrame>
	      <SetWinSize %5% %6%>
	      <SetWinPos %7% %8%>
	
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
	  set raids [lindex $toons($i) 4 end]
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
	  	puts $hK "  <Label w${totallabels} $computer($mycomp) SendWinM ${toonname}_${mycomp}${acctnick}>"
			incr totallabels
		}
	}
	puts $hK ""
	  
	# 20 Window Raid 
	if { $monitor == "4k" } {
	  #4k
		set raidhash(5) "1920 1440 960 720 960 720 0 720 960 720 960 0 960 720 1920 0 960 720 2880 720"
		set raidhash(10) "1280 1020 0 960 1280 1020 1280 960 1280 1020 2560 960 640 480 640 0 640 480 0 0 640 480 0 480 640 480 1280 0 640 480 640 480 640 480 1280 480 640 480 1920 480"
	  set raidhash(20) "640 480 0 0 960 720 0 1440 960 720 960 1440 960 720 1920 1440 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 0 960 640 480 640 960 640 480 1280 960 640 480 1920 960  640 480 2560 960" 
	  set raidhash(40) " 480 360 0 0 1440 1080 960 1080 480 360 480 0 480 360 960 0 480 360 1440 0 480 360 1920 0 480 360 2400 0 480 360 2880 0 480 360 3360 0 480 360 0 360 480 360 480 360 480 360 960 360 480 360 1440 360 480 360 1920 360 480 360 2400 360 480 360 2880 360 480 360 3360 360 480 360 0 720 480 360 480 720 480 360 960 720 480 360 1440 720 480 360 1920 720 480 360 2400 720 480 360 2880 720 480 360 3360 720 480 360 0 1080 480 360 480 1080 480 360 2400 1080 480 360 2880 1080 480 360 3360 1080 480 360 0 1440 480 360 480 1440 480 360 2400 1440 480 360 2880 1440 480 360 3360 1440 480 360 0 1800 480 360 480 1800 480 360 2400 1800 480 360 2880 1800 480 360 3360 1800"
	} else {
	  #1080p
		set raidhash(5) "960 720 480 360 480 360 0 360 480 360 480 0 480 360 960 0 480 360 1440 360"
		set raidhash(10) "640 510 0 480 640 510 640 480 640 510 1280 480 320 240 320 0 320 240 0 0 320 240
	 0 240 320 240 640 0 320 240 320 240 320 240 640 240 320 240 960 240"
	  set raidhash(20) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720"
		set raidhash(40) "240 180 0 0 480 360 480 720 480 360 0 720 480 360 960 720 480 360 1440 720 240 180 120 0 240 180 240 0 240 180 360 0 240 180 480 0 240 180 600 0 240 180 720 0 240 180 840 0 240 180 960 0 240 180 1200 0 240 180 1440 0 240 180 1680 0 240 180 0 180 240 180 240 180 240 180 480 180 240 180 720 180 240 180 960 180 240 180 1200 180 240 180 1440 180 240 180 1680 180 240 180 0 360 240 180 240 360 240 180 480 360 240 180 720 360 240 180 960 360 240 180 1200 360 240 180 1440 360 240 180 1680 360 240 180 0 540 240 180 240 540 240 180 480 540 240 180 720 540 240 180 960 540 240 180 1200 540 240 180 1440 540 240 180 1680 540"
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
		if {$windowcount($raid) > 20} { set windowcount($raid) 40
		} elseif {$windowcount($raid) > 10 } { set windowcount($raid) 20  
		} elseif {$windowcount($raid) > 5 } { set windowcount($raid) 10  
		} else { set windowcount($raid) 5 } 
		set windex($raid) 0
	}
	foreach mainraid $mainraids {
		puts $hK ""
		puts $hK "<Hotkey ScrollLockOn Alt Ctrl $mainraid>"
		set arrayname group${mainraid}
		for { set i 0 } { $i<[array size $arrayname] } { incr i } {
			set thistoon [lindex [array get $arrayname $i] 1]
	  	set toonname [string tolower [lindex $thistoon 2]]
	  	set myraid [lindex $thistoon 4]
			regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
	  	set account [lindex $thistoon 0]
	  	set passwd [lindex $thistoon 1]
	  	set winname ${toonname}_${cpunum}$acct_winname($account)
	  	puts $hK "  <if WinDoesNotExist $winname>"
	  	puts $hK "  <LaunchAndRename $computer($cpunum) $winname $account $passwd [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+0]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+1]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+2]] [lindex $raidhash($windowcount($myraid)) [expr $windex($myraid)*4+3]]>"
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
	set winlabels "  <SendLabel"
	for { set i 0 } { $i<$totallabels } { incr i } {
	  if { $winlabels=="  <SendLabel" } { set winlabels  "$winlabels w${i}" } else { set winlabels "${winlabels},w${i}" } 
	}
	set winlabels "${winlabels}>"
	puts $hK "" 
	puts $hK "<Hotkey ScrollLockOn Ctrl i>"
	puts $hK $winlabels
	puts $hK {  <Key enter>
	  <Wait 250>
	  <Text /init>
	  <Wait 175>
	  <Key enter>
	}
	puts $hK "<Hotkey ScrollLockOn Ctrl l>"
	puts $hK $winlabels
	puts $hK {  <Key enter>
	  <Wait 250>
	  <Text /reload>
	  <Wait 175>
	  <Key enter>
	}
	puts $hK "<Hotkey ScrollLockOn Alt Ctrl o>"
	puts $hK $winlabels
	puts $hK {  <CloseWin>
	}
	puts $hK "<Hotkey ScrollLockOn 0>"
	puts $hK {  <SendFocusWin>
	  <Key 0>}
	puts $hK $winlabels
	puts $hK "  <Key Alt 4>"
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// DEFINE HOTKEYS FOR ALL KEY COMBINATIONS THAT WILL GET
	// SENT TO BOTH WOWS. ADD MORE KEY COMBO'S IF YOU WANT.
	//-----------------------------------------------------------
	<Hotkey ScrollLockOn A-Z, 1-9, Shift, Ctrl, Alt, Plus, Minus, Esc , Space, Tab, Divide, F1-F12 except E,F,Q,H, W, A, S, D, R, T, Y, I, U, J>}
	puts $hK $winlabels
	puts $hK { <Key %Trigger%>}
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// DEFINE MOVEMENT KEYS THAT WILL GET SENT TO BOTH WOW'S.
	// ADD MORE KEYS IF YOU WANT.
	//-----------------------------------------------------------
	<MovementHotkey ScrollLockOn up, down, left, right,e,q>}
	puts $hK $winlabels
	puts $hK { <Key %Trigger%>}
	puts $hK ""
	puts $hK {//-----------------------------------------------------------
	// BROADCAST MOUSE CLICKS. HOLD DOWN oem3 (ON U.S. KEYBOARDS,
	// THAT'S THE SQUIGGLE KEY IN UPPPER LEFT CORNER) WHEN YOU
	// WANT TO BROADCAST. oem5 on euro kbs.
	//-----------------------------------------------------------}
	puts $hK "<UseKeyAsModifier $oem>"
	puts $hK ""
	puts $hK "<Hotkey ScrollLockOn $oem LButton, RButton, Button4, Button5>"
	puts $hK $winlabels
	puts $hK {      <ClickMouse %TriggerMainKey%>}
	puts ""
	puts $hK {<Hotkey ScrollLockOn Alt 1>
	<SendFocusWin> 
	  <Key f10>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 1> 
	<Hotkey ScrollLockOn Alt 2>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 2> 
	<Hotkey ScrollLockOn Alt 3>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 3> 
	<Hotkey ScrollLockOn Alt 4>
	<SendFocusWin> 
	  <Key f10>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 4>
	<Hotkey ScrollLockOn Alt 5>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 5> 
	<Hotkey ScrollLockOn Alt 6>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 6> 
	<Hotkey ScrollLockOn Alt 7>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 7> 
	<Hotkey ScrollLockOn Alt 8>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 8> 
	<Hotkey ScrollLockOn Alt 9>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 9> 
	<Hotkey ScrollLockOn Alt 0>}
	puts $hK $winlabels
	puts $hK {  <Key Alt 0> 
	<Hotkey ScrollLockOn Alt Plus>}
	puts $hK $winlabels
	puts $hK {  <Key Alt Plus> 
	<Hotkey ScrollLockOn Alt Minus>}
	puts $hK $winlabels
	puts $hK {  <Key Alt Minus> 
	<Hotkey ScrollLockOn Ctrl 1>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 1>
	<Hotkey ScrollLockOn Ctrl 2> }
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 2> 
	<Hotkey ScrollLockOn Ctrl 3>
	<SendFocusWin> 
	  <Key Ctrl 3> 
	<Hotkey ScrollLockOn Ctrl 4>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 4> 
	<Hotkey ScrollLockOn Ctrl 5>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 5> 
	<Hotkey ScrollLockOn Ctrl 6>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 6> 
	<Hotkey ScrollLockOn Ctrl 7>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 7> 
	<Hotkey ScrollLockOn Ctrl 8>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 8> 
	<Hotkey ScrollLockOn Ctrl 9>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 9> 
	<Hotkey ScrollLockOn Ctrl 0>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl 0> 
	<Hotkey ScrollLockOn Ctrl Plus>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl Plus> 
	<Hotkey ScrollLockOn Ctrl Minus>}
	puts $hK $winlabels
	puts $hK {  <Key Ctrl Minus> 
	<Hotkey ScrollLockOn Shift 1>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 1>
	<Hotkey ScrollLockOn Shift 2>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 2> 
	<Hotkey ScrollLockOn Shift 3>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 3> 
	<Hotkey ScrollLockOn Shift 4>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 4> 
	<Hotkey ScrollLockOn Shift 5>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 5> 
	<Hotkey ScrollLockOn Shift 6>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 6> 
	<Hotkey ScrollLockOn Shift 7>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 7> 
	<Hotkey ScrollLockOn Shift 8>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 8> 
	<Hotkey ScrollLockOn Shift 9>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 9> 
	<Hotkey ScrollLockOn Shift 0>}
	puts $hK $winlabels
	puts $hK {  <Key Shift 0> 
	<Hotkey ScrollLockOn Shift Plus>}
	puts $hK $winlabels
	puts $hK {  <Key Shift Plus> 
	<Hotkey ScrollLockOn Shift Minus>}
	puts $hK $winlabels
	puts $hK {  <Key Shift Minus> 
	<Hotkey ScrollLockOn Shift F1>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F1>
	<Hotkey ScrollLockOn Shift F2>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F2> 
	<Hotkey ScrollLockOn Shift F3>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F3> 
	<Hotkey ScrollLockOn Shift F4>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F4> 
	<Hotkey ScrollLockOn Shift F5>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F5> 
	<Hotkey ScrollLockOn Shift F6>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F6> 
	<Hotkey ScrollLockOn Shift F7>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F7> 
	<Hotkey ScrollLockOn Shift F8>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F8> 
	<Hotkey ScrollLockOn Shift F9>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F9> 
	<Hotkey ScrollLockOn Shift F10>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F10> 
	<Hotkey ScrollLockOn Shift F11>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F11> 
	<Hotkey ScrollLockOn Shift F12>}
	puts $hK $winlabels
	puts $hK {  <Key Shift F12> }
	puts $hK ""
	puts $hK {//Hunter backup}
	puts $hK {<MovementHotkey ScrollLockOn T>}
	set totallabels 0
	set hunterlabels "<Sendlabel"
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lindex $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum } 
		}
		foreach mycomp $comps {
	    if { $role=="hunter" } { 
	      if { $hunterlabels=="<Sendlabel" } { set hunterlabels  "$hunterlabels w${totallabels}" } else { set hunterlabels "$hunterlabels,w${totallabels}" } 
			}
		  incr totallabels		
	  }
	}
	set hunterlabels "${hunterlabels}>"
	puts $hK $hunterlabels
	puts $hK "  <Key Down>"
	puts $hK ""
	puts $hK {//Melee backup}
	puts $hK {<MovementHotkey ScrollLockOn R>}
	set totallabels 0
	set meleelabels "<Sendlabel"
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lindex $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum } 
		}
		foreach mycomp $comps {
	  	if { $role=="melee" || $role=="tank" } { 
	   	 if { $meleelabels=="<Sendlabel" } { set meleelabels  "$meleelabels w${totallabels}" } else { set meleelabels "$meleelabels,w${totallabels}" } 
	  	}
			incr totallabels
		}
	}
	set meleelabels "${meleelabels}>"
	puts $hK $meleelabels
	puts $hK "  <Key Down>"
	puts $hK ""
	puts $hK {//Melee forward}
	puts $hK {<MovementHotkey ScrollLockOn F>}
	set totallabels 0
	set meleelabels "<Sendlabel"
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lindex $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum } 
		}
		foreach mycomp $comps {
	  	if { $role=="melee" } { 
	    	if { $meleelabels=="<Sendlabel" } { set meleelabels  "$meleelabels w${totallabels}" } else { set meleelabels "$meleelabels,w${totallabels}" } 
	  	}
			incr totallabels
		}
	}
	set meleelabels "${meleelabels}>"
	puts $hK $meleelabels
	puts $hK "  <Key Up>"
	puts $hK ""
	puts $hK {//Healer backup}
	puts $hK {<MovementHotkey ScrollLockOn Y>}
	set totallabels 0
	set healerlabels "<Sendlabel"
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lindex $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum } 
		}
		foreach mycomp $comps {
	  	if { $role=="healer" } { 
	   	 if { $healerlabels=="<Sendlabel" } { set healerlabels  "$healerlabels w${totallabels}" } else { set healerlabels "$healerlabels,w${totallabels}" } 
	  	}
			incr totallabels
		}
	}
	set healerlabels "${healerlabels}>"
	puts $hK $healerlabels
	puts $hK "  <Key Down>"
	puts $hK ""
	puts $hK {//Mana backup}
	puts $hK {<MovementHotkey ScrollLockOn H>}
	set totallabels 0
	set manalabels "<Sendlabel"
	for { set i 0 } { $i<[array size toons] } { incr i } {
	  set role [lindex $toons($i) 3]
	  set role [string tolower $role ]
	  set raids [lindex $toons($i) 4 end]
		set comps 1
		foreach myraid $raids {
			  regexp {([a-z]|[A-Z])([0-9])?} $myraid match foo cpunum
			  if { [lsearch $comps $cpunum] == -1 } { lappend comps $cpunum } 
		}
		foreach mycomp $comps {
	  	if { $role=="healer" || $role=="caster" } { 
	    	if { $manalabels=="<Sendlabel" } { set manalabels  "$manalabels w${totallabels}" } else { set manalabels "$manalabels,w${totallabels}" } 
	  	}
			incr totallabels
		}
	}
	set manalabels "${manalabels}>"
	puts $hK $manalabels
	puts $hK "  <Key Down>"
	close $hK
}
if { ! $nosmoverwrite } { 
	set INSTUFF2TRACK false
	set INAUTODELETE false
	set INTHELIST false
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
		} elseif { [regexp "^MB_bomfollow" $line ] && $bombfollow!="" } {
	    set bombfollow [string totitle [ string tolower $bombfollow]]
	    puts $sMN "MB_bombfollow=\"$bombfollow\""
		} elseif { [regexp "^MB_gazefollow" $line ] && $gazefollow!="" } {
	    set gazefollow [string totitle [ string tolower $gazefollow]]
	    puts $sMN "MB_gazefollow=\"$gazefollow\""
	  } elseif { [regexp "^MB_dedicated_healers" $line ] && $dedicated_healers!="" } {
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
		} elseif { [regexp "^MB_autotrade=" $line ] && $dontautotrade == "true" } {
	    puts $sMN "MB_autotrade=false"
		} elseif { [regexp "^MB_autotrade=" $line ] && $dontautotrade == "" } {
	    puts $sMN "MB_autotrade=true"
		} elseif { [regexp "^MB_autodelete" $line ] && $dontautodelete == "true" } {
	    puts $sMN "MB_autodelete=false"
		} elseif { [regexp "^MB_autodelete" $line ] && $dontautodelete == "" } {
	    puts $sMN "MB_autodelete=true"
		} elseif { [regexp "^MB_buystacks" $line ] && $dontbuystacks == "true" } {
	    puts $sMN "MB_buystacks=false"
		} elseif { [regexp "^MB_buystacks" $line ] && $dontbuystacks == "" } {
	    puts $sMN "MB_buystacks=true"
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
	["Instant Poison VI"] = {itemkind = "item" , class = {Rogue = {AnnounceValue = 5}}},
 	["Wound Poison IV"] = {itemkind = "item" , class = {Rogue = {AnnounceValue = 5}}},
 	["Mind Numbing Poison"] = {itemkind = "item" , class = {Rogue = {AnnounceValue = 5}}},
 	["Major Healing Potion"] = {itemkind = "item", class = {Druid = {},Rogue = {},Warrior = {},Hunter = {},Warlock = {},Mage = {}, Priest = {}, Shaman = {}, Paladin = {}}},
	["Major Mana Potion"] = {itemkind = "item" , class = {Druid = {}, Priest = {}, Shaman = {}, Paladin = {}}},
	["Major Healthstone"] = {itemkind = "item", class = {Druid = {TradeIfLessThan = 1},Rogue = {TradeIfLessThan = 1},Warrior = {TradeIfLessThan = 1},Hunter = {TradeIfLessThan = 1},Mage = {TradeIfLessThan = 1}, Priest = {TradeIfLessThan = 1}, Shaman = {TradeIfLessThan = 1}, Paladin = {TradeIfLessThan = 1}}},
	["Conjured Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},
	["Conjured Fresh Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},
	["Conjured Purified Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},
	["Conjured Spring Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},
	["Conjured Mineral Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},
	["Conjured Crystal Water"] = {itemkind = "item" , class = {Mage={Ratio=2},Hunter = {Ratio=1}, Warlock = {Ratio=1},Druid = {Ratio=1}, Priest = {Ratio=1}, Shaman = {Ratio=1}, Paladin = {Ratio=1}}},}
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
	  } else {
	    puts $sMN $line
	  }
	}
	close $sMN
	close $sM
	file copy -force tmp $SME
	file delete tmp
}
