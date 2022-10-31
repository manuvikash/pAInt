import socket
from time import sleep

def send():
    SERVER_HOST = "0.0.0.0"
    SERVER_PORT = 5001

    BUFFER_SIZE = 4096

    s = socket.socket()

    s.bind((SERVER_HOST, SERVER_PORT))

    s.listen(5)
    print(f"[*] Listening as {SERVER_HOST}:{SERVER_PORT}")

    client_socket, address = s.accept() 

    print(f"[+] {address} is connected.")

    filename = "imageToSave{}.png"

    for i in range(0,4): #hardcoded for only 4 images rn
        with open(filename.format(i), "rb") as f:
            while True:
                bytes_read = f.read(BUFFER_SIZE)
                if not bytes_read:
                    break
                client_socket.send(bytes_read)
                sleep(0.1)
        
    client_socket.close()
    s.close()

while True:
    send()