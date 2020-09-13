
// if you insert into a non-existant collection it will be created automatically
db.createCollection("students")

// https://docs.mongodb.com/manual/reference/method/db.createCollection/index.html
db.createCollection("students", {options})

db.dropCollection("students")

show collections
