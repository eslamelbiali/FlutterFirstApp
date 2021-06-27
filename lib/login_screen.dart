import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  var EmailController =TextEditingController();
  var PasswordController=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20,),
                TextFormField(
                  controller: EmailController,
                  keyboardType: TextInputType.emailAddress,
                  onFieldSubmitted:(value)
                  {
                    print(value);
                  } ,
                  decoration: InputDecoration(
                    labelText: 'Enter Email',
                    prefixIcon: Icon(
                        Icons.email),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10,),
                TextFormField(
                  controller: PasswordController,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  onFieldSubmitted:(value)
                  {
                    print(value);
                  } ,
                  decoration: InputDecoration(
                    labelText: 'Enter Password',
                    prefixIcon: Icon(
                        Icons.password),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 20,),
                Container(
                  width: double.infinity,
                  color: Colors.indigo,
                  child: MaterialButton(
                    child: Text(
                      'Login',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                      onPressed: ()
                      {
                      print(EmailController.text);
                      print(PasswordController.text);
                      }),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Don\'t Have an Acc?',
                    ),
                    TextButton(
                        onPressed:(){},
                      child: Text(
                        'Register Now',
                      ) ,),
                  ],
                )

              ],
            ),
          ),
        ),
      ),
    );
  }
}
