set x-auth-key=
set x-auth-email=
set zone=

curl -X GET https://api.cloudflare.com/client/v4/zones/%zone%/dns_records/  -H "cache-control: no-cache"  -H "content-type: application/json"  -H "x-auth-email: %x-auth-email%"  -H "x-auth-key: %x-auth-key%"
