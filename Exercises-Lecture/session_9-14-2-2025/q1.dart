/*
Q1
Design an OOP model for planning trip fuel across multiple vehicle types.
Requirements:
- Provide a general vehicle type with encapsulated core data (private fields) and validated constructors
(invalid → print an error; keep previous values).
- Create at least two specialized vehicle types that inherit from the general type and introduce one
private field each affecting fuel usage, with validation.
- Define a fuel computation method in the general type; specialized types must override it with their own
rule.
- In a mixed collection of vehicles, given a list of trip distances, compute total fuel per vehicle and print
which vehicles cannot complete the route under their own constraints (you define the constraint per
type).


*/
abstract class Vehicle {
  String _name;
  double _litersPer100Km;
  double _tankCapacity;

  Vehicle({
    required String name,
    required double litersPer100Km,
    required double tankCapacity,
  })  : _name = 'Vehicle',
        _litersPer100Km = 8.0,
        _tankCapacity = 50.0 {
    setName(name);
    setLitersPer100Km(litersPer100Km);
    setTankCapacity(tankCapacity);
  }

  // Validation: invalid -> print error + keep old value
  void setName(String name) {
    if (name.trim().isEmpty) {
      print('[ERR] name cannot be empty. Keeping previous.');
      return;
    }
    _name = name.trim();
  }

  void setLitersPer100Km(double v) {
    if (v <= 0) {
      print('[ERR] litersPer100Km must be > 0. Keeping previous.');
      return;
    }
    _litersPer100Km = v;
  }

  void setTankCapacity(double v) {
    if (v <= 0) {
      print('[ERR] tankCapacity must be > 0. Keeping previous.');
      return;
    }
    _tankCapacity = v;
  }

  String get name => _name;
  double get tankCapacity => _tankCapacity;
  double get litersPer100Km => _litersPer100Km;

  // Base formula (can be overridden)
  double fuelNeeded(double distanceKm) => (distanceKm / 100.0) * litersPer100Km;

  // Constraint rule (can be overridden)
  bool canCompleteTrip(List<double> legsKm) {
    final total = legsKm.fold(0.0, (a, b) => a + b);
    return fuelNeeded(total) <= tankCapacity;
  }
}

class Truck extends Vehicle {
  double _payloadTons = 0.0;

  Truck({
    required super.name,
    required super.litersPer100Km,
    required super.tankCapacity,
    required double payloadTons,
  }) {
    setPayloadTons(payloadTons);
  }

  void setPayloadTons(double tons) {
    if (tons < 0) {
      print('[ERR] payloadTons cannot be negative. Keeping previous.');
      return;
    }
    _payloadTons = tons;
  }

  // +5% per ton (example)
  @override
  double fuelNeeded(double distanceKm) {
    final base = super.fuelNeeded(distanceKm);
    final multiplier = 1.0 + (0.05 * _payloadTons);
    return base * multiplier;
  }

  // Constraint example: max total 700km
  @override
  bool canCompleteTrip(List<double> legsKm) {
    final total = legsKm.fold(0.0, (a, b) => a + b);
    if (total > 700) return false;
    return fuelNeeded(total) <= tankCapacity;
  }
}

class ElectricCar extends Vehicle {
  int _acLevel = 0; // 0..3

  ElectricCar({
    required super.name,
    required super.litersPer100Km,
    required super.tankCapacity,
    required int acLevel,
  }) {
    setAcLevel(acLevel);
  }

  void setAcLevel(int level) {
    if (level < 0 || level > 3) {
      print('[ERR] acLevel must be 0..3. Keeping previous.');
      return;
    }
    _acLevel = level;
  }

  // +3% per AC level
  @override
  double fuelNeeded(double distanceKm) {
    final base = super.fuelNeeded(distanceKm);
    final multiplier = 1.0 + (0.03 * _acLevel);
    return base * multiplier;
  }

  // Constraint example: use max 85% (reserve)
  @override
  bool canCompleteTrip(List<double> legsKm) {
    final total = legsKm.fold(0.0, (a, b) => a + b);
    return fuelNeeded(total) <= (tankCapacity * 0.85);
  }
}

void main() {
  final vehicles = <Vehicle>[
    // Base vehicle (you can also create a Sedan class, but not required)
    _SimpleVehicle(name: 'Sedan', litersPer100Km: 7.5, tankCapacity: 55),
    Truck(
        name: 'Big Truck',
        litersPer100Km: 18,
        tankCapacity: 160,
        payloadTons: 6),
    ElectricCar(name: 'EV', litersPer100Km: 5, tankCapacity: 60, acLevel: 2),
  ];

  final legs = <double>[120, 180, 90];
  final totalDistance = legs.fold(0.0, (a, b) => a + b);

  print('Trip legs: $legs km (Total: $totalDistance km)\n');

  for (final v in vehicles) {
    final needed = v.fuelNeeded(totalDistance);
    final can = v.canCompleteTrip(legs);

    print('- ${v.name} needs ${needed.toStringAsFixed(2)} units');
    print(
        '  ${can ? "✅ Can complete" : "❌ Cannot complete (fails constraints)"}\n');
  }
}

class _SimpleVehicle extends Vehicle {
  _SimpleVehicle({
    required super.name,
    required super.litersPer100Km,
    required super.tankCapacity,
  });
}
