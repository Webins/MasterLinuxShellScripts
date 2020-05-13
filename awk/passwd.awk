function green(s){
	return "\033[1;32m" s "\033[0m\n"
}

BEGIN { FS=":"; green("   NAME:  UID:        SHELL:")}
{ printf "%10s %4d %17s\n", $1, $3, $7}

END {print "TOTAL LINES: " NR}
