import socket


def rec(host,port):
    BUFFER_SIZE = 4096 
    
    filename = "imageToSave{}.png"
    s = socket.socket()

    print(f"[+] Connecting to {host}:{port}")
    s.connect((host, port))
    print("[+] Connected.")

    x = s.recv(BUFFER_SIZE)
    x = int.from_bytes(x,'big')

    for i in range(0,x):
        with open(filename.format(i), "wb") as f:

            bytes_read = s.recv(BUFFER_SIZE)
            f.write(bytes_read)
    s.close()


# rec('0.tcp.in.ngrok.io',15488)