// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class his extends StatefulWidget {
  List<String> itemListn = [];
  List<String> itemListd = [];
  his({super.key, required this.itemListn, required this.itemListd});
  @override
  // ignore: library_private_types_in_public_api
  _hisState createState() => _hisState();
}

class _hisState extends State<his> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'History',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        titleSpacing: -3.0,
        //automaticallyImplyLeading: false,
        // backgroundColor: Colors.white,
        shadowColor: Colors.grey,
        elevation: 6.0,
        actions: [
          InkResponse(
            onTap: () {
              if (widget.itemListn.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Empty!'),
                  ),
                );
              } else {
                setState(() {
                  widget.itemListn.clear();
                  widget.itemListd.clear();
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text('Cleared.'),
                  ),
                );
              }
            },
            highlightShape: BoxShape.circle,
            radius: 27,
            // borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: const EdgeInsets.only(
                top: 12,
                bottom: 10,
                left: 10,
                right: 0,
              ),
              padding:
                  const EdgeInsets.only(top: 5, left: 5, right: 5, bottom: 8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: const Color(0xffE6E6EA),
                color: Colors.white54,
                // color: Colors.red,
              ),
              child: const Icon(Icons.delete_rounded),
            ),
            // const Icon(Icons.delete_rounded),
          ),
          const Padding(
            padding: EdgeInsets.only(right: 15),
          ),
        ],
      ),
      body: widget.itemListn.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.all(23.0),
              child: Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      itemCount: widget.itemListn.length,
                      itemBuilder: (context, index) {
                        return Center(
                          child: Column(
                            children: [
                              Material(
                                // color: Color(0xffFFF7F8),
                                // color: Color(0xff8EF9F3),
                                color: const Color(0xff9CFFFA),
                                borderRadius: BorderRadius.circular(13),
                                elevation:
                                    5.0, // Set the elevation for the Material widget
                                shadowColor: Colors.grey,
                                child: ListTile(
                                  // tileColor: Colors.white,
                                  title: Text(
                                    widget.itemListn[index],
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  trailing: Text(
                                    widget.itemListd[index],
                                    style: const TextStyle(
                                      color: Colors.black,
                                    ),
                                  ),
                                  // shape: RoundedRectangleBorder(
                                  //   borderRadius: BorderRadius.circular(10),
                                  // ),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 10),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            )
          : Center(
              child: Container(
                padding: EdgeInsets.only(bottom: 25),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // color: Colors.black,
                      padding: const EdgeInsets.only(left: 30, right: 60),
                      // margin: const EdgeInsets.only(bottom: 20),
                      // color: Colors.red,
                      child: Image.asset(
                        'images/dribble-bin.png',
                        // height: 250,
                        // width: 250,
                      ),
                    ),
                    Container(
                      // color: Colors.blue,
                      // margin: EdgeInsets.only(bottom: 10),
                      child: const Column(
                        children: [
                          Text(
                            'No time travelers found in history.',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          SizedBox(
                            height: 1.5,
                          ),
                          Text(
                            'It\'s as empty as a black hole!',
                            style: TextStyle(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
    );
  }
}
