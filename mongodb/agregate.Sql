varSort = { $sort : {name:1} };
varSort1 = { $sort : {gpa:-1} };
db.students.aggregate([varSort1,varSort]);


