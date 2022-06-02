import 'package:ch04_home_account/register.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(30, 50, 30, 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Image.asset('assets/images/logo.png', width: 100),
            const Text('บัญชีครัวเรือน', style: TextStyle(fontSize: 24)),
            Text('ระบบบริหารจัดการข้อมูลบัญชีครัวเรือน',
                style: TextStyle(fontSize: 12)),
            Text('มหาวิทยาลัยราชภัฏอุบลราชธานี',
                style: TextStyle(fontSize: 12)),
            SizedBox(height: 20),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Username',
                icon: Icon(Icons.person),
              ),
              keyboardType: TextInputType.emailAddress,
            ),
            TextField(
              textAlign: TextAlign.center,
              decoration: InputDecoration(
                labelText: 'Password',
                icon: Icon(Icons.vpn_key),
              ),
              obscureText: true,
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {},
                  child: Text('Login'),
                  style: ElevatedButton.styleFrom(fixedSize: Size(120, 30)),
                ),
                SizedBox(width: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const RegisterPage()));
                  },
                  child: Text('Register'),
                  style: ElevatedButton.styleFrom(
                      fixedSize: Size(120, 30), primary: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
