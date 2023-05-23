import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 243, 246, 255),
        appBar: AppBar(
          leading: const Padding(
            padding: EdgeInsets.only(left: 38),
            child: Icon(
              Icons.menu,
              color: Colors.black54,
            ),
          ),
          backgroundColor: Color.fromARGB(255, 243, 246, 255),
          elevation: 0,
          actions: const [
            Padding(
              padding: EdgeInsets.only(right: 38),
              child: Icon(
                Icons.date_range_outlined,
                color: Colors.black54,
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8, bottom: 24),
                        child: Text(
                          'Dr. Strange',
                          style: TextStyle(
                            fontSize: 40,
                            color: Colors.black87,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              Container(
                height: 100,
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 46, 137, 255),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 32, right: 32, top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Appointment Request',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.white,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 10.0),
                                child: Row(
                                  children: const [
                                    Icon(
                                      Icons.access_time_filled_rounded,
                                      color: Colors.white,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        '12 Jan 2023, 8am - 10am',
                                        style: TextStyle(
                                          fontSize: 18,
                                          color: Colors.white,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Column(
                          children: const [
                            Icon(
                              Icons.circle_rounded,
                              size: 5.0,
                              color: Colors.white,
                            ),
                            SizedBox(
                              height: 4,
                            ),
                            Icon(
                              Icons.circle_rounded,
                              size: 5.0,
                              color: Colors.white,
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: 170,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      offset: const Offset(0, 10),
                      blurRadius: 8,
                      spreadRadius: -7,
                    ),
                  ],
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Column(
                          children: [
                            ListTile(
                              leading: ClipRRect(
                                borderRadius: BorderRadius.circular(15.0),
                                child: Image.asset(
                                  'assets/photo1.jpg',
                                ),
                              ),
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('Luis M.'),
                                  Text('Diaz Arias'),
                                ],
                              ),
                              trailing: Icon(Icons.info_outline_rounded),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 2,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                                backgroundColor:
                                    const Color.fromARGB(255, 37, 111, 255),
                              ),
                              child: const Text('ACCEPT'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            flex: 1,
                            child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                elevation: 0,
                                foregroundColor: Colors.blueGrey,
                                backgroundColor:
                                    const Color.fromARGB(255, 235, 239, 250),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                ),
                              ),
                              child: const Text('DECLINE'),
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32, bottom: 24),
                child: Row(
                  children: const [
                    Text(
                      'Next appointments',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
              Column(
                children: [
                  Container(
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/photo2.jpg',
                              width: 45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 32),
                            child: Stack(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                        title: const Text('Bart Simpson'),
                        subtitle: const Text('9 Jan 2023, 8am - 10am'),
                        trailing: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/photo4.jpg',
                              width: 45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 32),
                            child: Stack(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.greenAccent,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                        title: const Text('Tony Stark'),
                        subtitle: const Text('19 Jan 2023, 10am - 11am'),
                        trailing: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 90,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: ListTile(
                        leading: Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15.0),
                            child: Image.asset(
                              'assets/photo3.jpg',
                              width: 45,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 35, top: 32),
                            child: Stack(
                              children: [
                                Container(
                                  width: 14,
                                  height: 14,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(30.0),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(2.0),
                                  child: Container(
                                    width: 10,
                                    height: 10,
                                    decoration: const BoxDecoration(
                                      color: Colors.red,
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(30.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
                        ]),
                        title: const Text('Bruno Diaz'),
                        subtitle: const Text('21 Jan 2023, 7am - 18am'),
                        trailing: Padding(
                          padding: const EdgeInsets.all(20),
                          child: Column(
                            children: const [
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                              SizedBox(
                                height: 4,
                              ),
                              Icon(
                                Icons.circle_rounded,
                                size: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ),
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
