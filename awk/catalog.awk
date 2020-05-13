BEGIN {FS="[<>]"; RS="\n\n"; OFS=" ";}  #OFS=Output field separator, separate the output with the 				     		#specfic character
$0 ~ search {print $4 ": " $5, $8 ": " $9, $12 ": " $13}

