import 'package:flutter/material.dart';
import 'package:weweatherapp/widget/circularButton.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(210, 224, 251, 1),
      body: _weWeather(),
    );
  }

  Widget _weWeather() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/cloudy.png",
            height: 250,
            width: 250,
            fit: BoxFit.contain,
          ),
          Text(
            "We-Weather",
            style: TextStyle(
                color: Color.fromRGBO(18, 6, 254, 1),
                fontSize: 30,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            child: CircularButton(text: "Get Started"),
          )
        ],
      ),
    );
  }
}
