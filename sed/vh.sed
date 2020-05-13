/^#<VirtualHost/,/^#<\/VirtualHost/{
s/^#//
w apache2.template
}
