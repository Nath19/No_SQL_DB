db.publis.findOne();

db.publis.find({});


//db.students.find( {name: "Jack", major: "Biology"} )

//2.1.1 All the book titles (type ’Book’),
db.publis.find({type:"Book"},{title : 1});

//2.1.2 All the publications since 2011
db.publis.find({year : {$gt :2011 }})

//2.1.3 All the publications since 2014
db.publis.find({year: {$gt :2014 }} , {type : "Book"})

//2.1.4 Titles of publications with an existing publisher,

db.publis.find({"journal.editor" : {$exists :true }},{title : 1})

// 2.1.5 Titles of Jeffrey D. Ullman’s publications

db.publis.find({"authors":"Jeffrey D. Ullman"});

//2.1.6 Give those in which he is the first author,

db.publis.find({"authors.0":"Jeffrey D. Ullman"});

//2.1.7 And when he is the only author,

db.publis.find({"authors":["Jeffrey D. Ullman"]});

//2.1.8 List of all publications which title contains the word “database”
 db.publis.find( {title : {$regex : ".*database.*"}} );

// 2Distinct queries
//2.2.1 List of distinct publishers
 
 db.publis.distinct("journal.editor");
//2.2.2 List of distinct authors,
 
 db.publis.distinct("authors");
 
 
 //2.3 Aggregates
 
// 2.3.1 Complex queries
 //2.3.1 All Jeffrey D. Ullman’s publications, projected the title and sorted by the starting page,

  
 db.publis.aggregate([{$match : {"authors":"Jeffrey D. Ullman"}},
                                        {$project: {"title":1,"pages.start":1}},
                                        {$sort :{ "pages.start" : 1}} ]);
 
 //2.3.2 Count how much publications he published per year
                                        
                                        
 db.publis.aggregate([{$match : {"authors":"Jeffrey D. Ullman"}} , {$project 
 

 db.getCollection('publis').aggregate([{$unwind :"$authors"},
                                        {$group : {"_id" : "$authors","Number of publications":{$sum : 1}}},
                                        {$sort : {"Number of publications":1}}]);
 
 
















