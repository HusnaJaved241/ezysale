import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SignInPage extends StatefulWidget {
  SignInPage({Key? key}) : super(key: key);

  @override
  _SignInPageState createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  bool _obscureText = false;
  // Toggles the password show status
  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(title:  Center(
        child: Text(
                  'Sign In',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
      ),
              ),
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
            const SizedBox(
                height: 105,
              ),
             
              textItem("Enter Email..."),
              const SizedBox(
                height: 8,
              ),
              passField("Enter Password..."),
             
              
              const SizedBox(
                height: 15,
              ),
              label("Forgot Password?"),
              const SizedBox(
                height: 20,
              ),
              colorButton(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'Don\'t have an account?  ',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                  InkWell(
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            const SizedBox(
                height: 15,
              ),
              const Text(
                'OR',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 15),
               buttonItem('assets/google.svg', 'Continue with Google', 25),
              // const SizedBox(height: 3),
              buttonItem('assets/phone.svg', 'Continue with Phone', 30),
            ],
          ),
        ),
      ),
    );
  }

// *********************************  WIDGETS  *********************************

  Widget buttonItem(String imagePath, String buttonName, double size) {
    return InkWell(
      child: Container(
        // width: MediaQuery.of(context).size.width - 70,
        width: 300,
        height: 50,
        child: Card(
          color: Colors.white,
          // elevation: 2,r
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
            side: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                imagePath,
                height: size,
                width: size,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                buttonName,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textItem(String label) {
    return Container(
      // width: MediaQuery.of(context).size.width - 70,
      width: 350,
      height: 55,
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          // labelText: label,
          // labelStyle: const TextStyle(
          //   color: Colors.grey,
          //   fontSize: 17,
          // ),
          hintText: label,
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
      ),
    );
  }

  Widget colorButton() {
    return InkWell(
      child: Container(
          // width: MediaQuery.of(context).size.width - 100,
          // width: MediaQuery.of(context).size.width - 70,
          width: 350,

          height: 55,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.blue,
          ),
          child: Center(
            child: const Text(
              'Sign In',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          )),
    );
  }

Widget label(String label) {
    return Center(
      child: Text(
        label,
        style: TextStyle(
          color: Colors.red,
          fontWeight: FontWeight.w600,
          fontSize: 18,
        ),
      ),
    );
  }

 Widget passField(String label) {
   
    return Container(
      // width: MediaQuery.of(context).size.width - 70,
      width: 350,
      height: 55,
      child: TextFormField(
        style: const TextStyle(
          color: Colors.black,
          fontSize: 17,
        ),
        decoration: InputDecoration(
          hintText: label,
           suffixIcon:  IconButton(
            icon:Icon(_obscureText ? Icons.visibility:Icons.visibility_off,),
              onPressed: _toggle,
              color: Colors.blue,
              ),
          hintStyle: const TextStyle(
            color: Colors.grey,
            fontSize: 17,
          ),

          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 2,
              color: Colors.blue,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(
              width: 1,
              color: Colors.grey,
            ),
          ),
        ),
         obscureText: _obscureText,
      ),
    );
  }
}
