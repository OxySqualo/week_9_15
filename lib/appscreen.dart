import 'package:flutter/material.dart';

import 'package:sizer/sizer.dart';
import 'package:week_9_2/childC.dart';

class Appscreen extends StatelessWidget {
  const Appscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      persistentFooterAlignment: AlignmentDirectional.center,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 11, 80, 13),
        centerTitle: true,
        title: const Text("The Matrix"),
      ),
      body: SizerUtil.orientation == Orientation.portrait ? childM1 : childC1,
    );
  }
}
