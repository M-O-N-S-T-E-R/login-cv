import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'cv_Scren.dart';


class Login_Screen extends StatelessWidget {


  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,

      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        child:  Center(
          child: SingleChildScrollView(
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                  SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: emailController,
                    keyboardType: TextInputType.emailAddress,
                    onFieldSubmitted: (value){
                      print(value);
                    },
                    decoration: InputDecoration(
                      labelText: "Email Address",
                      border: OutlineInputBorder(),

                      prefixIcon: Icon(
                        Icons.email,
                      ),


                    ),

                    validator: (value)
                    {
                      if(value!.isEmpty)
                      {

                        return "email address must not be empty";
                      }
                      return null;
                    },
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  TextFormField(
                    controller: passwordController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: "Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(
                          Icons.lock
                      ),
                      suffixIcon: Icon(
                        Icons.remove_red_eye,

                      ),


                    ),
                    validator: (value) {

                      if(value!.isEmpty)
                      {
                        return "Password must be not empty";
                      }

                      return null;
                    },
                  ),
                  SizedBox(
                    height: 15.0,
                  ),

                  Container(
                    width: double.infinity,
                    color: Colors.indigo,
                    child: MaterialButton(

                      onPressed: (){
                        if(formKey.currentState!.validate())
                        {
                          if(emailController.text == "123" && passwordController.text =="123"){

                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                     builder: (context) => CvScreen(),
                                 ));
                          }
                          else{
                            print("chack pass and email");
                          }
                        }




                      },
                      child: Text(
                        "LOGIN",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.white,
                        ),

                      ),


                    ),
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Row(

                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(
                        "Don't have an account ?",
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),

                      TextButton(
                        onPressed: (){},
                        child: Text(
                          "SignIn",
                          style: TextStyle(
                            color: Colors.indigo,
                            fontSize: 20,

                          ),
                        ),
                      )
                    ],

                  ),
                ],
              ),
            ),
          ),
        ),
      ),


    );
  }
}
