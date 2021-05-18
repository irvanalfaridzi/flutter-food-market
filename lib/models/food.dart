part of 'models.dart';

class Food {
  final int id;
  final String picturePath;
  final String name;
  final String description;
  final String ingredients;
  final int price;
  final double rate;

  Food({
    this.id,
    this.picturePath,
    this.name,
    this.description,
    this.ingredients,
    this.price,
    this.rate,
  });
}

Food mockFood = Food(
  id: 1,
  picturePath:
      "https://i.pinimg.com/564x/07/75/a5/0775a5b2e05c5f5296951382e0107107.jpg",
  name: "Sate Sayur Sultan",
  description:
      "Sate adalah makanan khas Bandung yang cukup sering dipesan oleh anak muda dengan pola makan yang cukup tinggi dengan mengutamakan diet yang sehat dan teratur.",
  ingredients: "Bawang Merah, Bawang Putih, Paprika, Bawang Bombay, TImun",
  price: 150000,
  rate: 4.2,
);
