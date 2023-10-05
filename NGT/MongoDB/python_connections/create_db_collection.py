from pymongo import MongoClient
client=MongoClient('localhost',27017)

#Here, databases and collections are created only after document is inserted successfully
#connects to database(doesnt create it)
db=client['practical']
#connect to collection
test1=db['test1']
#creating document.....creates db and collection
#info={"name":"sanika chalke", "age":"20"}
#info={"name":"anushka dalvi", "age":"20"}
#info={"name":"sakshi sataye", "age":"20"}
#info={"name":"aditi patil", "age":"20"}

#####INSERTING DOCUMENT######
#to insert document in collection
#test1.insert_one(info)

#OR insert and return a inserted_id
#info_id=test1.insert_one(info).inserted_id
#print(info_id)

######UPDATING DOCUMENT########
info_update={"name":"sanika chalke"}
new_val={"$set":{"name":"kale"}}
test1.update_one(info_update,new_val)

#####ADD FIELD########
add_field={"$set":{"college":"Vaze"}}
test1.update_one({ },add_field)

test1.update_many({ },add_field)

#####REMOVE FIELD######
info_update={"name":"kale"}
remove_field={"$unset":{"college":""}}
test1.update_one(info_update,remove_field)
#OR test1.update_one({"name":"kale"},{"$unset":{"college":""}})


######DELETING DOCUMENT########
#info_delete={"name":"sanika chalke"}
#test1.delete_one(info_delete)

#####INSERT_MANY######
documents=[{"name":"Aaditya","age":"20"},
           {"name":"Steven","age":"20"},
           {"name":"Hrushikesh","age":"20"}]
test1.insert_many(documents)

#####PRINT DOCUMENTS##########

print(test1.find_one({"name": {"$regex": "^S"}}))

'''import pprint
for doc in test1.find():
    pprint.pprint(doc)
    #print(doc)'''







