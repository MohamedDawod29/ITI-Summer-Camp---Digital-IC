puts {###############################################Q1##########################################}

set a 10
set b 5

set c [expr $a + $b]
puts {ADDITION}
puts "c = $c" 


set d [expr $a - $b]
puts {SUBTRACTION}
puts "d = $d" 

set e [expr $a * $b]
puts {MUL}
puts "e = $e"  

set f [expr $a ** $b]
puts {POWER}
puts "f = $f"

set g [expr $a / $b]
puts {DIVISION}
puts "g = $g"  

set k [expr $a % $b]
puts {REMINDER}
puts "k = $k"  

set l [expr $a >> $b]
puts {SHIFT_RIGHT}
puts "l = $l" 

set m [expr $a << $b]
puts {SHIFT_LEFT}
puts "m = $m" 






puts {###############################################Q2##########################################}

set a [expr {rand()}]
set b [expr {rand()}]

puts $a
puts $b

if {$a > $b} {
puts "a is greater than b"} elseif {$a == $b} {
puts "a is equal to b"} else {
puts "b is greater than a"}

puts {###############################################Q3 WITH IF##########################################}

set var ABCDF

for {set x 0} {$x <= 4} {incr x} {
  if {[string index $var $x] == "A"} {
    puts "Excellent"
  } elseif {[string index $var $x] == "B"} {
    puts "Very Good"
  } elseif {[string index $var $x] == "C"} {
    puts "Good"
  } elseif {[string index $var $x] == "D"} {
    puts "Up Normal"
  } elseif {[string index $var $x] == "E"} {
    puts "Normal"
  } else {
    puts "Bad"
  }
}

puts {###############################################Q3 WITH CASE##########################################}

for {set x 0} {$x <= 4} {incr x} {
  switch [string index $var $x] {
    "A" {puts "Excellent"}
    "B" {puts "Very Good"}
    "C" {puts "Good"}
    "D" {puts "Up Normal"}
    "E" {puts "Normal"}
    default {puts "Bad"}
  }
}

puts {###############################################Q4##########################################}

set numbers [list 16 25 36 49]
set str1 "square_root"
set str2 "square"
set str3 "cubic"

for {set i 0} {$i <= 3} {incr i} {
    puts "$str1 = [expr {sqrt([lindex $numbers $i])}] \t $str2 = [expr {[lindex $numbers $i]**2}] \t $str3 = [expr {[lindex $numbers $i]**3}]"
}


puts {###############################################Q5##########################################}

set count 0
set num 1

while {$count < 10} {
    set mul [expr { $num * 7 }]
    if {$count != 3} {
        puts "Multiple = $mul"  
    }
	incr count
    incr num
}

puts {###############################################Q6##########################################}

set List {0 1 2 3 4 5 6 7 8 9 10}

foreach i $List {
    set x [expr $i ** 2]
    puts "square = $x"
}




# set x [list 1 2 3 4 5]
# lappend x 10
# puts $x
# set var 12
# puts [lreplace $x 0 $var]
