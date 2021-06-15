import 'package:faker/faker.dart';

class MyFaker {
  late RandomGenerator random;
  late Faker faker;

  MyFaker() {
    random = RandomGenerator();
    faker = Faker.withGenerator(random);
  }

  Map<String, dynamic> client() {
    return {
      "id": random.integer(9999999),
      "name": "${faker.person.firstName()} ${faker.person.lastName()}",
      "price": random.integer(9999, min: 100),
      "image":
          "https://randomuser.me/api/portraits/men/${random.integer(100)}.jpg",
      "status": ['paid', 'unpaid', 'pending'][random.integer(3)],
    };
  }

  List<Map<String, dynamic>> clients([int length = 10]) {
    return List.generate(length, (index) => client());
  }
}
