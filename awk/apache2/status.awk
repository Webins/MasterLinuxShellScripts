{ record[$9] ++}
END {
for(r in record)
print "Code " r, "has ocurred", record[r], " times."
}
