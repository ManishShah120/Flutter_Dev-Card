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
        backgroundColor: Colors.grey[500],
        body: SafeArea(
          child: Column(
            //To align everything which is inside the container
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              CircleAvatar(
                radius: 60,
                backgroundColor: Colors.white,
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
                  fontFamily: 'Source Sans Pro',
                  fontSize: 12.0,
                  color: Colors.lightBlue[100],
                  letterSpacing: 1.8,
                  fontWeight: FontWeight.bold,
                ),
              ), //Flutter developer
              SizedBox(
                height: 20.0,
                width: 250.0,
                child: Divider(
                  color: Colors.white,
                ),
              ), //Height
              Card(
                color: Colors.blueGrey[200],
                //To resize this container
                margin: EdgeInsets.symmetric(
                  vertical: 1.0,
                  horizontal: 10.0,
                ),
                //There's no padding property in "Card" but if you are using "Container" then you can use
                //padding: EdgeInsets.all(10.0),

                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    launch("tel://+91 9876543210");
                  },
                  child: Padding(
                      padding: EdgeInsets.all(
                        7.0,
                      ),
                      child: ListTile(
                        leading: Icon(
                          Icons.phone,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        title: Text(
                          '+91 9876543210',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Lobster',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      )),
                ),
              ), //Phone Number
              Card(
                color: Colors.blueGrey[200],
                //To resize this container and give spaces for all the container
                margin: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 10.0,
                ),
                //There's no padding property in "Card" but if you are using "Container" then you can use
                //padding: EdgeInsets.all(10.0),
                child: InkWell(
                  splashColor: Colors.blue.withAlpha(30),
                  onTap: () {
                    launch(
                        'mailto:mkshah141@gmail.com?subject=Great Work&body=I visited your App!');
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(7.0),
                      child: ListTile(
                        leading: Icon(
                          Icons.email,
                          color: Colors.black,
                          size: 30.0,
                        ),
                        title: Text(
                          'mkshah141@gmail.com',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Source Sans Pro',
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                          ),
                        ),
                      )),
                ),
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
      forceSafariVC: false,
      forceWebView: false,
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
      forceSafariVC: false,
      forceWebView: false,
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
      forceSafariVC: false,
      forceWebView: false,
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
      forceSafariVC: false,
      forceWebView: false,
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
      forceSafariVC: false,
      forceWebView: false,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $url';
  }
}

_launchWhatsAppURL() async {
  String phoneNumber = '+91 XXXXX XXXXX';
  String message = 'Hello from Flutter';
  var whatsappUrl = "whatsapp://send?phone=$phoneNumber&text=$message";
  if (await canLaunch(whatsappUrl)) {
    await launch(
      whatsappUrl,
//      forceSafariVC: true,
//      forceWebView: true,
      enableJavaScript: true,
    );
  } else {
    throw 'Could not launch $whatsappUrl';
  }
}
