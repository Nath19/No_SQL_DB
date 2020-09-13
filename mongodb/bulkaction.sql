
db.students.bulkWrite(
      [
         { insertOne :
            {
               "document" :
               {
                  name: "Philipe", major: "Architecture", gpa: 3.2
               }
            }
         },
         { insertOne :
            {
               "document" :
               {
                  name: "Terry", major: "Math", gpa: 3.8
               }
            }
         },
         { updateOne :
            {
               filter : { name : "Terry" },
               update : { $set : { gpa : 4.0 } }
            }
         },
         { deleteOne :
            { filter : { name : "Kate"} }
         },
         { replaceOne :
            {
               filter : { name : "Claire" },
               replacement : { name: "Genny", major: "Counsling", gpa: 2.4 }
            }
         }
    ],
    {ordered: false}
   );
