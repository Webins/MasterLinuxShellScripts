{ browser[$12]++ }
END {
for(b in browser)
	print b, " Has accessed ", browser[b], " times."
}
