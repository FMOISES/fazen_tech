 import 'package:flutter/material.dart';
import 'package:fazen_tech/models/cart_model.dart';
import 'package:fazen_tech/models/user_model.dart';
import 'package:fazen_tech/screens/home_screen.dart';
import 'package:scoped_model/scoped_model.dart';
 import 'package:firebase_core/firebase_core.dart';

 void main() async {
   WidgetsFlutterBinding.ensureInitialized();
   await Firebase.initializeApp();
   runApp(MyApp());
 }

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ScopedModel<UserModel>(
      model: UserModel(),
      child: ScopedModelDescendant<UserModel>(
          builder: (context, child, model){
            return ScopedModel<CartModel>(
              model: CartModel(model),
              child: MaterialApp(
                  title: "Fazen-Tech",
                  theme: ThemeData(
                      primarySwatch: Colors.blue,
                      primaryColor: Color.fromARGB(255, 204, 51, 0)
                  ),
                  debugShowCheckedModeBanner: false,
                  home: HomeScreen()
              ),
            );
          }
      ),
    );
  }
}
