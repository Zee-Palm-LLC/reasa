import 'package:reasa/app/Model/user_model.dart';

class Message {
  User sender;
  String time;
  String text;
  bool isread;
  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isread,
  });
}

List<Message> chatlist = [message1,message2,message3,message4,message5,message6,message7,message8,message9,currentusermesage];
//angelina,rohan,alfonzo,anguestina,rodalfo,tanner,ordonez,dorrance,clinton

Message currentusermesage = Message(
    sender: currentuser,
    time: "16:00",
    text: "what do you do boy?",
    isread: false);



Message message1 = Message(
    sender: angelina,
    time: "16:00",
    text: "Of course, the apartment is ...",
    isread: false);
Message message2 = Message(
    sender: rohan,
    time: "14.45",
    text: "Okay...Do we have a deal?",
    isread: false);
Message message3 = Message(
    sender: alfonzo,
    time: "10.38",
    text: "It's nice working with you 😁",
    isread: true);
Message message4 = Message(
    sender: anguestina,
    time: "12/22/2022",
    text: "Will the contract be sent? 🤔",
    isread: false);
Message message5 = Message(
    sender: rodalfo,
    time: "12/21/2022",
    text: "just ideas for next time",
    isread: true);
Message message6 = Message(
    sender: tanner,
    time: "12/21/2022",
    text: "Haha that's terrifying 😂",
    isread: true);
Message message7 = Message(
    sender: ordonez,
    time: "12/21/2022",
    text: "I'll be there in 2 mins ⏱",
    isread: true);
Message message8 = Message(
    sender: dorrance,
    time: "12/21/2022",
    text: "Wow, this is really epic 🔥🔥",
    isread: true);
Message message9 = Message(
    sender: clinton,
    time: "12/21/2022",
    text: "Haha that's terrifying 😂",
    isread: true);
