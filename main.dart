import 'Json_parsing.dart';

void main() {
  for (final e in UserModel.finalData) {
    print(e.name);
    print(e.id);
    print(e.email);
    print(e.username);
    print(e.phone);
    print(e.website);
    print(e.address!.street);
    print(e.address!.suite);
    print(e.address!.city);
    print(e.address!.zipCode);
    print(e.address!.geo!.lat);
    print(e.address!.geo!.lng);
    print(e.company!.name);
    print(e.company!.bs);
    print(e.company!.catchPhrase);
  }
}
