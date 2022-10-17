class Settingnotification {
  String title;
  bool isValue;
  Settingnotification({
    required this.title,
    required this.isValue,
  });
}

List<Settingnotification> security = [
  Settingnotification(title: "Remember me", isValue: true),
  Settingnotification(title: 'Face ID', isValue: true),
  Settingnotification(title: 'Biometric ID', isValue: false),
];

List<Settingnotification> mynotification = [
  Settingnotification(title: "General Notification", isValue: true),
  Settingnotification(title: 'Sound', isValue: true),
  Settingnotification(title: 'Vibrate', isValue: false),
  Settingnotification(title: 'Special Offers  ', isValue: true),
  Settingnotification(title: 'Promo & Discount', isValue: false),
  Settingnotification(title: 'Payments', isValue: true),
  Settingnotification(title: 'Cashback', isValue: false),
  Settingnotification(title: 'App Updates', isValue: true),
  Settingnotification(title: 'New Service Available', isValue: false),
  Settingnotification(title: 'New Tips Available', isValue: false),
];
