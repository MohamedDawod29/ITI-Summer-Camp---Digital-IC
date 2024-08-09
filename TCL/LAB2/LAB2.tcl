puts {###########################Q1#########################}
set name_1 "Samy"
set name_2 "Sayed"

puts {First method}
puts [string match $name_1 $name_2]
puts {Second method}
puts [string compare $name_1 $name_2]
puts {Third method}
set c [regexp {($name_1)} $name_2] 
puts $c


puts {###########################Q2#########################}

set str "DIC Intake 43"

puts [string index $str 1]

set str1 [list DIC Intake 43]

puts [lindex $str1 1]


puts {###########################Q3#########################}

set str "DIC Intake 43"

set x [string range $str 0 1] 
puts [string length $x]

set str1 [list DIC Intake 43]

set x [lrange $str 0 1] 
puts [llength $x]

puts {#############################Q4##########################}

set str "DIC Intake 43"
set i [string length $str]
set  Lis []
for {set a $i} {$a >= 0} {incr a -1} {
	 append Lis [string index $str $a]
	}
puts $Lis


puts {###########################Q5#########################}


proc replace {var i} {
	 set x [list 1 2 3 4 5]
	 set y [lreplace $x $i $i $var]
	 return $y
}

puts "modified list_after_replace  =  [replace 10 1]"

proc insert {var} {
	 set x [list 1 2 3 4 5]
	 set y [lappend x $var]
	 return $y
}


puts "modified list_after_insert  =  [insert 12]"

puts {###########################Q6#########################}

proc add {a b} {
set x [expr $a + $b]
return $x
}

puts "Addition result  =  [add 10 2]"

proc sub {a {b 10}} {
set x [expr $a - $b]
return $x
}

puts "Subtraction result  = [sub 2 5]"


proc mul {a b} {
set x [expr $a * $b]
return $x
}

puts "Multiplication result  = [mul 2 5]"

proc div {a b} {
set x [expr $a / $b]
return $x
}

puts "Division result  = [div 10 4]"


puts {###########################Q7#########################}

set my_list [list 0 0 1 1 2 2 3 3]
set R_list []

foreach {x y} $my_list {
	lappend R_list [list $x $y]
}
puts $R_list

foreach Element $R_list {
 puts "$Element"
 }
 
puts {###########################Q8#########################}


set file [open "E:/TCL/report.txt" r]
set data [read $file]

set lines [split $data \n]

set file2 [open "E:/TCL/reportOut.txt" w]

foreach line $lines {
    if {[regexp -nocase "slack" $line] || [regexp -nocase "setup" $line]} {\
        puts $file2 $line
    }
}
close $file2

puts {###########################Q9#########################}


set file [open "E:/TCL/Input_File.txt" r]
set data [read $file]

set lines [split $data \n]

set file2 [open "E:/TCL/Input_File_O.txt" w]

foreach line $lines {
    if {[regexp -nocase "slack" $line] || [regexp -nocase "setup" $line]} {\
        puts $file2 $line
    }
}
close $file2

