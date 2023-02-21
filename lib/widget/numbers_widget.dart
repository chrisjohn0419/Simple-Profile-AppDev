import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher_string.dart';

class NumbersWidget extends StatefulWidget {
  const NumbersWidget({Key? key}) : super(key: key);

  @override
  State<NumbersWidget> createState() => _NumbersWidgetState();
}

class _NumbersWidgetState extends State<NumbersWidget> {

  _fblaunchurl() async{
    var fburl = "https://www.facebook.com/johnchristian.losbanos";
    if(await canLaunchUrlString(fburl)){
      await launchUrlString(fburl);
    }
    else{
      throw "could not launch url";
    }
  }
  _inslaunchurl() async{
    var insta = "https://www.instagram.com/johnchristianlosbanos/";
    if(await canLaunchUrlString(insta)){
      await launchUrlString(insta);
    }
    else{
      throw "could not launch url";
    }
  }
  _gitlaunchurl() async{
    var git = "https://github.com/chrisjohn0419";
    if(await canLaunchUrlString(git)){
      await launchUrlString(git);
    }
    else{
      throw "could not launch url";
    }
  }

  @override
  Widget build(BuildContext context) => Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child:  IconButton(onPressed: _fblaunchurl ,
            icon: const Icon(
              FontAwesomeIcons.facebook,
              size: 20,
            ),
          ),
        ),
      ),
      buildDivider(),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child:  IconButton(onPressed: _inslaunchurl ,
            icon: const Icon(
              FontAwesomeIcons.instagram,
              size: 20,
            ),
          ),
        ),
      ),
      buildDivider(),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          color: Colors.white,
          child:  IconButton(onPressed: _gitlaunchurl ,
            icon: const Icon(
              FontAwesomeIcons.github,
              size: 20,
            ),
          ),
        ),
      ),
    ],
  );
  Widget buildDivider() => const SizedBox(
    height: 24,
    child: VerticalDivider(),
  );

  Widget buildButton(BuildContext context, String value, String text) =>
      MaterialButton(
        padding: const EdgeInsets.symmetric(vertical: 4),
        onPressed: () {},
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Text(
              value,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
            const SizedBox(height: 2),
            Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ],
        ),
      );
}
