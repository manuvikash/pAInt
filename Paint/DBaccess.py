import mysql.connector
import numpy as np
from PIL import Image
from imgarray import save_array_img, load_array_img
from os import fsync
import preProcessor


class connection:
    def __init__(self, uname, pwd):
        self.conn = mysql.connector.connect(
        host="localhost",
        user=uname,
        password=pwd,
        database = "paint"
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


    def storeImage(self, filename, imgid, date, author):
        pp = preProcessor.PreProcessor()
        img = pp.dta(filename)
        self.save_array_to_PNG(img, "image2.png")
        sql_table = 'images'
        image_column_name = 'your_blob_column_name'
        file = self.convertBinary("image2.png")
        

        try:
            sql_insert_blob_query = """ INSERT INTO images (imgid, date, author, image) VALUES (%s,%s,%s,%s)"""
            insert_blob_tuple = (imgid, date, author, file)
            result = self.cursor.execute(sql_insert_blob_query, insert_blob_tuple)
            self.conn.commit()

        except mysql.connector.Error as error:
            print("Failed inserting BLOB data into MySQL table {}".format(error))

    def close(self):
        self.conn.close()


