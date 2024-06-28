class Person {
  late String _name;

  String get name => _name;
  set name(String value) => _name = value;
}

class Engine {
  late String _model;
  late double _speed;

  String get model => _model;
  set model(String value) => _model = value;

  double get speed => _speed;
  set speed(double value) => _speed = value;

  void displayEngineInfo() {
    print('Model: $_model, Speed: $_speed km/h');
  }
}

class Car {
  late String _brand;
  late String _model;
  late Person _owner;
  late Engine _engine;

  String get brand => _brand;
  set brand(String value) => _brand = value;

  String get model => _model;
  set model(String value) => _model = value;

  Person get owner => _owner;
  set owner(Person value) => _owner = value;

  Engine get engine => _engine;
  set engine(Engine value) => _engine = value;

  Car({required String brand, required String model, required Person owner, required Engine engine}) {
    this._brand = brand;
    this._model = model;
    this._owner = owner;
    this._engine = engine;
  }

  void displayCarInfo() {
    print('Owner: ${_owner.name}\nCar Brand: $_brand\nModel: $_model\nEngine: ${_engine.model}');
  }

  void run() {
    print('The $_brand $_model is running at ${_engine.speed} km/h');
  }
}

class Honda extends Car {
  late String _color;

  Honda({required String brand, required String model, required Person owner, required Engine engine, required String color})
      : super(brand: brand, model: model, owner: owner, engine: engine) {
    this._color = color;
  }

  @override
  void run() {
    print('The Honda $_model is running at 120 km/h');
  }

  @override
  void displayCarInfo() {
    print('\nOwner: ${owner.name}\nCar Brand: $_brand\nModel: $_model\nColor: $_color\nEngine: ${engine.model}');
  }
}
void main() {
  Person owner = Person();
  owner.name = 'ploy';
//   print('Owner : ${name.name}');
  
  Engine engine = Engine();
  engine.model = '5.2 V10';
  engine.speed = 640;
  
  Engine engine1 = Engine();
  engine1.model = '1.5 liter 4-cylinder';
  engine1.speed = 120;
  
  Car car = Car(
    brand:'Lamborghini',
    model: 'Huracán STO',
    owner: owner,
    engine: engine
  );
  car.displayCarInfo();
  car.run();
  
  Honda honda = Honda(
    brand:'Honda',
    model: 'Civic',
    owner: owner,
    engine: engine1,
    color: 'red'
  );
  honda.displayCarInfo();
  honda.run();
  
}

