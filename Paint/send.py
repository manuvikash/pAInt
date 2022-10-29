
import socket
from time import sleep

def send(host,port):
    BUFFER_SIZE = 4096 
    
    filename = "imageToSave{}.png"
    s = socket.socket()

    print(f"[+] Connecting to {host}:{port}")
    s.connect((host, port))
    print("[+] Connected.")

    for i in range(0,4): #hardcoded for only 4 images rn
        with open(filename.format(i), "rb") as f:
            while True:
                bytes_read = f.read(BUFFER_SIZE)
                if not bytes_read:
                    break
                s.sendall(bytes_read)
                sleep(0.1)
    s.close()

send("0.tcp.in.ngrok.io", 19136) #port will change