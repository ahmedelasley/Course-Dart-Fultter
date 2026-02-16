/*
Q2
Create a class Rectangle with private fields _width and _height.- Public setters width and height:
If > 0 update, else print 'Invalid value for width/height'.- Public getters width and height.- Add a read-only computed getter area.- In main(), demonstrate:
1. Creating a rectangle with valid values and printing width, height, and area.
2. Updating one side to a valid value and showing area changes.
3. Trying to set a negative value (should print 'Invalid value').- Prove encapsulation: include a commented line rect._width = 0; to show it’s inaccessible.
*/
void main() {
  var rect = Rectangle(5, 3);
  print('Width: ${rect.width}, Height: ${rect.height}, Area: ${rect.area}');

  rect.width = 10;
  print(
      'After update -> Width: ${rect.width}, Height: ${rect.height}, Area: ${rect.area}');

  rect.height = 0;
}

class Rectangle {
  double _width;
  double _height;

  Rectangle(this._width, this._height);

  set width(double value) {
    if (value > 0) {
      _width = value;
    } else {
      print('Invalid value for width/height');
    }
  }

  set height(double value) {
    if (value > 0) {
      _height = value;
    } else {
      print('Invalid value for width/height');
    }
  }

  double get width => _width;
  double get height => _height;

  double get area => _width * _height;
}
