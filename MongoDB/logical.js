// db.book.find({})
// db.book.find({$and: [
//     {"pages":{$lte: 505}} , {"author":{$eq: "Unknown"}} , {"year":1350}
// ]})
   
//   db.book.find({
//       $or: [{"pages" : {$lte: 505}} , {"author" : {$eq: "Unknown"}} , {"year" : 1350}]
//   })

//  db.book.find({
//       $nor: [{"pages" : {$lte: 505}} , {"author" : {$eq: "Unknown"}} , {"year" : 1350}]
//   })

// db.book.find({"pages":{$not: {$lte: 505}}})

// db.book.find({"pages" : {$eq: 784}})

// db.book.find({"author" : {$eq: "Unknown"}})

// db.book.find({"pages" : {$ne: 784}})

// db.book.find({"author" : {$ne: "Unknown"}})

// db.book.find({"pages" : {$ne: 784}})

// db.book.find({"author" : {$in: ["Unknown" , "Chinua Achebe"]}})

// db.book.find({"author" : {$nin: ["Unknown" , "Chinua Achebe"]}})

//  db.book.find({"pages" : {$gt: 784}})
 
//  db.book.find({"pages" : {$gte: 784}}) 
 
//  db.book.find({"pages" : {$lt: 784}})

//  db.book.find({"pages" : {$lte: 784}})
 