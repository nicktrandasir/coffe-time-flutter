class Drink {
  String image;
  String name;
  String type;
  String price;
  String milkVolume;
  String coffeePercent;
  String volume;
  String temperature;
  String energy;
  String description;
  String id;

  Drink({
    required this.name,
    required this.type,
    required this.image,
    required this.price,
    required this.milkVolume,
    required this.coffeePercent,
    required this.volume,
    required this.temperature,
    required this.energy,
    required this.description,
    required this.id,
  });
}

List<Drink> drinkItems = [
  Drink(
    id: '1',
    image: "assets/images/drinks/amer.jpg",
    name: "Americano",
    type: 'кофейный напиток',
    price: "10 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '2',
    image: "assets/images/drinks/amer1.jpg",
    name: "Americano double",
    type: 'кофе',
    price: "12 ₽",
    milkVolume: "15мл",
    coffeePercent: "23%",
    volume: "18мл",
    temperature: "95`",
    energy: "150",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '3',
    image: "assets/images/drinks/espr1.png",
    name: "Espresso",
    type: 'кофе',
    price: "22 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '4',
    image: "assets/images/drinks/latte.png",
    name: "Latte",
    type: 'кофейный напиток',
    price: "11 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '5',
    image: "assets/images/drinks/latte3.jpg",
    name: "Latte strong",
    type: 'кофе',
    price: "23 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '6',
    image: "assets/images/drinks/latte4.jpg",
    name: "Latte slim",
    type: 'молочный напиток',
    price: "25 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '7',
    image: "assets/images/drinks/latte7.png",
    name: "Capucino",
    type: 'кофейный напиток',
    price: "19 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '8',
    image: "assets/images/drinks/latte4.jpg",
    name: "Late",
    type: 'молочный напиток',
    price: "12 ₽",
    milkVolume: "15мл",
    coffeePercent: "23%",
    volume: "18мл",
    temperature: "95`",
    energy: "150",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '9',
    image: "assets/images/drinks/latte3.jpg",
    name: "Frapucino",
    type: 'кофейный напиток',
    price: "11 ₽",
    milkVolume: "15мл",
    coffeePercent: "20%",
    volume: "20мл",
    temperature: "96`",
    energy: "156",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
  Drink(
    id: '10',
    image: "assets/images/drinks/espr1.png",
    name: "Coffee",
    type: 'кофе',
    price: "12 ₽",
    milkVolume: "15мл",
    coffeePercent: "23%",
    volume: "18мл",
    temperature: "95`",
    energy: "150",
    description:
        "Просто вкусный кофе. Тут еще какое то описание. Много букв. Просто вкусный кофе. Тут еще какое то описание. Много букв",
  ),
];
