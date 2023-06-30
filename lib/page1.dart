import 'package:api/getdata/getdata.dart';
import 'package:api/getdata/getdataname.dart';
import 'package:api/getdata/getmultidata.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text(
          "Perform Action",
          style: TextStyle(
              color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(width, 50)),
                onPressed: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const GetData())),
                child: const Text(
                  "GET SINGLE DATA",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(width, 50)),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const GetName()));
                },
                child: const Text(
                  "GET LIST DATA WITH NAME",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(minimumSize: Size(width, 50)),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const GetMultiData()));
                },
                child: const Text(
                  "GET LIST DATA",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
                )),
          ],
        ),
      ),
    );
  }
}
