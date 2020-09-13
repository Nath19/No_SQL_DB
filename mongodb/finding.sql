
// Find all students
db.students.find( {} )

// Find the first 3 students
db.stuents.find( {} ).limit(3)

// Find all students and sort by name in ascending order
db.students.find( {} ).sort( {name: 1} )

// Find all students and sort by name in ascending order
db.students.find( {} ).sort( {gpa: -1, name: 1} )

// Find all biology majors
db.students.find( {major: "Biology"} )

// Find all students with a phone number 333-3333
db.students.find( {contact: {phone: "333-3333", email: "student@school.edu"} } )

// Find all biology majors named Jack
db.students.find( {name: "Jack", major: "Biology"} )

// Final all students who are chemistry majors or named Jack
db.students.find( { $or: [ {name: "Jack"}, {major: "Chemistry"} ] } )

// Final all students with a gpa above 3.5
db.students.find( {gpa: {$gt: 3.5} } )

// Find all students with a gpa less than or equal to 3.2
db.students.find( {gpa: {$lte: 3.2} } ).sort({gpa: -1})                  // $eq, $ne, $lt, $lte, $gt, $gte

// Find all students with names in the array
db.students.find( {name: {$in: ["Kate", "Claire"]} } )   // $in, $nin

// Find all students who have awards
db.students.find( {awards: {$exists: true} } )           // false

// Find all db entries where the name is a string
// Type list - https://docs.mongodb.com/manual/reference/bson-types/
db.students.find({name: {$type: 2} })

// Find all students whos first grade is a 90
db.students.find( {"grades.0": 90 } )

// Find all students who have a grade greater than 80
db.students.find( {grades: {$elemMatch: { $gte: 80} } } )

// Find all students who have 4 grades recorded
db.students.find( {grades: {$size: 4 } } )
