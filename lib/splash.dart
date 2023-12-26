// ignore_for_file: camel_case_types, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'home.dart';

class spl_scr extends StatefulWidget {
  const spl_scr({super.key});

  @override
  State<spl_scr> createState() => _spl_scrState();
}

class _spl_scrState extends State<spl_scr> {
  @override
  void initState() {
    super.initState();
    _navigatetohome();
  }

  _navigatetohome() async {
    await Future.delayed(const Duration(milliseconds: 1350), () {});
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const hom(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(40),
          child: Image.asset('gifs/pop.gif'),
        ),
      ),
      backgroundColor: const Color(0xffD9D9D9),
    );
  }
}
