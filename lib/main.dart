import 'package:flutter/material.dart';
import 'MissionButtonContent.dart'; // Import the MissionButtonContent widget
import 'MissionList.dart';
import 'feed_page.dart';

void main() {
  runApp(EcoTipsApp());
}

class EcoTipsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'EcoTips',
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: SignupPage(), // Start with the signup page
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(
        child: Text('Welcome to the Home Page!'),
      ),
    );
  }
}

class SignupPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement signup logic here
              },
              child: Text('Sign Up'),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );
              },
              child: Text('Already have an account? Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => EcoTipsHomePage()),
                );
              },
              child: Text('Continue as Passenger'),
            ),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(labelText: 'Password'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Implement login logic here
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupPage()),
                );
              },
              child: Text('Don\'t have an account? Sign up'),
            ),
          ],
        ),
      ),
    );
  }
}

class EcoTipsHomePage extends StatefulWidget {
  @override
  _EcoTipsHomePageState createState() => _EcoTipsHomePageState();
}

class _EcoTipsHomePageState extends State<EcoTipsHomePage> {
  int missionCount = 0;

  void completeMission() {
    setState(() {
      missionCount++;
    });
  }

  void showAllMissions(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MissionList(itemCount: 100)),
    );
  }

  void navigateToFeedbackPage(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => FeedbackForm()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('EcoTips'),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                'Welcome to EcoTips!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Explore eco-friendly tips and contribute to a greener planet.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
              child: Text('About Us'),
            ),
            SizedBox(height: 20),
            Text(
              'Methods of EcoTips:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            MethodItem(
              title: 'Save Water',
              description:
                  'Turn off the tap while brushing your teeth and take shorter showers to save water.',
            ),
            MethodItem(
              title: 'Reduce Energy Consumption',
              description:
                  'Switch off lights and unplug electronics when not in use to reduce energy consumption.',
            ),
            MethodItem(
              title: 'Recycle',
              description:
                  'Recycle paper, plastic, glass, and metal to reduce waste and conserve resources.',
            ),
            SizedBox(height: 20),
            Text(
              'Contribute to EcoTips:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 10),
            Text(
              'You can contribute to EcoTips by providing eco-friendly tips, participating in community events, and sharing your accomplishments with others.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => CommunitySharingPage()),
                );
              },
              child: Text('Community Sharing'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showAllMissions(context); // Call function to show all missions
              },
              child: Text('Show All Missions'),
            ),
            SizedBox(height: 20),
            MissionButtonContent(
              missionCount: missionCount,
              onCompleteMission: completeMission,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                navigateToFeedbackPage(context); // Navigate to FeedbackPage
              },
              child: Text('Feedback'),
            ),
          ],
        ),
      ),
    );
  }
}

// AboutPage and MethodItem remain unchanged

class AboutPage extends StatefulWidget {
  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    )..repeat(reverse: true);
    _colorAnimation =
        ColorTween(begin: Colors.green, end: Colors.blue).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: AnimatedBuilder(
        animation: _controller,
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [_colorAnimation.value ?? Colors.green, Colors.white],
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About EcoTips',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'EcoTips is an app dedicated to promoting eco-friendly living and sustainability. We provide users with a comprehensive collection of tips and suggestions to help them reduce their environmental footprint and contribute to a greener planet.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Our Mission',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Our mission is to educate and inspire individuals to adopt eco-conscious habits in their daily lives. By making small changes, we believe that everyone can make a positive impact on the environment and work towards a more sustainable future.',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class FeedbackForm extends StatefulWidget {
  @override
  _FeedbackFormState createState() => _FeedbackFormState();
}

class _FeedbackFormState extends State<FeedbackForm> {
  int _rating = 0;
  String _feedbackText = '';

  void _setRating(int rating) {
    setState(() {
      _rating = rating;
    });
  }

  void _submitFeedback() {
    // TODO: Implement sending feedback to backend or storage
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Feedback Sent'),
          content: Text(
              'Thank you for your feedback! We will update our service accordingly.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Feedback Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Please provide your feedback:',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Rate our service:',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 10),
            Row(
              children: List.generate(5, (index) {
                return IconButton(
                  onPressed: () {
                    _setRating(index + 1);
                  },
                  icon: Icon(
                    index < _rating ? Icons.star : Icons.star_border,
                    color: Colors.orange,
                  ),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            TextField(
              onChanged: (value) {
                _feedbackText = value;
              },
              decoration: InputDecoration(
                hintText: 'Enter your feedback',
                border: OutlineInputBorder(),
              ),
              maxLines: 4,
            ),
            SizedBox(height: 10), // Added SizedBox here
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    _submitFeedback();
                  },
                  child: Text('Submit Feedback'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class CommunitySharingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Sharing'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton.icon(
                  onPressed: () {
                    // Navigate to a page to share mission completion
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ShareMissionPage()),
                    );
                  },
                  icon: Icon(Icons.add),
                  label: Text('Share Mission'),
                ),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                // Widgets to display shared content, activities, workshops, etc.
                // You can customize this part based on your requirements
                ListTile(
                  title: Text('Shared Content 1'),
                  subtitle: Text('Posted by User 1'),
                ),
                ListTile(
                  title: Text('Shared Content 2'),
                  subtitle: Text('Posted by User 2'),
                ),
                // Add more list tiles or widgets as needed
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class ShareMissionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Share Mission'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Select a Mission:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                // Use the MissionList widget to display missions
                MissionList(
                    itemCount: 10), // Example itemCount, adjust as needed
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to share selected mission
                  },
                  child: Text('Share'),
                ),
              ],
            ),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Workshop Poster:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Add the workshop poster widget here
                    Placeholder(
                      fallbackHeight: 200,
                      color: Colors.grey,
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Share Your Feelings:',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    // Add a text field for users to type their feelings
                    TextFormField(
                      decoration: InputDecoration(
                        labelText: 'Type your feelings here...',
                        border: OutlineInputBorder(),
                      ),
                      maxLines: 3, // Adjust the number of lines as needed
                    ),
                    SizedBox(height: 10),
                    // Add a button to post on the forum
                    ElevatedButton(
                      onPressed: () {
                        // Implement logic to post on the forum
                      },
                      child: Text('Post on Forum'),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
