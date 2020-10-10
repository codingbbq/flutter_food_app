class ListOfDishes {
  final String dishCategory;
  final String dishName;
  final String dishDescription;
  final String dishDetailedDescription;
  final String dishPrice;
  final List<String> dishImage;
  final String dishDeliveryTime;

  ListOfDishes({
    this.dishCategory,
    this.dishDetailedDescription,
    this.dishName,
    this.dishDescription,
    this.dishPrice,
    this.dishImage,
    this.dishDeliveryTime,
  });
}

final ListOfDishes mixVeg = ListOfDishes(
  dishCategory: "Continental",
  dishName: "Mixed Salad",
  dishDescription: "Mixed Vegitables",
  dishDetailedDescription:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  dishPrice: "32.00",
  dishImage: ["assets/images/02salaad.png", "assets/images/01salaad.png"],
  dishDeliveryTime: "25 Min",
);

final ListOfDishes nonVeg = ListOfDishes(
  dishCategory: "Italian",
  dishName: "Chicken Salad",
  dishDescription: "Chicken and Ham",
  dishDetailedDescription:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud.",
  dishPrice: "24.00",
  dishImage: ["assets/images/01salaad.png", "assets/images/03salaad.png"],
  dishDeliveryTime: "10 Min",
);

final ListOfDishes quinoa = ListOfDishes(
  dishCategory: "Mediterrian",
  dishName: "Quinoa Salad",
  dishDescription: "Spicy with garlic",
  dishDetailedDescription:
      "Adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  dishPrice: "18.00",
  dishImage: ["assets/images/01salaad.png", "assets/images/03salaad.png"],
  dishDeliveryTime: "40 Min",
);

final ListOfDishes tomatoSalaad = ListOfDishes(
  dishCategory: "South Indian",
  dishName: "Tomato Salad",
  dishDescription: "Tomato and Pepper",
  dishDetailedDescription:
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
  dishPrice: "25.00",
  dishImage: ["assets/images/01salaad.png", "assets/images/04salaad.png"],
  dishDeliveryTime: "10 Min",
);
List<ListOfDishes> listofdishes = [mixVeg, nonVeg, quinoa, tomatoSalaad];
