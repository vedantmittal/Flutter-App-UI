// import 'dart:convert';
// import 'package:connectivity/connectivity.dart';
// import 'package:easylaze/login_bloc.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:http/http.dart' as http;

// class Login extends StatefulWidget {
//   @override
//   _LoginState createState() => _LoginState();
// }

// class _LoginState extends State<Login> {
//   bool _obscureText = true;
//   void _toggle() {
//     setState(() {
//       _obscureText = !_obscureText;
//     });
//   }

//   // TextEditingController _textFieldController = TextEditingController();
//   bool _isLoading = false;
//   // bool _isUpdateLoading = false;
//   final LoginBloc _inputProvider = LoginBloc.getInstance();
//   @override
//   void dispose() {
//     _inputProvider.number.outStream.drain();
//     _inputProvider.number.inStream(null);
//     _inputProvider.password.outStream.drain();
//     _inputProvider.password.inStream(null);
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: SingleChildScrollView(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: <Widget>[
//           SizedBox(height: 60),
//           Padding(
//             padding: const EdgeInsets.all(50),
//             // child: Icon(MdiIcons.dog, size: 200),
//             child: Image.asset(
//               "assets/images/icon.png",
//               height: 160,
//               // color: Colors.black,
//               // fit: BoxFit.cover,
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, right: 8),
//             child: StreamBuilder<String>(
//                 stream: _inputProvider.number.outStream,
//                 builder: (context, snapshot) {
//                   return Theme(
//                     data: ThemeData(primaryColor: Color(0xFF95c41f)),
//                     child: TextField(
//                       cursorColor: Colors.black,
//                       decoration: InputDecoration(
//                           labelText: "Registered Email or Number",
//                           hintText: "Enter Email or Number",
//                           contentPadding: EdgeInsets.symmetric(
//                               horizontal: 16, vertical: 16),
//                           errorText: (snapshot.data?.isEmpty ?? false)
//                               ? "User Name Required"
//                               : null,
//                           border: OutlineInputBorder(
//                               borderRadius: BorderRadius.circular(25))),
//                       onChanged: _inputProvider.number.inStream,
//                       keyboardType: TextInputType.text,
//                     ),
//                   );
//                 }),
//           ),
//           Padding(
//             padding: const EdgeInsets.only(left: 8.0, right: 8, top: 8),
//             child: StreamBuilder<String>(
//                 stream: _inputProvider.password.outStream,
//                 builder: (context, snapshot) {
//                   return Theme(
//                     data: ThemeData(primaryColor: Color(0xFF95c41f)),
//                     child: TextField(
//                       cursorColor: Colors.black,
//                       onChanged: _inputProvider.password.inStream,
//                       decoration: InputDecoration(
//                         border: OutlineInputBorder(
//                             borderRadius: BorderRadius.circular(25)),
//                         suffixIcon: Container(
//                           width: 48,
//                           child: RawMaterialButton(
//                             shape: CircleBorder(),
//                             child: Icon(
//                               _obscureText
//                                   ? Icons.visibility_off
//                                   : Icons.visibility,
//                               color: Colors.grey,
//                             ),
//                             onPressed: _toggle,
//                           ),
//                         ),
//                         labelText: "Registered Password",
//                         hintText: "Enter password",
//                         contentPadding:
//                             EdgeInsets.symmetric(horizontal: 16, vertical: 16),
//                         errorText: (snapshot.data?.isEmpty ?? false)
//                             ? "Password requireds"
//                             : ((snapshot.data?.length ?? 100) < 6 ?? false)
//                                 ? "your Password should be more than 6 characters"
//                                 : null,
//                       ),
//                       obscureText: _obscureText,
//                       maxLines: 1,
//                     ),
//                   );
//                 }),
//           ),
//           Container(
//             child: Align(
//               alignment: Alignment.centerRight,
//               child: FlatButton(
//                 child: Text(
//                   "Forgot Password",
//                   style: TextStyle(color: Color(0xFF95c41f)),
//                 ),
//                 onPressed: () {
//                   // showDialog(
//                   //     context: context,
//                   //     builder: (context) {
//                   //       return ForgotPasswordAlertBox();
//                   //     });
//                 },
//               ),
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: CupertinoButton(
//                 color: Color(0xFF95c41f),
//                 child:
//                     _isLoading ? CupertinoActivityIndicator() : Text("Login"),
//                 onPressed: _isLoading
//                     ? null
//                     : () async {
//                         var connect = await Connectivity().checkConnectivity();

//                         if (_inputProvider.isLoginDetailValidate() &&
//                             connect != ConnectivityResult.none) {
//                           http.Response response;
//                           setState(() {
//                             _isLoading = true;
//                           });
//                           response = await http.post("http://easy.itestbox.in/api/requestHandler.php", body: { // TODO:
//                             "GET_FEATURE": " ",
//                             "api_token":
//                                 "${_inputProvider.number.outStream?.value ?? ""}",
//                             "feature_detail":
//                                 "${_inputProvider.password.outStream?.value ?? ""}",
//                           });
//                           if (response.statusCode == 200) {
//                               print(response.body);
//                             Map responseMap = json.decode(response.body);
//                             if (!responseMap["error"]) {
//                               print(response.body);
//                               if (responseMap["result"] !=
//                                   "Error Try Again") {
//                                 // final user = UserDataModel.fromMap(
//                                 //     responseMap["result"]);
//                                 // if (user.userType == "Service Provider") {
//                                 //   // UserBloc().user.inStream(user);
//                                 //   // UserBloc().saveUser();
//                                 //   setState(() {
//                                 //     _isLoading = false;
//                                 //   });
//                                 //   Navigator.of(context).pushAndRemoveUntil(
//                                 //       MaterialPageRoute(
//                                 //           builder: (context) => Dashboard()),
//                                 //       (route) => false);
//                                 // } else {
//                                 //   setState(() {
//                                 //     _isLoading = false;
//                                 //   });
//                                 //   showDialog(
//                                 //       context: context,
//                                 //       builder: (context) => AlertDialog(
//                                 //             title: Text(
//                                 //               "Please use BP Customer App, thank you.",
//                                 //               style: TextStyle(
//                                 //                 fontWeight: FontWeight.bold,
//                                 //               ),
//                                 //             ),
//                                 //           ));
//                                 // }
//                               } else {
//                                 setState(() {
//                                   _isLoading = false;
//                                 });
//                                 showDialog(
//                                     context: context,
//                                     builder: (context) => AlertDialog(
//                                           title: Text(
//                                             "Please enter valid Username and Password",
//                                             style: TextStyle(
//                                                 fontWeight: FontWeight.bold,
//                                                 color: Colors.redAccent),
//                                           ),
//                                         ));
//                               }
//                             } else {
//                               setState(() {
//                                 _isLoading = false;
//                               });
//                               showDialog(
//                                   context: context,
//                                   builder: (context) => AlertDialog(
//                                         title: Text(
//                                           "Please enter valid Username and Password",
//                                           style: TextStyle(
//                                               fontWeight: FontWeight.bold,
//                                               color: Colors.redAccent),
//                                         ),
//                                       ));
//                             }
//                           }
//                         } else if (connect == ConnectivityResult.none) {
//                           showDialog(
//                               context: context,
//                               builder: (context) => AlertDialog(
//                                       title: Text(
//                                     "No internet !!!\nPlease check your connectivity",
//                                     style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Colors.redAccent),
//                                   )));
//                         }
//                       }),
//           ),
//           CupertinoButton(
//             child: Text(
//               "Register as a Partner",
//               style: TextStyle(
//                 color: Color(0xFF95c41f),
//               ),
//             ),
//             onPressed: () {
//               // showDialog(
//               //     context: context,
//               //     builder: (context) {
//               //       return SignupAlertBox();
//               //     });
//             },
//           ),
//         ],
//       ),
//     ));
//   }
// }
