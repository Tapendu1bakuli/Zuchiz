class FoodModel{
  String name;
  String image;
  String time;
  String ratting;

  FoodModel({
    required this.name,
    required this.ratting,
    required this.time,
    required this.image
});
}


List foodDetailsList = [
  FoodModel(
       name: "Burger",
       ratting: " 8.4 Very Good (124)",
       time: "5-10 min",
       image: "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg"
   ),
  FoodModel(
      name: "Sushi",
      ratting: " 8.0 Very Good (124)",
      time: "5-10 min",
      image: "https://images.pexels.com/photos/3147493/pexels-photo-3147493.jpeg"
  ),
FoodModel(
    name: "Salaaad",
      ratting: " 8.4 Very Good (124)",
      time: "12-15 min",
      image: "https://images.pexels.com/photos/3872373/pexels-photo-3872373.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
];