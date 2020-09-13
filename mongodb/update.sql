
// same filters as inserting
db.stuents.updateOne(<filter>, <update>, <options>)

// Do this twice so we can change it back with updateMany
db.students.updateOne(
     {major: "Biology"},
     {
       $set:
          {major: "Bio"}
     }
)

db.students.updateMany(
     {major: "Bio"},
     {
       $set:
          {major: "Biology"}
     }
)

// replaceMany()
db.students.replaceOne(
     {major: "Bio"},
     {name: "new name", major: "new major", gpa: 4.0}
)

// Delete all documents
db.students.deleteMany({})

db.students.deleteOne({major: "Biology"})

db.students.deleteMany({gpa: {$gte: 3.5}})
