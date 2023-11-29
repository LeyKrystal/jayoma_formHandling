import 'package:flutter/material.dart';

const Color darkBlue = Color.fromARGB(255, 18, 32, 47);

void main() {
  runApp(MainPage());

}

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: HomePage()
    );
  }

}

class HomePage extends StatelessWidget {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar: AppBar(
            title: Text('Log In'),
            backgroundColor: Colors.pink,
            leading: Icon(Icons.code),
            centerTitle: true

        ),

        body: Form(
            child: ListView(
                padding: EdgeInsets.all(20),
                children: [
                  TextFormField(
                      controller: emailController,
                      decoration: InputDecoration(labelText: "Email Address"),
                      keyboardType: TextInputType.emailAddress
                  ),

                  TextFormField(
                    controller: passwordController,
                    decoration: InputDecoration(labelText: "Password"),
                    obscureText: true,
                  ),
                  ElevatedButton(
                      onPressed: (){
                        print(emailController.text);
                        print(passwordController.text);
                      },
                      child: Text("Submit")
                  )
                ]
            )
        )
    );

  }
}
