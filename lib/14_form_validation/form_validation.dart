import 'package:flutter/material.dart';
import 'package:flutter_widgets/14_form_validation/success_page.dart';

class FormValidationPage extends StatefulWidget {
  const FormValidationPage({super.key});

  @override
  State<FormValidationPage> createState() => _FormValidationPageState();
}

class _FormValidationPageState extends State<FormValidationPage> {

  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Form Validation"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 100,
                          height: 100,
                          child: Image.asset("assets/img/flutter.png"),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text(
                          "Flutter",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w400,
                          ),
                        )
                      ],
                    ),
                   const  SizedBox(
                      height: 40,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Email",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Form must not be empty";
                        } else if (!value.contains("@")){
                          return "Email is not correctly formatted";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        hintText: "Password",
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if(value!.isEmpty){
                          return "Form must not be empty";
                        } else if (value.length < 6 ){
                          return "Password be at least 6 character";
                        } else {
                          return null;
                        }
                      },
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    const Text(
                      "Forget Password?",
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.blue),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    GestureDetector(
                      onTap: _login,
                      child: Container(
                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(20)),
                        child: const Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
           const SizedBox(height: 30,),
           const  Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "Don't have an account? Create Account",
                style: TextStyle(fontSize: 16),
              ),
            )
          ],
        ),
      ),
    );
  }

  _login() {
    if(_formKey.currentState!.validate()) {
      Navigator.push(context, MaterialPageRoute(
        builder: (context) => const SuccessPage()
      ));
    } else {
      return null;
    }
  }


}
