import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:src/modules/home/data/models/home_model.dart';
import 'package:src/modules/home/domain/repositories/i_home_page.dart';

class ImpHomepage implements IHomePage {
  @override
  Future<void> homeData(String userName, String passWord) async {
    HomePageModel model = HomePageModel(uName: userName, uPassword: passWord);
    var data = model.toJson();

    try {
      await FirebaseFirestore.instance.collection('users').add(data);
      print('Data is saved $data');
    } catch (exception) {
      print('Error saving data $exception');
    }
  }
}
