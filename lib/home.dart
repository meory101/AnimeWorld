import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:goaltracker/review.dart';
import 'package:goaltracker/theme/colors.dart';
import 'package:goaltracker/theme/fonts.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List<String> title = ['Attack on titan', 'Demon slayer', 'One piece'];
    List<String> hour = ['3', '1', '2'];
    List<String> date = ['Since 2 Mar', 'Since 8 Mar', 'Since 10 Mar'];
    List<int> percent = [20, 60, 44];

    return Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: FloatingActionButton(
            elevation: 10,
            backgroundColor: AppColor.maincolor,
            onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                builder: (context) {
                  return Review();
                },
              ));
            },
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 40,
            ),
          ),
        ),
        appBar: AppBar(
          toolbarHeight: 100,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Container(
            padding: const EdgeInsets.only(top: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                'Hi,Nour Othman!',
                style: AppFonts.mainfont,
              ),
              const SizedBox(
                height: 3,
              ),
              Text(
                'Welocme to Anime World..',
                style: AppFonts.subfont,
              ),
            ]),
          ),
          actions: [
            IconButton(
              onPressed: () {
              
              },
              icon: Icon(
                Icons.logout_rounded,
                size: 20,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: Container(
          margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 7),
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return Container(
                  margin: const EdgeInsets.only(bottom: 10),
                  child: Card(
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            height: MediaQuery.of(context).size.height / 4,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                      'assets/images/${index + 1}.png'),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          Text(
                            title[index],
                            maxLines: 2,
                            style: AppFonts.mainfont,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                decoration: BoxDecoration(
                                  border: Border(
                                    bottom: BorderSide(color: Colors.grey),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    flex: 2,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(CupertinoIcons.clock,
                                                color: AppColor.maincolor),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              '${hour[index]} ' 'h',
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Container(
                                              height: 20,
                                              decoration: BoxDecoration(
                                                border: Border(
                                                  left: BorderSide(
                                                      color: Colors.grey,
                                                      width: 2),
                                                ),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 7,
                                            ),
                                            Icon(
                                              CupertinoIcons.calendar,
                                              color: AppColor.maincolor,
                                            ),
                                            const SizedBox(
                                              width: 2,
                                            ),
                                            Text(
                                              date[index],
                                            )
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Container(
                                margin:
                                    const EdgeInsets.only(top: 20, bottom: 5),
                                width: MediaQuery.of(context).size.width,
                                height: 7,
                                decoration: BoxDecoration(
                                  color: AppColor.subcolor,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Container(
                                    width: (MediaQuery.of(context).size.width *
                                            percent[index]) /
                                        100,
                                    decoration: BoxDecoration(
                                      color: AppColor.maincolor,
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                  ),
                                ),
                              ),
                              Text(
                                '${percent[index]}%',
                                style: AppFonts.subfont,
                                textAlign: TextAlign.left,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ));
            },
          ),
        ));
  }
}
