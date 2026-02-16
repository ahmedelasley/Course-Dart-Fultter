/*

Q2
Model shapes to compute total paintable area and cost.
Requirements:
- Provide a general shape type (concrete class) with an area() method that can be overridden.
- Implement at least three concrete shape types with encapsulated dimensions and validated
constructors (invalid → print; keep previous).
- Use polymorphism with a mixed collection of shapes to compute total area (no type checks in client
code).
- Apply tiered pricing: first 50 units at 1.50, next 100 at 1.25, remainder at 1.00; print total area and total
cost to 2 decimals.

*/

import 'dart:math';

void main() {
  final shapes = <Shape>[
    Rectangle(10, 3),
    Circle(4),
    Triangle(8, 5),
  ];

  final totalArea = shapes.fold(0.0, (sum, s) => sum + s.area());
  final totalCost = tieredCost(totalArea);

  print('Total area = ${totalArea.toStringAsFixed(2)}');
  print('Total cost = ${totalCost.toStringAsFixed(2)}');
}

abstract class Shape {
  double area();
}

class Rectangle extends Shape {
  double _w = 1.0;
  double _h = 1.0;

  Rectangle(double w, double h) {
    setWidth(w);
    setHeight(h);
  }

  void setWidth(double v) {
    if (v <= 0) {
      print('[ERR] Rectangle width must be > 0. Keeping previous.');
      return;
    }
    _w = v;
  }

  void setHeight(double v) {
    if (v <= 0) {
      print('[ERR] Rectangle height must be > 0. Keeping previous.');
      return;
    }
    _h = v;
  }

  @override
  double area() => _w * _h;
}

class Circle extends Shape {
  double _r = 1.0;

  Circle(double r) {
    setRadius(r);
  }

  void setRadius(double v) {
    if (v <= 0) {
      print('[ERR] Circle radius must be > 0. Keeping previous.');
      return;
    }
    _r = v;
  }

  @override
  double area() => pi * _r * _r;
}

class Triangle extends Shape {
  double _b = 1.0;
  double _h = 1.0;

  Triangle(double b, double h) {
    setBase(b);
    setHeight(h);
  }

  void setBase(double v) {
    if (v <= 0) {
      print('[ERR] Triangle base must be > 0. Keeping previous.');
      return;
    }
    _b = v;
  }

  void setHeight(double v) {
    if (v <= 0) {
      print('[ERR] Triangle height must be > 0. Keeping previous.');
      return;
    }
    _h = v;
  }

  @override
  double area() => 0.5 * _b * _h;
}

double tieredCost(double area) {
  double remaining = area;
  double cost = 0.0;

  final tier1 = min(50.0, remaining);
  cost += tier1 * 1.50;
  remaining -= tier1;

  if (remaining > 0) {
    final tier2 = min(100.0, remaining);
    cost += tier2 * 1.25;
    remaining -= tier2;
  }

  if (remaining > 0) {
    cost += remaining * 1.00;
  }

  return cost;
}
