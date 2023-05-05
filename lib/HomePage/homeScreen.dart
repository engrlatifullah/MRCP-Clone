import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';
import 'package:mrcp/HomePage/Search/search.dart';
import 'package:mrcp/HomePage/popmenueButton.dart';
import 'package:mrcp/HomePage/quiz/quizMainPage.dart';
import 'package:mrcp/HomePage/setting.dart';
import 'package:mrcp/HomePage/subject/subjectlist.dart';
import 'package:mrcp/HomePage/widget/costumeContainer.dart';
import 'package:mrcp/HomePage/widget/gridViewInsideItems.dart';

import 'Mock/MockHomeScreen.dart';
import 'Syllabus/addsyllabus.dart';
import 'Syllabus/syllabusMainPage.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Colour colour = Colour();
  List<String> item = ["Setting", "Tutorial"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "MRCP Passable",
          ),
          actions: [
            popMenuButton(),
          ],
        ),
        drawer: Drawer(
          child: Column(
            children: [
              ListTile(
                leading: Icon(
                  Icons.home,
                ),
                title: Text(
                  "Home",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.add_shopping_cart_rounded,
                ),
                title: Text(
                  "Subscription",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.supervisor_account_outlined,
                ),
                title: Text(
                  "Profile",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.quick_contacts_mail_rounded,
                ),
                title: Text(
                  "About",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.perm_device_info_sharp,
                ),
                title: Text(
                  "Disclaimer",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.policy_outlined,
                ),
                title: Text(
                  "Privacy Policy",
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.logout,
                ),
                title: Text(
                  "Logout",
                ),
              ),
            ],
          ),
        ),
        body: Column(
          children: [
            costumeContainer(
              height: 150,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  "No sufficient data available to calculate Exam Success Probability. You should complete at least 7 test ",
                  textAlign: TextAlign.center,
                  style: Colour().subTitle,
                ),
              ),
            ),
            // SizedBox(height: 10,),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, right: 25),
                  child: costumeContainer(
                    height: 80,
                    width: 330,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Programing Hub",
                          style: Colour().title,
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Trial User",
                          style: Colour().subTitle,
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12, top: 30),
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                      color: Colors.deepPurple, shape: BoxShape.circle),
                  child: Center(
                    child: Text(
                      "P",
                      style: Colour().title,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, mainAxisExtent: 120),
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return subjectList();
                        }));
                      });
                    },
                    child: costumContinerInsight(
                      icon: Icons.menu,
                      title: "Subjects",
                      subTitle: "Browse mcqs by\nsubjects and units",
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (_){
                          return Syllabus();
                        }));
                      });
                    },
                    child: costumContinerInsight(
                      icon: Icons.view_list_rounded,
                      title: "Syllabus",
                      subTitle: "Create your own\nsyllabus and course",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Quiz();
                        }));
                      });
                    },
                    child: costumContinerInsight(
                      icon: Icons.edit,
                      title: "Quiz",
                      subTitle: "Create offline\nPractice tests\nwithout time",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return Mock();
                        }));
                      });
                    },
                    child: costumContinerInsight(
                      icon: Icons.edit_sharp,
                      title: "Mock",
                      subTitle:
                          "Create time based\nmock test and track\nprogress",
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return searchPage();
                      }));
                    },
                    child: costumContinerInsight(
                      icon: Icons.search,
                      title: "Search",
                      subTitle: "Search mcqs, notes\nand details",
                    ),
                  ),
                  costumContinerInsight(
                    icon: Icons.bookmarks,
                    title: "Bookmarks",
                    subTitle: "Find your\nbookmarks here",
                  ),
                  costumContinerInsight(
                    icon: Icons.bar_chart,
                    title: "Statistics",
                    subTitle: "Track your\nimprovements",
                  ),
                  costumContinerInsight(
                    icon: Icons.share_outlined,
                    title: "Share",
                    subTitle: "Share the app with\ncolleagues",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
