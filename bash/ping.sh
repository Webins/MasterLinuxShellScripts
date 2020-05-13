#/bin/bash
read -p "Select the server" srv_adr
ping -c3 $srv_adr 2>&1> /dev/null ||
          echo "Server is not responding"
