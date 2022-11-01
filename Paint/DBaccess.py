import mysql.connector
import numpy as np
from PIL import Image
from imgarray import save_array_img, load_array_img
from os import fsync
from datetime import date
import base64

class connection:
    def __init__(self, uname, pwd):
        self.conn = mysql.connector.connect(
        host="localhost",
        user=uname,
        password=pwd,
        database = "paint",
        auth_plugin='mysql_native_password'
        )
        self.cursor = self.conn.cursor()

    def convertBinary(self, filename):
        with open(filename, 'rb') as file:
            binaryData = file.read()
        return binaryData

    def sync(self,fh):
        fh.flush()
        fsync(fh.fileno())
        return True

    def save_array_to_PNG(self,numpy_array, save_path):
        with open(save_path, 'wb+') as fh:
            save_array_img(numpy_array, save_path, img_format='png')
            self.sync(fh)

    def getImgId(self):
        sql = "SELECT MAX(imgid) FROM images"
        self.cursor.execute(sql)
        result = self.cursor.fetchall()
        return result[0][0]

    def storeImage(self, author, res, prompt):
        def preProcess(img):
            im = np.array(Image.open(img))
            im = np.dot(im[...,:3], [0.299, 0.587, 0.144])
            im_trim = im[50:750, 50:750]
            img = Image.fromarray(im_trim)
            load_img_rz = np.array(img.resize((28,28)))
            load_img_rz.reshape(28,28,1)
            Image.fromarray(load_img_rz)
            return load_img_rz
        img = preProcess("image.png")
        self.save_array_to_PNG(img, "image2.png")
        sql_table = 'images'
        image_column_name = 'your_blob_column_name'
        file = self.convertBinary("image2.png")
        if(self.getImgId() == None):
            imgid = 0
        else:
            imgid = self.getImgId() + 1
        today = date.today()
        tdate = str(today.strftime("%Y-%m-%d"))

        try:
            sql_insert_blob_query = """ INSERT INTO images (imgid, date, author, image, result, label) VALUES (%s,%s,%s,%s,%s,%s)"""
            insert_blob_tuple = (imgid, tdate, author, file, res, prompt)
            result = self.cursor.execute(sql_insert_blob_query, insert_blob_tuple)
            self.conn.commit()

        except mysql.connector.Error as error:
            print("Failed inserting BLOB data into MySQL table {}".format(error))


    def getHistory(self, user):
        sql = "SELECT result FROM images WHERE author = %s"
        self.cursor.execute(sql, (user,))
        result = self.cursor.fetchall()
        passc = 0
        failc = 0
        for i in result:
            if(i[0] == "pass"):
                passc+=1
            else:
                failc+=1
        return [passc, failc]

    def close(self):
        self.conn.close()

    def getImg(self):
        i = 1
        sql = "SELECT image FROM images"
        self.cursor.execute(sql)
        result = self.cursor.fetchall()
        for row in result:
            with open("imageToSave{}.png".format(i), "wb") as fh:
                fh.write(row[0])
            i += 1
        return i

