import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.orange[200],
        body: SafeArea(
          child: Column(
            //To align everything which is inside the container
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.redAccent,
                backgroundImage: AssetImage('images/myself.jpg'),
              ), //image
              Text('Manish Kumar Shah',
                  style: TextStyle(
                    fontFamily: 'Lobster',
                    fontSize: 20.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  )), //Name
              Text(
                'FLUTTER DEVELOPER',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  fontSize: 12.0,
                  color: Colors.indigo[900],
                  letterSpacing: 1.8,
                  fontWeight: FontWeight.bold,
                ),
              ), //Flutter developer
              SizedBox(
                height: 25.0,
                width: 200.0,
                child: Divider(
                  color: Colors.lightBlueAccent,
                ),
              ), //Height
              Card(
                color: Colors.white,
                //To resize this container
                margin: EdgeInsets.symmetric(
                  vertical: 1.0,
                  horizontal: 10.0,
                ),
                //There's no padding property in "Card" but if you are using "Container" then you can use
                //padding: EdgeInsets.all(10.0),
                child: Padding(
                    padding: EdgeInsets.all(
                      7.0,
                    ),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.teal[500],
                        size: 30.0,
                      ),
                      title: Text(
                        '+91 9876543211',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Lobster',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    )),
              ), //Phone Number
              Card(
                color: Colors.white,
                //To resize this container and give spaces for all the container
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                //There's no padding property in "Card" but if you are using "Container" then you can use
                //padding: EdgeInsets.all(10.0),
                child: Padding(
                    padding: const EdgeInsets.all(7.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.teal[500],
                        size: 30.0,
                      ),
                      title: Text(
                        'mkshah141@gmail.com',
                        style: TextStyle(
                          color: Colors.black,
                          fontFamily: 'Source Sans Pro',
                          fontWeight: FontWeight.bold,
                          fontSize: 18.0,
                        ),
                      ),
                    )),
              ), //Email
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchLinkedInURL();
                      },
                      child: Image.asset('images/LinkedInIcon.png'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchGitHubURL();
                      },
                      child: Image.asset('images/GitHubIcon.png'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchWebsiteURL();
                      },
                      child: Image.asset('images/WebsiteIcon.png'),
                    ),
                  ),
                ],
              ), //LinedIn,GitHub,Website
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchTwitterURL();
                      },
                      child: Image.asset('images/TwitterIcon.png'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchFacebookURL();
                      },
                      child: Image.asset('images/FacebookIcon.png'),
                    ),
                  ),
                  Expanded(
                    child: FlatButton(
                      onPressed: () {
                        _launchWhatsAppURL();
                      },
                      child: Image.asset('images/WhatsAppIcon.png'),
                    ),
                  ),
                ],
              ), //Twitter,Facebook,WhatsApp
            ],
          ),
        ),
      ),
    );
  }
}

_launchLinkedInURL() async {
  const url = 'https://www.linkedin.com/in/manishshah120/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchGitHubURL() async {
  const url = 'https://github.com/ManishShah120';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchWebsiteURL() async {
  const url = 'http://manishshah120.rf.gd/';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchTwitterURL() async {
  const url = 'https://twitter.com/ManishShah120';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchFacebookURL() async {
  const url = 'https://www.facebook.com/ManishShah120';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchWhatsAppURL() async {
  const url = 'https://www.facebook.com/ManishShah120';
  if (await canLaunch(url)) {
    await launch(
      url,
      forceSafariVC: true,
      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}