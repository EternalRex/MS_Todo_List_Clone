import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  if (kReleaseMode) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: String.fromEnvironment('FIREBASE_API_KEY'),
        appId: String.fromEnvironment('FIREBASE_APP_ID'),
        authDomain: String.fromEnvironment('FIREBASE_AUTH_DOMAIN'),
        projectId: String.fromEnvironment('FIREBASE_PROJECT_ID'),
        storageBucket: String.fromEnvironment('FIREBASE_STORAGE_BUCKET'),
        messagingSenderId: String.fromEnvironment('FIREBASE_MESSAGING_SENDER_ID'),
      ),
    );
  } else {
    await dotenv.load(fileName: ".env");
    await Firebase.initializeApp(
      options: FirebaseOptions(
        apiKey: dotenv.env['FIREBASE_API_KEY']!,
        appId: dotenv.env['FIREBASE_APP_ID']!,
        authDomain: dotenv.env['FIREBASE_AUTH_DOMAIN'],
        projectId: dotenv.env['FIREBASE_PROJECT_ID']!,
        storageBucket: dotenv.env['FIREBASE_STORAGE_BUCKET'],
        messagingSenderId: dotenv.env['FIREBASE_MESSAGING_SENDER_ID']!,
      ),
    );
  }
  runApp(const TodoListApp());
}

class TodoListApp extends StatelessWidget {
  const TodoListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.network(
                  'https://scontent.fceb3-1.fna.fbcdn.net/v/t39.30808-6/481214117_1850971889046245_522487856188504891_n.jpg?_nc_cat=101&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHrROi_Ki67xGzCb1oeRt6EsKihp9rgL3mwqKGn2uAveSRV4YCgeCqktJjYtEcOJhSc32Yn6ai9Vt1jVEoHrLCd&_nc_ohc=xEiLaN8DpIoQ7kNvgGGTjbe&_nc_oc=AdnsXrQdXclNyJHJ81dmadSg_yEPHsNMKhiR8Bsi7PpKGSxVR6qutFYbQRGZyo9Wo-Y&_nc_zt=23&_nc_ht=scontent.fceb3-1.fna&_nc_gid=9kVZ9j-vejOdA0MXd1XoGw&oh=00_AYEQy3Vl-ZLjlO6iAJuX1lznpVpO5RtZKou2PWE1NOrmxg&oe=67E45ED6',
                  height: 200,
                  width: 200,
                ),
                Image.network(
                  'https://upload.wikimedia.org/wikipedia/commons/thumb/f/f1/Heart_coraz%C3%B3n.svg/1200px-Heart_coraz%C3%B3n.svg.png',
                  height: 200,
                  width: 200,
                ),
                Image.network(
                  'https://scontent.fceb3-1.fna.fbcdn.net/v/t39.30808-6/326044855_1881101495567657_7951264663273439881_n.jpg?_nc_cat=107&ccb=1-7&_nc_sid=a5f93a&_nc_eui2=AeHDh-oNgH3yZLUdpWljFwiscGMnO7tW7s5wYyc7u1buzpYoIsVB2MGxuNiHzib93yhCcOEYCtTxdOdJqNJIqrQh&_nc_ohc=NLJFjSHQzzYQ7kNvgGNYhsl&_nc_oc=AdlDlBck-QRvCoYZrxkvU9nsnaDNMVQj2hcZamH-HpvPItNdxZ-ihuC6bYrS8pfx1aA&_nc_zt=23&_nc_ht=scontent.fceb3-1.fna&_nc_gid=lNh9SRJOL5miNwPFUjv1EQ&oh=00_AYEbmsWWemHM0gWDg2t0mLnWRz8y1b_IrO0kiUl11HLIEA&oe=67E4521D',
                  width: 200,
                  height: 300,
                )
              ],
            ),
            const Text(
              'Hi guys, kumusta namo Jeff and Krystelle? deployed na atong app! Web app lang sa atong himoon',
            ),
            const Text(
              'Small pipeline test',
            ),
          ],
        ),
      ),
    );
  }
}
