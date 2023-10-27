// import 'package:flutter/material.dart';
// import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       theme: ThemeData(
//         primaryColor: Colors.purple,
//       ),
//       debugShowCheckedModeBanner: false,
//       home: LoginPage(),
//     );
//   }
// }

// class LoginPage extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   final _formKey = GlobalKey<FormState>();

//   // Login form fields
//   String _email = '';
//   String _password = '';

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Container(
//           height: MediaQuery.of(context).size.height,
//           width: MediaQuery.of(context).size.width,
//           decoration: BoxDecoration(
//             gradient: LinearGradient(
//               colors: [
//                 Color(0xFF8A2387),
//                 Color(0xFFE94057),
//                 Color(0xFFF27121),
//               ],
//             ),
//           ),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               SizedBox(height: 80),
//               Image.asset('assets/logo.png'), // Replace this with your app's logo
//               SizedBox(height: 40),
//               Form(
//                 key: _formKey,
//                 child: Column(
//                   children: [
//                     // Email text field
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Email',
//                         prefixIcon: Icon(Icons.email),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Email is required';
//                         }

//                         if (!RegExp(r'^[a-zA-Z0-9.!#$%&\'*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$')
//                             .hasMatch(value)) {
//                           return 'Invalid email address';
//                         }

//                         return null;
//                       },
//                       onSaved: (value) {
//                         _email = value!;
//                       },
//                     ),

//                     // Password text field
//                     TextFormField(
//                       decoration: InputDecoration(
//                         labelText: 'Password',
//                         prefixIcon: Icon(Icons.lock),
//                       ),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Password is required';
//                         }

//                         if (value.length < 8) {
//                           return 'Password must be at least 8 characters long';
//                         }

//                         return null;
//                       },
//                       onSaved: (value) {
//                         _password = value!;
//                       },
//                       obscureText: true,
//                     ),

//                     // Login button
//                     SizedBox(height: 40),
//                     ElevatedButton(
//                       onPressed: () {
//                         if (_formKey.currentState!.validate()) {
//                           // TODO: Implement login logic here
//                           // Redirecting to the main page
//                           Navigator.pushNamed(context, '/main');
//                         }
//                       },
//                       child: Text('Login'),
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
