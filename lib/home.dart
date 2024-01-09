// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'history.dart';
import 'package:intl/intl.dart';
import 'package:confetti/confetti.dart';

class hom extends StatefulWidget {
  const hom({super.key});

  @override
  State<hom> createState() => _homState();
}

class _homState extends State<hom> {
  List<Widget> tasks = [];
  List<String> itemListn = [];
  List<String> itemListd = [];

  // String err = '';
  bool che = false;
  TextEditingController tan = TextEditingController();
  TextEditingController dun = TextEditingController();
  int co = 0;
  late ConfettiController _confettiController;
  // String er = '';
  @override
  void initState() {
    super.initState();
    _confettiController =
        ConfettiController(duration: const Duration(seconds: 3));
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void startCelebration() {
    _confettiController.play();
  }

  @override
  Widget build(BuildContext context) {
    DateTime currentDate = DateTime.now();

    String formattedDate = DateFormat('EEEE, d MMM').format(currentDate);

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Todo List',
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),

        backgroundColor: const Color(0xffDDFFF7),
        // backgroundColor: Colors.green,
        actions: [
          InkResponse(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => his(
                    itemListn: itemListn,
                    itemListd: itemListd,
                  ),
                ),
              );
            },
            highlightShape: BoxShape.circle,
            radius: 27,
            // borderRadius: BorderRadius.circular(10),
            child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(8),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                // color: const Color(0xffE6E6EA),
                color: Colors.white54,
              ),
              child: Image.asset('images/icons8-history-24.png'),
            ),
          ),
        ],
        centerTitle: true,
        shadowColor: Colors.grey,
        elevation: 6.0,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [Colors.lightBlue, Colors.blue],
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Stack(
            children: [
              ConfettiWidget(
                confettiController: _confettiController,
                blastDirectionality: BlastDirectionality
                    .explosive, // don't specify a direction, blast randomly
                shouldLoop:
                    false, // start again as soon as the animation is finished
                colors: const [
                  Colors.green,
                  Colors.blue,
                  Colors.pink,
                  Colors.orange,
                  Colors.purple,
                ], // manually specify the colors to be used
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Flexible(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(
                top: 35,
                left: 0,
                right: 0,
              ),
              padding: const EdgeInsets.only(
                top: 5,
                left: 24,
                right: 0,
              ),
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
                // color: Color(0xffDDFFF7),

                // color: Colors.red,
              ),
              child: SizedBox(
                width: double.infinity,
                // height: double.infinity,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Hi Hari!',
                      style: TextStyle(
                          fontSize: 34.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 10.6,
                    ),
                    Text(
                      formattedDate,
                      style: const TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontWeight: FontWeight.w600),
                    ),
                    Text(
                      '$co tasks',
                      style:
                          const TextStyle(fontSize: 16.0, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Flexible(
            flex: 7,
            child: tasks.isNotEmpty
                ? Container(
                    margin: const EdgeInsets.only(
                      top: 35,
                      left: 35,
                      right: 35,
                    ),
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: const Color(0xffE6E6EA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(-3,
                              0), // Negative X for left, 3 logical pixels to the left
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(
                              0, -3), // Negative Y for top, 3 logical pixels up
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(3,
                              0), // Positive X for right, 3 logical pixels to the right
                        ),
                      ],
                    ),
                    child: Column(
                      children: tasks,
                    ),
                  )
                : Container(
                    margin: const EdgeInsets.only(
                      top: 35,
                      left: 35,
                      right: 35,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      ),
                      color: const Color(0xffE6E6EA),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(-3,
                              0), // Negative X for left, 3 logical pixels to the left
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(
                              0, -3), // Negative Y for top, 3 logical pixels up
                        ),
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: const Offset(3,
                              0), // Positive X for right, 3 logical pixels to the right
                        ),
                      ],
                    ),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset(
                            'images/b.png',
                            height: 230,
                            width: 230,
                          ),
                          const Text(
                            'Zero to-dos.',
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          const Text(
                            'Time to break the silence!',
                            style: TextStyle(
                              fontSize: 17.5,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
          ),
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.lightBlue, Colors.blue],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Stack(
              children: [
                ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirectionality: BlastDirectionality
                      .explosive, // don't specify a direction, blast randomly
                  shouldLoop:
                      false, // start again as soon as the animation is finished
                  colors: const [
                    Colors.green,
                    Colors.blue,
                    Colors.pink,
                    Colors.orange,
                    Colors.purple,
                  ], // manually specify the colors to be used
                ),
              ],
            ),
          ),
        ],
      ),
      // floatingActionButtonLocation: ,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (context) => AlertDialog(
              actions: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Task name',
                      // errorText: err,
                      // hintText: 'Enter task name',
                    ),
                    controller: tan,
                    // // validator: (String? value) {
                    // //   if (value == null || value.isEmpty) {
                    // //     err = 'Please enter a task name.';
                    // //     return err;
                    // //   } else if (value.length > 17) {
                    // //     err = 'Limit to 17 characters.';
                    // //     return err;
                    // //   } else {
                    // //     return null;
                    // //   }
                    // },
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 1.5),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: UnderlineInputBorder(),
                      labelText: 'Duration',
                      // errorText: err,
                    ),
                    controller: dun,
                    // validator: (String? value) {
                    //   if (value == null || value.isEmpty) {
                    //     err = 'Please enter a duration.';
                    //     return err;
                    //   } else if (value.length > 17) {
                    //     err = 'Limit to 17 characters.';
                    //     return err;
                    //   } else {
                    //     return null;
                    //   }
                    // },
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      child: const Text('Cancel'),
                    ),
                    const SizedBox(
                      width: 105,
                    ),
                    TextButton(
                      onPressed: () {
                        if ((tan.text).length > 17 || (dun.text).length > 17) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Limit to 17 characters.'),
                            ),
                          );
                        } else if ((tan.text).isNotEmpty &&
                            (dun.text).isNotEmpty) {
                          addCheckboxListTile(tan.text, dun.text);
                          String text1 = tan.text;
                          String text2 = dun.text;

                          // print(combinedText); // Print to debug
                          setState(() {
                            itemListn.add(text1);
                            itemListd.add(text2);
                          });
                          tan.clear();
                          dun.clear();
                          Navigator.of(context).pop();
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('All fields should be filled !'),
                            ),
                          );
                        }
                      },
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ],
              title: const Center(
                  child: Text(
                'Add task',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
              )),
              contentPadding: const EdgeInsets.all(20.0),
            ),
          );
        },
        // shape: const CircleBorder(eccentricity: 0.0),
        child: const Icon(Icons.add),
      ),
      // backgroundColor: Colors.green,
    );
  }

  void addCheckboxListTile(String tn, String dn) {
    setState(
      () {
        tasks.add(
          Dismissible(
            key: Key(tn),
            background: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.red,
              ),
              alignment: Alignment.centerRight,
              padding: const EdgeInsets.only(right: 15.0),
              margin: const EdgeInsets.only(bottom: 19.0),
              child: const Icon(Icons.delete, color: Colors.white),
            ),
            onDismissed: (direction) {
              removeCheckboxListTile(tn);
            },
            child: Column(
              children: [
                Card(
                  child: Transform.scale(
                    scale: 1.0,
                    child: CheckboxListTile(
                      title: Text(
                        tn,
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                      subtitle: Text(
                        'for $dn',
                        style: const TextStyle(
                          fontSize: 13.5,
                        ),
                      ),
                      value: che,
                      onChanged: onCheckboxChanged,
                      controlAffinity: ListTileControlAffinity.leading,
                      selectedTileColor: Colors.amber,
                      contentPadding:
                          const EdgeInsets.only(left: 12, top: 3, bottom: 3),
                      // secondary: GestureDetector(
                      //   onTap: () {
                      //     removeCheckboxListTile(tn);
                      //     print('HI');
                      //   },
                      //   child: const Icon(Icons.close_rounded),
                      // ),
                    ),
                  ),
                ),
                const Divider(
                  height: 15,
                  thickness: 2,
                  // color: Colors.blue,
                  indent: 16,
                  endIndent: 16,
                ),
              ],
            ),
          ),
        );
        co++;
      },
    );
  }

  void onCheckboxChanged(bool? value) {
    setState(() {
      che = value ?? false;
      if (che) {
        startCelebration();
      }
    });
  }

  void removeCheckboxListTile(String title) {
    setState(() {
      tasks.removeWhere((widget) {
        if (widget is Dismissible) {
          return widget.key == Key(title);
        }
        return false;
      });
      co--;
    });
  }
}
