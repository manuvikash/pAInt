import socket

SERVER_HOST = "0.0.0.0"
SERVER_PORT = 5001

BUFFER_SIZE = 4096
SEPARATOR = "<SEPARATOR>"

s = socket.socket()

s.bind((SERVER_HOST, SERVER_PORT))

s.listen(5)
print(f"[*] Listening as {SERVER_HOST}:{SERVER_PORT}")

client_socket, address = s.accept() 

print(f"[+] {address} is connected.")

filename = "image{}.png"


for i in range(0,4):
    with open(filename.format(i), "wb") as f:

        bytes_read = client_socket.recv(BUFFER_SIZE)
        f.write(bytes_read)

        
client_socket.close()
s.close()