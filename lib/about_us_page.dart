import 'package:flutter/material.dart';
import 'app.dart'; // Import ShrineApp

class AboutUsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Me'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 85, 203, 224),
              Color.fromARGB(255, 183, 222, 228)
            ], // Warna ungu ke pink
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundColor: Color.fromARGB(
                    255, 223, 218, 218), // Warna latar belakang avatar
                child: Icon(
                  Icons.person,
                  size: 80,
                  color: Colors.white, // Warna ikon
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Afyar Siti Ababil',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.normal,
                  color: Color.fromARGB(
                      255, 60, 60, 60), // Ubah warna teks menjadi putih
                  fontFamily: 'Montserrat',
                ),
              ),
              Text(
                '221511037',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(
                      255, 60, 60, 60), // Ubah warna teks menjadi putih
                  fontFamily: 'Montserrat',
                ),
              ),
              Text(
                '2B',
                style: TextStyle(
                  fontSize: 16,
                  color: Color.fromARGB(
                      255, 60, 60, 60), // Ubah warna teks menjadi putih
                  fontFamily: 'Montserrat',
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigate to ShrineApp when button is pressed
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => ShrineApp()),
                  );
                },
                child: Text(
                  'Masuk Aplikasi',
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.email,
                    color: Color.fromARGB(255, 60, 60, 60),
                  ),
                  SizedBox(width: 5),
                  Text(
                    'afyar.siti.tif22@polban.ac.id',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color.fromARGB(
                          255, 60, 60, 60), // Ubah warna teks menjadi putih
                      fontFamily: 'Montserrat',
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(const ShrineApp());
}
