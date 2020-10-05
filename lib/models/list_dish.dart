class ListOfDishes {
  final String dishName;
  final String dishDescription;
  final String dishPrice;
  final String dishImage;

  ListOfDishes(
      {this.dishName, this.dishDescription, this.dishPrice, this.dishImage});
}

final ListOfDishes mixVeg = ListOfDishes(
  dishName: "Mixed Salaad",
  dishDescription: "Mixed Vegitables",
  dishPrice: "32.0",
  dishImage: "assets/images/02salaad.png",
);

final ListOfDishes nonVeg = ListOfDishes(
  dishName: "Chicken Salaad",
  dishDescription: "Chicken and Ham",
  dishPrice: "32.0",
  dishImage: "assets/images/03salaad.png",
);

final ListOfDishes quinoa = ListOfDishes(
  dishName: "Quinoa Salaad",
  dishDescription: "Spicy with garlic",
  dishPrice: "32.0",
  dishImage: "assets/images/03salaad.png",
);

final ListOfDishes tomatoSalaad = ListOfDishes(
  dishName: "Tomato Salaad",
  dishDescription: "Tomato and Pepper",
  dishPrice: "32.0",
  dishImage: "assets/images/04salaad.png",
);
List<ListOfDishes> listofdishes = [mixVeg, nonVeg, quinoa, tomatoSalaad];
