import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
      ),
    );
  }
}


















// import 'package:flutter/material.dart';

// class register extends StatefulWidget {
//   @override
//   _registerState createState() => _registerState();
// }

// class _registerState extends State<register> {
//   var nameCtrl = TextEditingController();
//   var usernameCtrl = TextEditingController();
//   var passwordCtrl = TextEditingController();

//   Future<void> _regist() async {
//     String url = 'http://project-com-tech.ubru.ac.th/~egkarin/household/register.php';
//     var myReq = {};
//     myReq['name'] = nameCtrl.text;
//     myReq['user'] = usernameCtrl.text;
//     myReq["pass"] = passwordCtrl.text;
//     String jsonReq = jsonEncode(myReq);
//     var response = await http.post(url,
//         body: jsonReq,
//         headers: {HttpHeaders.contentTypeHeader: 'application/json'});
//     if (response.statusCode == 200) {
//       var msg = jsonDecode(response.body);
//       print(msg);
//       if (msg["status"] == "Success") {
//         print('Register success');
//         Navigator.pop(context);
//       } else {
//         print('format error');
//       }
//     } else {
//       print('Error');
//     }
//   }

//   Widget showName() {
//     return TextFormField(
//       textAlign: TextAlign.center,
//       controller: nameCtrl,
//       decoration: InputDecoration(
//         labelText: 'Name',
//         icon: Icon(Icons.mood),
//       ),
//     );
//   }

//   Widget showUsername() {
//     return TextFormField(
//       textAlign: TextAlign.center,
//       controller: usernameCtrl,
//       decoration: InputDecoration(
//         labelText: 'Username',
//         icon: Icon(Icons.person),
//       ),
//     );
//   }

//   Widget showPassword() {
//     return TextFormField(
//       textAlign: TextAlign.center,
//       controller: passwordCtrl,
//       decoration: InputDecoration(
//         labelText: 'Password',
//         icon: Icon(Icons.vpn_key),
//       ),
//     );
//   }

//   Widget showSubmit() {
//     return RaisedButton(
//       onPressed: () {
//         _regist();
//       },
//       child: Text('Submit'),
//       color: Colors.blue,
//     );
//   }

//   Widget showCancel() {
//     return RaisedButton(
//       onPressed: () {
//         print('cancel');
//         Navigator.pop(context);
//       },
//       child: Text('Cancel'),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register'),
//       ),
//       body: Container(
//         padding: EdgeInsets.all(25),
//         child: ListView(
//           children: <Widget>[
//             showName(),
//             showUsername(),
//             showPassword(),
//             Padding(padding: EdgeInsets.all(10)),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: <Widget>[
//                 showSubmit(),
//                 Padding(padding: EdgeInsets.all(10)),
//                 showCancel(),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

