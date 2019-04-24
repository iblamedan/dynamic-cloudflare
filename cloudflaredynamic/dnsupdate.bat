set x-auth-key=
set x-auth-email=
set zone=
set domainid=

cd C:\Users\Documents/cloudflare

curl "http://myexternalip.com/raw" -o ip.txt
type dnscontent1.txt ip.txt dnscontent2.txt > dns.txt


curl -X PUT https://api.cloudflare.com/client/v4/zones/%zone%/dns_records/%domainid%  -H "cache-control: no-cache"  -H "content-type: application/json"  -H "x-auth-email: %x-auth-email%"  -H "x-auth-key: %x-auth-key%"  -d @dns.txt

exit