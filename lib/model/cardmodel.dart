class CardData {
  final String title, time;
  final int price, token;

  CardData({
    required this.price,
    required this.title,
    required this.token,
    required this.time,
  });
}

List<CardData> cardinfo = [
  CardData(
      price: 2323, title: "My First Post on GU", token: 2, time: "10h:14m:56s"),
];
