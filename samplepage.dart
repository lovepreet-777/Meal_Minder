import 'package:flutter/material.dart';



class HomePage extends StatelessWidget{
  @override
 Widget build(BuildContext context) {
    return Scaffold(
     
        body: Center(
         child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Are you coming for today\'s meal?',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('Yes'),
              style: ElevatedButton.styleFrom(
                primary: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {},
              child: Text('No'),
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
          ],
        ),
      ),
    );
}
}

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Us'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Text(
                'Feel free to contact us if you have any questions or feedback.',
                style: TextStyle(fontSize: 16.0),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Name',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Email',
                ),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                decoration: InputDecoration(
                  labelText: 'Message',
                ),
              ),
              SizedBox(height: 16.0),
              ElevatedButton(
                onPressed: () {},
                child: Text('Send'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blue,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the profile data from somewhere.
    // For example, you could get it from a database or from a JSON file.
    String name = 'Lovepreet Singh';
    String email = 'lovepreet.singh@igl.co.in';
    String profilePicture = 'https://example.com/profile-picture.jpg';
    String coverPhoto = 'https://example.com/cover-photo.jpg';

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Cover photo.
              Image.network(coverPhoto),
              SizedBox(height: 16.0),

              // Profile picture.
              CircleAvatar(
                backgroundImage: NetworkImage(profilePicture),
                radius: 50.0,
              ),
              SizedBox(height: 16.0),

              // Profile name.
              Text(
                name,
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 16.0),

              // Profile email.
              Text(email),
              SizedBox(height: 16.0),

              // Bio.
              Text(
                'I am a software engineer with a passion for building beautiful and user-friendly applications.',
              ),
              SizedBox(height: 16.0),

              // Skills and experience.
              Text('Monthly Attendance'),
              SizedBox(height: 16.0),
              ListView(
                shrinkWrap: true,
                children: [
                  Text('.....'),
                  
                ],
              ),
              SizedBox(height: 16.0),

              // Hobbies and interests.
              Text('Pending charges'),
              SizedBox(height: 16.0),
              ListView(
                shrinkWrap: true,
                children: [
                  Text('Rs. 2343'),
                 
                ],
              ),
              SizedBox(height: 16.0),

              // Social media links.
              Text('Other information'),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: Icon(Icons.restaurant_menu_sharp),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.lunch_dining),
                    onPressed: () {},
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

