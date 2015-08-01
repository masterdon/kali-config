import socket
socket.setdefaulttimeout(2)
s = socket.socket()
s.connect(("192.168.1.2",80))
ans = s.recv(1024)
print(ans)
s.close()
