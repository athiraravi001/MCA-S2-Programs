# ------------ Write a Python program to create a collection and insert a student’s details ------------ 

from pymongo import MongoClient
myclient = MongoClient("mongodb://localhost:27017/")
db = myclient["Studentdata"]
mycollection = db["student"]
record = {"_id": 1, "name": "Ram", "roll_no": "1011", "branch": "MCA"}
mycollection.insert_one(record)
x = mycollection.find_one()
print(x)

# ------------ Write a Python program to create a collection and insert multiple student’s details ------------ 

from pymongo import MongoClient
myclient = MongoClient("mongodb://localhost:27017/")
db = myclient["Studentdata"]
mycollection = db["student"]
record = [
          {"_id": 1, "name": "Lee", "roll_no": "1012", "branch": "MBA"},
          {"_id": 2, "name": "Tom", "roll_no": "1013", "branch": "BBA"},
          {"_id": 3, "name": "John", "roll_no": "1014", "branch": "MCA"}
         ]
mycollection.insert_many(record)
for x in mycollection.find():
    print(x)