set SME "Interface\\Addons\\SuperMacro\\SM_Extend.lua"
#set SME SM_Extend.lua
set fail false
if { ! [file exist $SME ] } {
	puts "ERROR: $SME not found"
}
if { ! [file exist "wow.exe" ] && ! [file exist "Wow.exe"] } {
	puts "ERROR: THIS PROGRAM MUST BE THE DIRECTORY WHERE YOUR WOW.EXE resides"
        set fail true
}
if { $fail } { exit }
set sM [open $SME r]
while { [gets $sM line] >= 0 } {
  if { [regexp "^MB_tanklist" $line ] } {
    set line [regsub -all " " $line "" ]
    regexp  ".*=\{(.*)\}" $line match trimmed
    set tanks [split $trimmed ","]
    foreach tank $tanks {
	    set tank [string trim $tank "\""]
	    set toon($tank) tank
    }
  } elseif { [regexp "^MB_healer_list" $line ] } {
    set line [regsub -all " " $line "" ]
    regexp  ".*=\{(.*)\}" $line match trimmed
    set healers [split $trimmed ","]
    foreach healer $healers {
	    set healer [string trim $healer "\""]
	    set toon($healer) healer
    }
  } elseif { [regexp "^MB_toonlist" $line ] } {
	  set line [regsub -all " " $line "" ]
	  puts $line
    	regexp  ".*=\{(.*)\}" $line match trimmed
    	set toonlist [split $trimmed ","]
    	foreach mytoon $toonlist {
	        set mytoon [string trim $mytoon "\""]
	    	if { ! [regexp $mytoon [array names toon]] } {
		    	set toon($mytoon) unknown
	    	}
    	}
  }
}
foreach mytoon [array names toon] {
	puts $mytoon
	set toonlist "$toonlist $mytoon"
}
set match ""
array unset server
foreach line [glob WTF/Account/*/*/*] {
		  set mylist [split $line "/"]
		  set myserver [lindex $mylist 3]
		  set account [lindex $mylist 2]
		  set toonname [lindex $mylist 4]
		  if { [lsearch $toonlist $toonname] >=0 } {
			  #puts "$myserver $toonname $account "
			  if { [array get server $myserver] == "" } {
		    set server($myserver) "$toonname $account"
	    } else {
		    set server($myserver) "$server($myserver) $toonname $account"
	    }
	          }
}
foreach myserver [array names server] {
  set EXT mytoons_${myserver}.txt
  set sT [open $EXT w+]
  foreach { mytoon account } $server($myserver) {
	  #puts "$myserver $mytoon $account $toon($name)"
	  puts $sT "box $account password $mytoon $toon($mytoon)"
 }
 close $sT 
}
close $sM
