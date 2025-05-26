import 'package:src/modules/home/domain/entities/home_page_ent.dart';

class HomePageModel {
  HomePageModel({required this.uName, required this.uPassword});

  final String uName;
  final String uPassword;

  factory HomePageModel.fromJSON(Map<String, dynamic> jsonData) {
    return HomePageModel(uName: jsonData['userName'], uPassword: jsonData['password']);
  }

  Map<String, dynamic> toJson() {
    return {
      "userName": uName,
      "password": uPassword,
    };
  }

  HomePageEntity toEntity() => HomePageEntity(userName: uName, passWord: uPassword);
}
