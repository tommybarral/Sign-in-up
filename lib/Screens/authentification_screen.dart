import 'package:flutter/material.dart';

class AuthentificationScreen extends StatelessWidget {

  static const routeName = '/authentification-screen';

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  Widget signInWith(IconData icon) {
    return Container(
      height: 50,
      width: 115,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withOpacity(0.4), width: 1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 24),
          TextButton(onPressed: () {}, child: Text('Sign in')),
        ],
      ),
    );
  }

  Widget userInput(TextEditingController userInput, String hintTitle, TextInputType keyboardType) {
    return Container(
      margin: EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(color: Colors.blueGrey.shade200, borderRadius: BorderRadius.circular(30)),
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0, right: 25),
        child: TextField(
          controller: userInput,
          decoration: InputDecoration(
            hintText: hintTitle,
            hintStyle: TextStyle(fontSize: 18, color: Colors.white70, fontStyle: FontStyle.italic),
          ),
          keyboardType: keyboardType,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            alignment: Alignment.topCenter,
            fit: BoxFit.fill,
            image: NetworkImage(
              'https://www.teahub.io/photos/full/246-2460189_full-hd-background-abstract-portrait.jpg',
            ),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
        Container(
          height: 510,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 45),
                userInput(emailController, 'Email', TextInputType.emailAddress),
                userInput(passwordController, 'Password', TextInputType.visiblePassword),
            Container(
              height: 55,
              // for an exact replicate, remove the padding.
              // pour une réplique exact, enlever le padding.
              padding: const EdgeInsets.only(top: 5, left: 70, right: 70),
              child: RaisedButton(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                color: Colors.indigo.shade800,
                onPressed: () {
                  print(emailController);
                  print(passwordController);
                },
                child: Text('Sign in', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white,),),
                ),
              ),
                SizedBox(height: 20),
                Center(child: Text('Forgot password ?'),),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      signInWith(Icons.add),
                      signInWith(Icons.book_online),
                    ],
                  ),
                ),
                Divider(thickness: 0, color: Colors.white),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Don\'t have an account yet ? ', style: TextStyle(color: Colors.grey, fontStyle: FontStyle.italic),),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ),

                  ],
                ),
              ],
            ),
          ),
        ),
          ],
        ),
      ),
    );
  }
}
