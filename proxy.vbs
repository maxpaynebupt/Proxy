Set ws = CreateObject("Wscript.Shell")

ws.run "taskkill /F /IM autossh.exe",vbhide,true


ws.run "taskkill /F /IM ssh.exe ",vbhide,true


ws.run "taskkill /F /IM haproxy.exe",vbhide,true


ws.run "autossh -M 1090 -4 -N root@167.88.114.169  -p 443 -D 127.0.0.1:1081 -o StrictHostKeyChecking=no -i MyKey.pem ",vbhide 
Wscript.Sleep 100
ws.run "autossh -M 1091 -4 -N root@107.150.10.106  -p 443 -D 127.0.0.1:1082 -o StrictHostKeyChecking=no -i MyKey.pem ",vbhide 
Wscript.Sleep 100
ws.run "autossh -M 1092 -4 -N root@107.189.153.36  -p 443 -D 127.0.0.1:1083 -o StrictHostKeyChecking=no -i MyKey.pem ",vbhide 
Wscript.Sleep 100
ws.run "autossh -M 1093 -4 -N ubuntu@52.68.245.171    -p 443 -D 127.0.0.1:1084 -o StrictHostKeyChecking=no -i EC2-JP.pem ",vbhide 
Wscript.Sleep 100
ws.run "haproxy -f haproxy.cfg",vbhide 
