from pymongo import MongoClient
client=MongoClient('localhost',27017)

#Here, databases and collections are created only after document is inserted successfully
#connects to database(doesnt create it)
db=client['practical']
#connect to collection
test1=db['test1']
#creating document.....creates db and collection
info={"name":"sanika chalke",
      "age":"20"}
#to insert document in collection
#test1.insert_one(info)

#OR insert and return a inserted_id
info_id=test1.insert_one(info).inserted_id
print(info_id)

