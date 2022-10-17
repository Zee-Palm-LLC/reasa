import 'package:flutter/widgets.dart';
import 'package:reasa/app/data/assets_path.dart';

class NotificationModel {
  String image;
  String statustitile;
  String date;
  String time;
  String description;
  bool isNew;
  NotificationModel({
    required this.image,
    required this.statustitile,
    required this.date,
    required this.time,
    required this.description,
    required this.isNew,
  });
}

List<NotificationModel> notifications = [accountSucessful,bookingSucessful2,newservice,creditcard,accountsetupsuccessful ];

NotificationModel accountSucessful = NotificationModel(
    image: CustomAssets.booking,
    statustitile: "Booking Successful!",
    date: "20 Dec, 2022",
    time: '20:49 PM',
    description:
        "Congratulations! You have successfully booked a houses for 3 days for \$90. Enjoy the services!",
    isNew: true);

NotificationModel bookingSucessful2 = NotificationModel(
    image: CustomAssets.booking,
    statustitile: "Booking Successful!",
    date: "19 Dec, 2022",
    time: '18:35 PM',
    description:
        "Congratulations! You have successfully booked a villa for 5 days for \$150. Enjoy the services!",
    isNew: true);

NotificationModel newservice = NotificationModel(
    image: CustomAssets.servisavsail,
    statustitile: "New Services Available!!",
    date: "14 Dec, 2022",
    time: '18:35 PM',
    description:
        "You can now make multiple book real estate at once. You can also cancel your booking.",
    isNew: false);

NotificationModel creditcard = NotificationModel(
    image: CustomAssets.creditconne,
    statustitile: "Credit Card Connected!",
    date: "12 Dec, 2022",
    time: '15:38 PM',
    description:
        "Your credit card has been successfully linked with Reasa.Enjoy our service.",
    isNew: false);


NotificationModel accountsetupsuccessful = NotificationModel(
    image: CustomAssets.accountsetup,
    statustitile: "Account Setup Successful!",
    date: "12 Dec, 2022",
    time: '14:27 PM',
    description:
        "Your account creation is successful, you can now experience our services.",
    isNew: false);
