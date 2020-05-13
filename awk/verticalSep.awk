# THE RS VARIABLE SET THE DEFAULT VERTICAL SEP OF EACH LINE

BEGIN {RS = "\n\n";}
$0 ~ search {print} #the record ( $0 ) matches ( ~ ) the search variable.
		    #search is an argument of the command line we pass to awk

