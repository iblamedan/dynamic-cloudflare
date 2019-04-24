# Dynamic Cloudflare
Using Windows Command line to update dynamic dns via a batch file for Windows Scheduler

Created by [danjrose.uk](https://danjrose.uk/)

## Step 1 - Find Zone ID
open findzone.bat
fill in lines 1 and 2 with your login email and API key from Cloudflare

open command and run findzone

Select zoneID linked to the domain/subdomain from the json response. This can be complicated as it doesn't provide a formatted response.

Example - you will get one for each subdomain in the zone, you need to select the correct subdomain within the {}

{"id":"4f1d33bf1cdafsodfys8df79sdifjon2fa","type":"A","name":"**subdomain.domain**","content":"88.88.88.88","proxiable":true,"proxied":true,"ttl":1,"locked":false,**"zone_id":"2568example474972ffa"**,"zone_name":"domain","modified_on":"2019-04-24T19:44:27.180868Z","created_on":"2019-04-24T19:44:27.180868Z","meta":{"auto_added":false,"managed_by_apps":false,"managed_by_argo_tunnel":false}}

Copy the zone_id into the next step.

## Step 2
Edit updatedns.bat
fill in line 1-3 with your login email, API key from Cloudflare and the Zone ID from the previous step

set x-auth-key=example6784authkey
set x-auth-email=test@gmail.com
set zone=2568example474972ffa

Then setup a windows schedule to run updatedns.bat on the timeframe needed
