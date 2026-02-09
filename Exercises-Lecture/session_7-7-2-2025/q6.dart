/*
Q6. Method Returning a Value - Create a class Rectangle with attributes width and height. - Add a
method perimeter() that returns the perimeter. - In main(), create a rectangle and print its perimeter.
*/

void main() {
  var rect = Rectangle(5, 3);

  print("Permieter : ${rect.permieter()}");
}

class Rectangle {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  double permieter() => 2 * (width + height);
}
