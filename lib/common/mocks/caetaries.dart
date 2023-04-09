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
      image: "assets/images/1.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "1"),
  Cafetaria(
      image: "assets/images/2.jpg",
      name: "Coffee",
      addr: 'ул.25 Октября д.18/5',
      id: "2"),
  Cafetaria(
      image: "assets/images/3.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.Ленина д.23',
      id: "3"),
  Cafetaria(
      image: "assets/images/4.jpg",
      name: "Coffee Lattelady",
      addr: 'ул.25 Октября д.2',
      id: "4"),
  Cafetaria(
      image: "assets/images/5.jpg",
      name: "Lattelady",
      addr: 'ул.Манойлова 76 д.2',
      id: "5"),
  Cafetaria(
      image: "assets/images/6.jpg",
      name: "Lattelady",
      addr: 'ул.Ленина д.23',
      id: "6"),
  Cafetaria(
      image: "assets/images/7.jpg",
      name: "Coffee",
      addr: 'ул.Юности д.120',
      id: "7"),
];