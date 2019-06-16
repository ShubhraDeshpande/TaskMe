import firebase from 'firebase'
import { filter, map } from 'lodash'
import { makeExecutableSchema } from 'graphql-tools'

firebase.initializeApp({
  databaseURL: 'https://hackit-buf.firebaseio.com',
})

const {buildSchema} = require('graphql');
// const {GraphQLObjectType, GraphQLString, GraphQLFloat, GraphQLBoolean, GraphQLSchema} = graphql;

// const UserType = new GraphQLObjectType({
//     name:'User',
//     fields:() => ({
//         id:{type:ID},
//         fname:{type:GraphQLString},
//         lname:{type:GraphQLString},
//         email:{type:GraphQLString},
//         //dob
//         sex:{type:GraphQLString}
//     })
// }); 


// const JobType = new GraphQLObjectType({
//     name:'Job',
//     fields:() => ({
//         id:{type:ID},
//         title:{type:GraphQLString},
//         description:{type:GraphQLString},
//         postedBy:{type:ID}, //UserID
//         isActive:{type:GraphQLBoolean},
//         //location
//         pay:{type:GraphQLFloat},
//         category:{type:ID}  // CategoryID
//     })
// }); 


// const CategoryType = new GraphQLObjectType({
//     name:'Category',
//     fields:() => ({
//         id:{type:ID},
//         name:{type:GraphQLString},
//     })
// }); 


// const TransactionType = new GraphQLObjectType({
//     name:'Transaction',
//     fields:() => ({
//         id:{type:ID},
//         jid:{type:ID},  //JobType
//         uidfor:{type:ID},  //UserID of poster
//         uidby:{type:ID},  //UserID of worker
//         //tdate
//         amount:{type:GraphQLFloat}
//     })
// }); 



// const RootQuery = new GraphQLObjectType({
//     name: 'RootQueryType',
//     fields:{
//         user:{
//             type:UserType,
//             args:{id:{type:ID}},
//             resolve(parent,args){

//             }
//         },

//         job:{
//             type:JobType,
//             args:{id:{type:ID}},
//             resolve(parent,args){
                
//             }
//         },

//         category:{
//             type:CategoryType,
//             args:{id:{type:ID}},
//             resolve(parent,args){
                
//             }
//         },

//         transaction:{
//             type:TransactionType,
//             args:{id:{type:ID}},
//             resolve(parent,args){
                
//             }
//         }
//     }
// });

// module.exports = new GraphQLSchema({
//     query:RootQuery
// });


// const mapSnapshotToEntity = snapshot => ({ id: snapshot.key, ...snapshot.val() })
// const mapSnapshotToEntities = snapshot => map(snapshot.val(), (value, id) => ({ id, ...value }))

// const ref = path => firebase.database().ref(path)
// const getValue = path => ref(path).once('value')
// const getEntity = path => getValue(path).then(mapSnapshotToEntity)
// const getEntities = path => getValue(path).then(mapSnapshotToEntities)

// const resolvers = {
//     Users: {
//       posts(author) {
//         return getEntities('posts').then(posts => filter(posts, { authorId: author.id }))
//       },
//     },
  
//     Post: {
//       author(post) {
//         return getEntities('authors').then(posts => filter(authors, { id: authorId }))
//       },
//     },
  
//     Query: {
//       posts() {
//         return getEntities('posts')
//       },
  
//       authors() {
//         return getEntities('authors')
//       }
//     },
//   }

const schema = buildSchema(`
  scalar timestamp;

  type User {
    id: ID!
    fname: string
    lname: string
    email: string
    dob: timestamp
    gender: string
    transactions: [Transaction]
  }

  type Job {
    id: ID!
    title: string
    description: string
    postedBy: ID
    isActive: boolean
    location: geopoint
    pay: number
    category: Category
    transactions: [Transaction]
  }

  type Category {
    id: ID!
    name: string
  }

  type Transaction{
    id:ID!
    jid: Job
    uidfor: User
    amount: Float
    tdate: timestamp
  }

  type Query {
    users: [User]
    jobs: [Job]
    categories: [Category]
    transactions: [Transaction]
  }
  `)

  const root = {
      users:() => {

      },

      jobs:() => {

      },

      categories:() =>{

      },

      transactions:() =>{
          
      }
  }
