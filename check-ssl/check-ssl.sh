(( ( `IFS=' '; read -r -a a <<< $(curl -v https://SSL_HOST:443 2>&1 | grep "expire date"); date -d "${a[3]} ${a[4]} ${a[6]} ${a[5]}" +"%s"` - `date  +"%s"` ) / 86400 < 7 )) && echo "" | mailx -s "cert warning `hostname`" ADMIN_EMAIL