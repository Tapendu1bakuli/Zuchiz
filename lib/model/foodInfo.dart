class FoodInfo{
  final String name;
  final String image;

  FoodInfo(
  {
    required this.name,
    required this.image,
  });

}

List foodList = [
  FoodInfo(
      name: "Burger",
      image: "https://images.pexels.com/photos/1639562/pexels-photo-1639562.jpeg"
  ),

  FoodInfo(
      name: "Pizza",
      image: "https://images.pexels.com/photos/2147491/pexels-photo-2147491.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),


  FoodInfo(
      name: "Sushi",
      image: "https://images.pexels.com/photos/3147493/pexels-photo-3147493.jpeg"
  ),

  FoodInfo(
      name: "Salad",
      image: "https://images.pexels.com/photos/257816/pexels-photo-257816.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"
  ),
];