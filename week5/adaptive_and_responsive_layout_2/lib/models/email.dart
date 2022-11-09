class Email {
  String userImage;
  String title;
  String subTitle;
  String explation;
  bool isRead;
  bool isFav;
  List<String> images;
  String sendDate;
  Email(
      {required this.userImage,
      required this.title,
      required this.subTitle,
      required this.explation,
      required this.isRead,
      required this.isFav,
      required this.images,
      required this.sendDate});
}

List<Email> emails = [
  Email(
      userImage: "assets/images/github.png",
      title: "Github",
      subTitle: "Please verify your device",
      explation: "Hey aenesyvz!\nA sign in attempt requires further verification because we did not recognize your device. To complete the sign in, enter the verification code on the unrecognized device.",
      isRead: false,
      isFav: false,
      images: [],
      sendDate: "23:30"
    ),
    Email(
      userImage: "assets/images/user1.jpg",
      title: "Tosyalılar",
      subTitle: "Tosya'yı gezelim",
      explation: "Tosya'nın doğal güzellikerini sende gör!",
      isRead: false,
      isFav: false,
      images: ["assets/images/t1.jfif","assets/images/t2.jfif","assets/images/t3.jfif"],
      sendDate: "22:30"
    ),
    Email(
      userImage: "assets/images/user2.jpg",
      title: "Adnan Topuz",
      subTitle: "Staj başvurusu hk.",
      explation: "Sayın Alper Enes Yavuz, staj başvurunuz kabul edilmişti...",
      isRead: false,
      isFav: false,
      images: ["assets/images/icardi.jfif"],
      sendDate: "17:18"
    ),
    Email(
      userImage: "assets/images/user6.jpg",
      title: "Kastamonulular",
      subTitle: "Kastamonu'yu gezelim",
      explation: "Tosya'nın doğal güzellikerini sende gör!",
      isRead: false,
      isFav: false,
      images: ["assets/images/k1.jfif","assets/images/k2.jfif"],
      sendDate: "14:30"
    ),
     Email(
      userImage: "assets/images/user3.jpg",
      title: "Furkan Çağatay",
      subTitle: "Yazılım Mühendisliği De...",
      explation: "Yarın yapılması gereken dersimiz haftaya aynı gün aynı saa...",
      isRead: false,
      isFav: false,
      images: ["assets/images/t1.jfif","assets/images/t2.jfif","assets/images/t3.jfif"],
      sendDate:"11:55" 
    ),
    Email(
      userImage: "assets/images/gs.jfif",
      title: "Galatasaray",
      subTitle: "Şampiyon Galatasaray",
      explation: "Galatasaray kendi sahasında 23. şampiyonluğunu ilan etti!",
      isRead: false,
      isFav: false,
      images: ["assets/images/icardi.jfif"],
      sendDate: "09:34"
    ),
      Email(
      userImage: "assets/images/user4.jpg",
      title: "Tosyalılar",
      subTitle: "Tosya'yı gezelim",
      explation: "Tosya'nın doğal güzellikerini sende gör!",
      isRead: false,
      isFav: false,
      images: ["assets/images/t1.jfif","assets/images/t2.jfif","assets/images/t3.jfif"],
      sendDate: "Yesterday"
    ),
    Email(
      userImage: "assets/images/icardi.jfif",
      title: "Maçkolik",
      subTitle: "İcardiiiiii!",
      explation: "Galatasaray kendi sahasında Beşiktaş Jimnastik Kulubunu 2 - 1 yendi. Goller Arjantinli yıldız İcardi'den geldi",
      isRead: false,
      isFav: false,
      images: ["assets/images/icardi.jfif"],
      sendDate: "Yesterday"
    ),
];
