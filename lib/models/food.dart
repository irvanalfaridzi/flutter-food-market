part of 'models.dart';

enum FoodType { new_food, popular, recommended }

class Food extends Equatable {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;
  final List<FoodType> types;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
    this.types = const [],
  });

  @override
  List<Object> get props => [
        id,
        picturePath,
        name,
        description,
        ingredients,
        price,
        rate,
      ];
}

List<Food> mockFoods = [
  Food(
      id: 1,
      picturePath:
          "https://i.pinimg.com/564x/07/75/a5/0775a5b2e05c5f5296951382e0107107.jpg",
      name: "Sate Sayur Sultan",
      description:
          "Sate adalah makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingredients: "Bawang Merah, Bawang Putih, Paprika, Bawang Bombay, TImun",
      price: 150000,
      rate: 4.2,
      types: [
        FoodType.new_food,
        FoodType.popular,
        FoodType.recommended,
      ]),
  Food(
    id: 2,
    picturePath:
        "https://i.pinimg.com/564x/e3/d0/1b/e3d01be8b77d951b0ba79ea8e3cdc84e.jpg",
    name: "Sate Sosis Yahut",
    description:
        "Maknyus sekaliu sate ini dengan perpaduan rasa yang sangat khas dan nikmat sekali, sangat enak dimakan saat panas maupu  dingin, sungguh mantap sekali",
    ingredients: "Bawang Putih, Paprika, Bawang Bombay, TImun",
    price: 170000,
    rate: 3.6,
  ),
  Food(
      id: 3,
      picturePath:
          "https://i.pinimg.com/564x/6e/b3/ec/6eb3ecc4327dd7f0aa7e6a9166c5da46.jpg",
      name: "Kentang Goreng Yahut",
      description:
          "Sate adalah makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
      ingredients: "Bawang Merah, Bawang Putih, Paprika, Bawang Bombay, TImun",
      price: 120000,
      rate: 4.9,
      types: [
        FoodType.new_food,
      ]),
  Food(
      id: 4,
      picturePath:
          "https://i.pinimg.com/564x/2c/f4/27/2cf427ff858ce80432446c1ebb3bfda4.jpg",
      name: "Mie Goreng Empal",
      description:
          "Mie gorenge mpal yange ankse eskaselam sdajhfbas djhasd fasd asdjhfbsjadhfb dsjhga sdjfha sdf asd fjahsdf a sdjfha sdfjhas dfjahsdf jasdhf jashdfbjkashdgbasdg asdkgj basdf",
      ingredients: "Bawang Merah, Bawang Putih, Paprika, Bawang Bombay, TImun",
      price: 200000,
      rate: 4.0,
      types: [
        FoodType.popular,
      ]),
  Food(
    id: 5,
    picturePath:
        "https://i.pinimg.com/564x/34/68/3e/34683e03c1b0beb32dd145d80588e72f.jpg",
    name: "Tacos",
    description:
        "kjsdnkasjdg afsdkj asdfg asd akjsihd fasd fkjasd fjasdf hjsfdbglskdjfgnsdf skdjfgnowiuerhtwern gkisudrfbgawerug sd,mv iwseur vskidrv erugbesmrn vsjkdhfvsd iskdur gsiekrg sdkirvjgsdkfjv sdfkin",
    ingredients: "Bawang Merah, Bawang Putih, Paprika, Bawang Bombay, TImun",
    price: 127000,
    rate: 4.3,
  ),
];
