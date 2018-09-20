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
	set fail true
}
if { ! [file exist "wow.exe" ] && ! [file exist "Wow.exe"] } {
	puts "ERROR: THIS PROGRAM MUST BE THE DIRECTORY WHERE YOUR WOW.EXE resides"
        set fail true
}
#if { ! [file exist $SME ] } {
	#puts "ERROR: Could not find $SME"
        #puts "Did you install the addons package from 5-minutemultiboxing.com?"
        #set fail true
#}
if { $fail } { exit }
set tL [open toonlist.txt r]
if { [set tL [open toonlist.txt r]] != "" } {
  puts "Found toonlist.txt"
} else {
  puts "ERROR: Could not open toonlist.txt in read mode."
}
if { [file exist $HKN] } {
  puts "THIS WILL OVERWRITE $HKN"
  puts "You should back this file up first."
  puts "ARE YOU SURE YOU WANT TO OVERWRITE $HKN? y/n"
  gets stdin char
  if { $char!="Y" && $char!="y" } {
    puts "File unchanged."
    exit
  }
}
if { [file exist $SME] } {
  puts "THIS WILL OVERWRITE $SME"
  puts "You should back this file up first."
  puts "ARE YOU SURE YOU WANT TO OVERWRITE $SME? y/n"
  gets stdin char
  if { $char!="Y" && $char!="y" } {
    puts "File unchanged."
    exit
  }
}
puts "ARE YOU USING A GERMAN OR SIMILAR CONTINENTAL EUROPEAN KEYBOARD? y/n"
gets stdin char
if { $char=="Y" || $char=="y" } {
  set oem oem5
} else {
  puts "ARE YOU USING A British KEYBOARD? y/n"
  gets stdin char
  if { $char=="Y" || $char=="y" } {
    set oem oem8
  } else {
    set oem oem3
  }
}
set numtoons 0
while { [gets $tL line] >= 0 } {
  set line [string trim $line] 
  if { [string index $line 0] != "#" } {
    if { [string tolower [lindex $line 0]] != "box" } {
      puts "ERROR: Unknown synatax in toonlist.txt: $line"
      exit
    } elseif { [llength $line] != 5 } {
      puts "ERROR: Wrong number of fields in toonlist.txt line: $line" 
      exit
    } else {
      set account [lindex $line 1] 
      set passwd [lindex $line 2] 
      set name [lindex $line 3] 
      set role [lindex $line 4] 
      set toons($numtoons) "$account $passwd $name $role"
      incr numtoons
    }
  }
}
if $numtoons==0 { 
  puts "ERROR: No box commands with toon names were found in toonlist.txt. "
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
  exit
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
for { set i 0 } { $i<[array size toons] } { incr i } {
  set toonname [string tolower [lindex $toons($i) 2]]
  set account [lindex $toons($i) 0]
  set length [string length $account]
  if { $length > 2 } {
    set length [string length $account]
    set acctnick "[string index $account 0][string index $account [expr $length-2]][string index $account [expr $length-1]]"
  } else {
    set acctnick $account
  }
  set acct_winname($account) ${toonname}_${acctnick}
  puts $hK "  <Label w${i} Local SendWinM ${toonname}_${acctnick}>"
}
puts $hK ""
  
# 20 Window Raid 
#1080p
set raidhash(20) "320 240 320 0 480 360 0 480 680 480 360 480 320 240 0 0 320 240 640 0 320 240 960 0 320 240 1280 0 320 240 1600 0 320 240 0 240 320 240 320 240 320 240 640 240 320 240 960 240 320 240 960 480 320 240 1600 240 320 240 1280 240 320 240 1280 480 320 240  1600 480 320 240 960 720 320 240 1280 720 320 240 1600 720"
#4k
set raidhash(20) "640 480 0 0 1280 960 720 960 960 720 0 960 640 480 640 0 640 480 1280 0 640 480 1920 0 640 480 2560 0 640 480 3200 0 640 480 0 480 640 480 640 480 640 480 1280 480 640 480 1920 480 640 480 2560 480 640 480 3200 480 640 480 1920 960 640 480 2560 960 640 480  3200 960 640 480 1920 1440 640 480 2560 1440 640 480 3200 1440"

puts $hK "<Hotkey ScrollLockOn Alt Ctrl M>"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set toonname [string tolower [lindex $toons($i) 2]]
  set account [lindex $toons($i) 0]
  set passwd [lindex $toons($i) 1]
  set winname $acct_winname($account)
  puts $hK "  <if WinDoesNotExist $winname>"
  puts $hK "  <LaunchAndRename Local $winname $account $passwd [lindex $raidhash(20) [expr $i*4+0]] [lindex $raidhash(20) [expr $i*4+1]] [lindex $raidhash(20) [expr $i*4+2]] [lindex $raidhash(20) [expr $i*4+3]]>"
}
puts $hK ""
puts $hK "<Hotkey ScrollLockOn Shift Ctrl M>"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set toonname [string tolower [lindex $toons($i) 2]]
  set account [lindex $toons($i) 0]
  set passwd [lindex $toons($i) 1]
  set winname $acct_winname($account)
  puts $hK "  <ResetWindowPosition Local $winname $account $passwd [lindex $raidhash(20) [expr $i*4+0]] [lindex $raidhash(20) [expr $i*4+1]] [lindex $raidhash(20) [expr $i*4+2]] [lindex $raidhash(20) [expr $i*4+3]]>"
}
set winlabels "  <SendLabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
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
set hunterlabels "<Sendlabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set role [lindex $toons($i) 3]
  set role [string tolower $role ]
  if { $role=="hunter" } { 
    if { $hunterlabels=="<Sendlabel" } { set hunterlabels  "$hunterlabels w${i}" } else { set hunterlabels "$hunterlabels,w${i}" } 
  }
}
set hunterlabels "${hunterlabels}>"
puts $hK $hunterlabels
puts $hK "  <Key Down>"
puts $hK ""
puts $hK {//Melee backup}
puts $hK {<MovementHotkey ScrollLockOn R>}
set meleelabels "<Sendlabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set role [lindex $toons($i) 3]
  set role [string tolower $role ]
  if { $role=="melee" || $role=="tank" } { 
    if { $meleelabels=="<Sendlabel" } { set meleelabels  "$meleelabels w${i}" } else { set meleelabels "$meleelabels,w${i}" } 
  }
}
set meleelabels "${meleelabels}>"
puts $hK $meleelabels
puts $hK "  <Key Up>"
puts $hK ""
puts $hK {//Melee forward}
puts $hK {<MovementHotkey ScrollLockOn F>}
set meleelabels "<Sendlabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set role [lindex $toons($i) 3]
  set role [string tolower $role ]
  if { $role=="melee" } { 
    if { $meleelabels=="<Sendlabel" } { set meleelabels  "$meleelabels w${i}" } else { set meleelabels "$meleelabels,w${i}" } 
  }
}
set meleelabels "${meleelabels}>"
puts $hK $meleelabels
puts $hK "  <Key Up>"
puts $hK ""
puts $hK {//Healer backup}
puts $hK {<MovementHotkey ScrollLockOn Y>}
set healerlabels "<Sendlabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set role [lindex $toons($i) 3]
  set role [string tolower $role ]
  if { $role=="healer" } { 
    if { $healerlabels=="<Sendlabel" } { set healerlabels  "$healerlabels w${i}" } else { set healerlabels "$healerlabels,w${i}" } 
  }
}
set healerlabels "${healerlabels}>"
puts $hK $healerlabels
puts $hK "  <Key Down>"
puts $hK ""
puts $hK {//Mana backup}
puts $hK {<MovementHotkey ScrollLockOn H>}
set manalabels "<Sendlabel"
for { set i 0 } { $i<[array size toons] } { incr i } {
  set role [lindex $toons($i) 3]
  set role [string tolower $role ]
  if { $role=="healer" || $role=="caster" } { 
    if { $manalabels=="<Sendlabel" } { set manalabels  "$manalabels w${i}" } else { set manalabels "$manalabels,w${i}" } 
  }
}
set manalabels "${manalabels}>"
puts $hK $manalabels
puts $hK "  <Key Down>"
close $hK
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
          puts -nonewline $sMN $name
          set first true
        } else {
          puts -nonewline $sMN ",$name"
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
          puts -nonewline $sMN $name
          set first true
        } else {
          puts -nonewline $sMN ",$name"
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
        puts -nonewline $sMN $name
        set first true
      } else {
        puts -nonewline $sMN ",$name"
      } 
    }
    puts $sMN "\}"
  } else {
    puts $sMN $line
  }
}
close $sMN
close $sM
file copy -force tmp $SME
file delete tmp
