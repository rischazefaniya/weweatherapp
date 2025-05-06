import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  List<Map<String, String>> generateForecastDays() {
    List<Map<String, String>> forecastDays = [];
    DateTime now = DateTime.now();

    for (int i = 0; i < 10; i++) {
      DateTime futureDate = now.add(Duration(days: i));
      String dayName = DateFormat('EEEE', 'id_ID').format(futureDate);
      forecastDays.add({"day": dayName, "icon": "assets/images/cloud.png"});
    }
    return forecastDays;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("We-Weather"),
        backgroundColor: Color.fromRGBO(142, 172, 205, 1),
      ),
      backgroundColor: Color.fromRGBO(210, 224, 251, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Align(
            alignment: Alignment.topLeft,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Telkom University",
                  style: TextStyle(
                    fontSize: 30,
                    color: Color.fromRGBO(166, 110, 56, 1),
                  ),
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "27°C",
                      style: TextStyle(
                        fontSize: 90,
                        color: Color.fromRGBO(166, 110, 56, 1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: Image(
                          height: 120,
                          image: AssetImage("assets/images/sun.png")),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Mostly Cloudy",
                  style: TextStyle(
                      fontSize: 18,
                      color: Color.fromRGBO(166, 110, 56, 1),
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Humidity",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "78%",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Pressure",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "992.31 nPa",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Rainfall",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "78%",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Wind Speed",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "80 km/h",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Wind Direction",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "North West",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 50,
                      width: 100,
                      decoration: BoxDecoration(
                          color: Color.fromRGBO(142, 172, 205, 1),
                          borderRadius: BorderRadius.circular(16)),
                      child: Column(
                        children: [
                          Text(
                            "Light",
                            style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 5, bottom: 6),
                            child: Text(
                              "2754 lux",
                              style: TextStyle(
                                  color: Color.fromRGBO(255, 255, 255, 1),
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  "Hourly",
                  style: TextStyle(
                      color: Color.fromRGBO(166, 110, 56, 1),
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 120,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(142, 172, 205, 1),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 24,
                  itemBuilder: (context, index) {
                    DateTime date = DateTime.now().add(Duration(hours: index));
                    String formattedHour = DateFormat.Hm('id_ID').format(date);

                    return Padding(
                      padding: const EdgeInsets.all(15),
                      child: Column(
                        children: [
                          Text(
                            formattedHour,
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(255, 255, 255, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Image(
                            height: 40,
                            image: AssetImage("assets/images/cloud.png"),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 6),
                            child: Text(
                              "30°",
                              style: TextStyle(
                                fontSize: 15,
                                color: Color.fromRGBO(166, 110, 56, 1),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text(
                  "10 Days",
                  style: TextStyle(
                    color: Color.fromRGBO(166, 110, 56, 1),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  height: 235,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(142, 172, 205, 1),
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: List.generate(
                        10,
                        (index) {
                          DateTime date =
                              DateTime.now().add(Duration(days: index));
                          String formattedDate =
                              DateFormat('EEEE', 'id_ID').format(date);

                          return Padding(
                            padding: EdgeInsets.symmetric(
                                vertical: 10.0, horizontal: 10),
                            child: Row(
                              children: [
                                Text(
                                  formattedDate,
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 45),
                                  child: Image(
                                    height: 30,
                                    image:
                                        AssetImage("assets/images/sunny.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 40),
                                  child: Image(
                                    height: 30,
                                    image: AssetImage("assets/images/humi.png"),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "50%",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 50),
                                  child: Text(
                                    "27/30",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
