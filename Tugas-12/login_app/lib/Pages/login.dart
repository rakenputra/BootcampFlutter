import 'package:flutter/material.dart';
import 'package:login_app/Pages/signup.dart';
import 'package:firebase_auth/firebase_auth.dart'; // Import Firebase Auth


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final FirebaseAuth _auth = FirebaseAuth.instance;

  Future<void> _login() async {
  final String email = _emailController.text.trim();
  final String password = _passwordController.text.trim();

  if (email.isEmpty || password.isEmpty) {
    _showError("Please fill all fields");
    return;
  }

  try {
    // Try signing in the user with the email and password
    UserCredential userCredential = await _auth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );

    // If login is successful, navigate to the home page or dashboard
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Welcome back: ${userCredential.user?.email}')),
    );
    // Navigate to home page or dashboard (example)
    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomePage()));

  } on FirebaseAuthException catch (e) {
    // Handle specific errors based on the error code
    if (e.code == 'user-not-found') {
      _showError("No user found for that email.");
    } else if (e.code == 'wrong-password') {
      _showError("Incorrect password provided.");
    } else {
      _showError("An error occurred: ${e.message}");
    }
  } catch (e) {
    // General error handler
    _showError("An unexpected error occurred.");
  }
}

void _showError(String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(message)),
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30),
          child: ListView(
          children: [
            Center(
              child: Container(
                width: 352,
                height: 330,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/login.png')
                    )
                ),
              ),
            ),
            const SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.only(bottom: 25),
              child: CustomTextFormField(
                label: 'Email',
                controller: _emailController,
              ),
            ),
            CustomTextFormField(
              label: 'Password',
              isPassword: true,
              controller: _passwordController,
            ),
            const Padding(
              padding: EdgeInsets.only(top:7, bottom:24 ),
              child: Align(alignment: 
                Alignment.centerRight,
                child: Text(
                  'Lupa password ?'
                ),
              ),
            ),
            SizedBox(
              height: 52,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)
                    ),
                  backgroundColor: const Color(0xff3498DB)
                ),
                onPressed: _login,
                child: const Text(
                  'Masuk',
                  style: TextStyle(
                    color: Colors.white
                  ),
                  )
              ),
            ),
            const SizedBox(height: 40),
            const Row(
              children: [
                Expanded(child: Divider(
                  color: Color(0xffC0C0C0),
                  height: 3,
                )
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  'Atau masuk menggunakan',
                  style: TextStyle(
                    color: Color(0xffC0C0C0)
                    ),
                  ),
              ),
               Expanded(child: Divider(
                  color: Color(0xffC0C0C0),
                  height: 3,
                )
              )
              ],
            ),
            const SizedBox(height: 40,),
            SizedBox(
              height: 52,
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(8)
                    ),
                  backgroundColor: Colors.white
                ),
                onPressed: () {},
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width:33,
                      height: 33,
                      decoration: const BoxDecoration(
                        image: DecorationImage(image:
                        AssetImage('assets/icons/google.png'))
                      ),
                    ),
                     const Text(
                  'Google',
                  style: TextStyle(
                    color: Colors.red
                  ),
                  ),
                  const SizedBox()
                  ],
                )
              ),
            ),
            const SizedBox(height: 49),
            Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Belum punya akun? '),
              GestureDetector(
                onTap: () {
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const SignupPage()),
              );
            },
            child: const Text(
            'Mendaftar ',
            style: TextStyle(color: Color(0xff3498DB), // Set the desired color for "Mendaftar"
            ),
          ),
        ),
    const Text('sekarang'),
    ],
)

          ],
        ),
      ))
    );
  }
}

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    required this.label,
    this.controller, // Add controller to the constructor
    this.isPassword = false,
  });

  final String label;
  final TextEditingController? controller; // controller type here
  final bool isPassword;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller, // Pass controller here
      obscureText: isPassword ? true : false,
      decoration: InputDecoration(
        label: Text(
          label,
          style: const TextStyle(color: Color(0xffC0C0C0)),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Color(0xffC0C0C0)),
        ),
        suffixIcon: isPassword
            ? IconButton(
                icon: Icon(
                  Icons.visibility_off,
                  color: Colors.grey,
                ),
                onPressed: () {
                  // Handle visibility toggle
                },
              )
            : null,
      ),
    );
  }
}
