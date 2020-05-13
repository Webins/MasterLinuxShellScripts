function green(s){
	return "\033[1;32m" s "\033[0m";
}

BEGIN{
	printf "  %3s     %10s    %10s","Num", "Username", "Login date";
	print "\n=========================================";
}

!(/Nunca ha accedido/ || /^Nombre/ || /^root/ || /Never logged in/ || /^Username/){
	cnt++;	

	if(NF == 8){
		printf "%3d     %10s    %2s %3s %2s\n",cnt, $1, $5, $4, $8
	}else{
		printf "%3d     %10s    %2s %3s %2s\n",cnt, $1, $6, $5, $9
	}
}

END{
	print "=========================================";
	print green("  Total number of user processed: ") green(cnt);
	
}
