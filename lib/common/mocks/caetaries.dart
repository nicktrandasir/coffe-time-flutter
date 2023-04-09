class Cafetaria {
  String image;
  String name;
  String addr;
  String id;

  Cafetaria(
      {required this.name,
        required this.addr,
        required this.image,
        required this.id});
}

List<Cafetaria> cafetariaItems = [
  Cafetaria(
      image: "assets/images/shops/1.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "1"),
  Cafetaria(
      image: "assets/images/shops/2.jpg",
      name: "Coffee",
      addr: 'ул.25 Октября д.18/5',
      id: "2"),
  Cafetaria(
      image: "assets/images/shops/3.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.Ленина д.23',
      id: "3"),
  Cafetaria(
      image: "assets/images/shops/4.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.25 Октября д.2',
      id: "4"),
  Cafetaria(
      image: "assets/images/shops/5.jpg",
      name: "Lattelady",
      addr: 'ул.Манойлова 76 д.2',
      id: "5"),
  Cafetaria(
      image: "assets/images/shops/6.jpg",
      name: "Lattelady",
      addr: 'ул.Ленина д.23',
      id: "6"),
  Cafetaria(
      image: "assets/images/shops/7.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "7"),
];