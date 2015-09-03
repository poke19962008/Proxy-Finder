# Proxy-Checker
Check for open proxy IP for SRM Hostel i.e. internet before 6.00!!!

##How To Use

For last 172.16.0.0 - 172.16.0.100

``
sh proxy.sh
``

###OR

For 172.16.0.X - 172.16.100.X  [X = 0 - 100]

``
sh proxyMT.sh
``

##proxyMT.sh
- Iterate over: 172.16.0.X - 172.16.100.X  [X = 0 - 100]
- 100 threads CURLing http://google.com 100 times in single thread
- Maximum run time: 1.68333min
- Default time out time: 1seconds

##proxy.sh
- Iterate over: 172.16.0.0 - 172.16.0.100
- Maximum run time: 1.68333min
- Default time out time: 1seconds

