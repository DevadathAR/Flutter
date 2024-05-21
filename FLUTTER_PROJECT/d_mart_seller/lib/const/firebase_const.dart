import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:d_mart_seller/const/const.dart';

FirebaseAuth auth = FirebaseAuth.instance;
FirebaseFirestore firestore = FirebaseFirestore.instance;
User? currentUser = auth.currentUser;

//collections

const vendorCollection = "vendor";
const prodctsCollection = "prodects";
const chatCollection = "chats";
const messageCollection = "messages";
const ordersCollection = "orders";

