import 'package:doctor_mohammed_clinic/components/test1.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final TextEditingController _controller = TextEditingController();

  int _myIndex = 0;
  List<Widget> pages = [
    Placeholder(),
    Placeholder(),
    Placeholder(),
    Placeholder(),
  ];
  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {}); // rebuild to toggle clear icon
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 80,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Hi Mohammed!",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                      WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(left: 4),
                          child: Text('👋', style: TextStyle(fontSize: 18)),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  "How's Your Health!",
                  style: TextStyle(fontSize: 14, color: Colors.grey[700]),
                ),
              ],
            ),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage("assets/person.jpeg"),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 16, right: 16),
              child: TextField(
                controller: _controller,
                decoration: InputDecoration(
                  hintText: 'Search for doctor',
                  prefixIcon: Icon(Icons.search, color: Colors.grey),
                  suffixIcon:
                      _controller.text.isNotEmpty
                          ? GestureDetector(
                            onTap: () {
                              _controller.clear();
                              setState(() {});
                            },
                            child: Icon(Icons.clear, color: Colors.grey),
                          )
                          : null,
                  filled: true,
                  fillColor: Color(0xFFF5F6FA),
                  contentPadding: EdgeInsets.symmetric(vertical: 14),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 20,
                    bottom: 30,
                    right: 20,
                  ),
                  child: Text(
                    "Popular doctors near you",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 30,
                    left: 60,
                    bottom: 30,
                    right: 10,
                  ),
                  child: TextButton(
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                            "No thing else to show",
                            style: TextStyle(
                              color: Colors.white70,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              shadows: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 17, 153, 135),
                                  offset: Offset(0, 2),
                                ),
                              ],
                            ),
                          ),
                          backgroundColor: Color.fromARGB(255, 102, 156, 48),
                          duration: Duration(seconds: 3),
                          behavior: SnackBarBehavior.floating,
                        ),
                      );
                    },
                    child: Text(
                      "View All",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                SizedBox(height: 20, width: 16),
                Container(
                  width: 172,
                  height: 220,
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0,2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage(
                          "assets/MohammedNour_Master_Of_Flutter.png",
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Dr.Mohammed Nour",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Heart Specialist",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 20),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Test1()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_right_rounded,
                          size: 32,
                          color: const Color.fromARGB(255, 10, 141, 21),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20, width: 16),
                Container(
                  width: 172,
                  height: 220,
                  margin: EdgeInsets.only(top: 0),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 8,
                        offset: Offset(0,2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      SizedBox(height: 5),
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("assets/person.jpeg"),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Dr.Mohammed Edo",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                      Text(
                        "Eye Specialist",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w300,
                          fontSize: 12,
                        ),
                      ),
                      Row(
                        children: [
                          SizedBox(width: 20),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(Icons.star, size: 16, color: Colors.yellow[600]),
                          SizedBox(width: 5),
                          Icon(
                            Icons.star_half,
                            size: 16,
                            color: Colors.yellow[600],
                          ),
                          SizedBox(width: 20),
                        ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Test1()),
                          );
                        },
                        icon: Icon(
                          Icons.arrow_circle_right_rounded,
                          size: 32,
                          color: const Color.fromARGB(255, 10, 141, 21),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                SizedBox(height: 20),
                Row(
                  children: [
                    SizedBox(width: 18),
                    Container(
                      width: 172,
                      height: 220,
                      margin: EdgeInsets.only(left: 0),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0,2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/person.jpeg"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Dr.Janie Cooper",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Dental Specialist",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star_half,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Test1(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_circle_right_rounded,
                              size: 32,
                              color: const Color.fromARGB(255, 10, 141, 21),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 13),
                    Container(
                      width: 172,
                      height: 220,
                      margin: EdgeInsets.only(top: 0),
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 8,
                            offset: Offset(0,2),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          SizedBox(height: 5),
                          CircleAvatar(
                            radius: 30,
                            backgroundImage: AssetImage("assets/person.jpeg"),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Dr.Amy Adams",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          Text(
                            "Lung Specialist",
                            style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.w300,
                              fontSize: 12,
                            ),
                          ),
                          Row(
                            children: [
                              SizedBox(width: 20),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 5),
                              Icon(
                                Icons.star_half,
                                size: 16,
                                color: Colors.yellow[600],
                              ),
                              SizedBox(width: 20),
                            ],
                          ),
                          IconButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Test1(),
                                ),
                              );
                            },
                            icon: Icon(
                              Icons.arrow_circle_right_rounded,
                              size: 32,
                              color: const Color.fromARGB(255, 10, 141, 21),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          labelTextStyle: WidgetStateProperty.resolveWith((states) {
            if (states.contains(WidgetState.selected)) {
              return TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              );
            }
            return TextStyle(color: Colors.white70);
          }),
        ),
        child: NavigationBar(
          backgroundColor: Color.fromARGB(255, 11, 100, 18),
          indicatorColor: Color.fromARGB(255, 128, 255, 0),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          destinations: [
            NavigationDestination(
              icon: Icon(Icons.home_outlined, color: Colors.white70, size: 27),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.assignment_outlined,
                color: Colors.white70,
                size: 27,
              ),
              label: "Log",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.notifications_outlined,
                color: Colors.white70,
                size: 27,
              ),
              label: "Notifications",
            ),
            NavigationDestination(
              icon: Icon(
                Icons.dashboard_outlined,
                color: Colors.white70,
                size: 27,
              ),
              label: "Category",
            ),
          ],
          selectedIndex: _myIndex,
          onDestinationSelected: (int value) {
            setState(() {
              _myIndex = value;
            });
          },
        ),
      ),
    );
  }
}
