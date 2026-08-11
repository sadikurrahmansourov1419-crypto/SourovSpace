import 'package:flutter/material.dart';

void main() {
  runApp(const SourovSpaceApp());
}

class SourovSpaceApp extends StatelessWidget {
  const SourovSpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SourovSpace',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LoginPage(),
    );
  }
}

// ১. লগইন পেজ ক্লাস
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _emailController =
      TextEditingController(text: 'sadikurrahmansourov1419@gmail.com');
  final TextEditingController _passwordController =
      TextEditingController(text: '@@##Sourovspace1919**66..');

  void _handleLogin(BuildContext context) {
    String email = _emailController.text.trim();
    String password = _passwordController.text.trim();

    if (email == 'sadikurrahmansourov1419@gmail.com' &&
        password == '@@##Sourovspace1919**66..') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeFeedPage()),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('ইমেইল বা পাসওয়ার্ড ভুল রয়েছে!')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'SourovSpace',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'আপনার নিজের সোশ্যাল দুনিয়া',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 40),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    labelText: 'ইমেইল বা ফোন নম্বর',
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'পাসওয়ার্ড',
                    filled: true,
                    fillColor: Colors.grey[100],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () => _handleLogin(context),
                    child: const Text(
                      'লগইন করুন',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

// ২. হোম ফিড পেজ
class HomeFeedPage extends StatelessWidget {
  const HomeFeedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'SourovSpace Feed',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.logout, color: Colors.white),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => const LoginPage()),
              );
            },
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      hintText: 'আপনার মনে কি চলছে, সৌরভ?',
                      border: InputBorder.none,
                    ),
                  ),
                  const Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.image, color: Colors.green),
                        label: const Text('ছবি/ভিডিও'),
                      ),
                      TextButton.icon(
                        onPressed: () {},
                        icon: const Icon(Icons.post_add, color: Colors.blue),
                        label: const Text('পোস্ট করুন'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.blue,
                        child: Text('S', style: TextStyle(color: Colors.white)),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'SourovSpace Admin',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  const Text('স্বাগতম আপনার নিজস্ব প্ল্যাটফর্ম SourovSpace-এ! 🚀'),
                  const SizedBox(height: 10),
                  Container(
                    height: 150,
                    width: double.infinity,
                    color: Colors.blue[50],
                    child: const Center(
                      child: Text('পোস্টের ছবি বা মিডিয়া এখানে থাকবে',
                          style: TextStyle(color: Colors.blue)),
                    ),
                  ),
                  const Divider(),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('👍 লাইক'),
                      Text('💬 কমেন্ট'),
                      Text('↗️ শেয়ার'),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
