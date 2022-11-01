import socket
from time import sleep
import DBaccess

def send():
    SERVER_HOST = "0.0.0.0"
    SERVER_PORT = 5001

    BUFFER_SIZE = 4096

    s = socket.socket()

    s.bind((SERVER_HOST, SERVER_PORT))

    x = DBaccess.connection('root','hmm')
    j = x.getImg()
    t =j
    s.listen(5)
    print(f"[*] Listening as {SERVER_HOST}:{SERVER_PORT}")

    client_socket, address = s.accept() 

    j = j.to_bytes(2,'big')
    client_socket.send(j)

    sleep(0.1)

    print(f"[+] {address} is connected.")

    filename = "Paint\emp\imageToSave{}.png"


    for i in range(1,t): 
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