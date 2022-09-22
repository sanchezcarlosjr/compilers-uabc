BEGIN {	print "Roman numbers to arabig numbers."}
/^\s*$/ {print "Expression with whitespaces. Invalid roman number."; next;}
!/^M{0,3}(C[MD]|D?C{0,3})(X[CL]|L?X{0,3})(I[XV]|V?I{0,3})$/ {print "Bad expression. Invalid roman number."; next;}

match($0, /(M{0,3})((CD)|(CM)|(D?)(C{0,3}))((XC)|(XL)|(L?)(X{0,3}))((IX)|(IV)|(V?)(I{0,3}))/, array) {
	decimal = 1000*length(array[1])+\
		  200*length(array[3])+\
		  450*length(array[4])+\
		  500*length(array[5])+\
		  100*length(array[6])+\
		  45*length(array[8])+\
		  20*length(array[9])+\
		  50*length(array[10])+\
		  10*length(array[11])+\
		  4.5*length(array[13])+\
		  2*length(array[14])+\
		  5*length(array[15])+\
		  length(array[16]);
}

FNR==NR  {print "=" decimal;}

END {print "bye!"}
