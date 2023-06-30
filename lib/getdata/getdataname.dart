import 'package:api/function/function.dart';
import 'package:flutter/material.dart';

class GetName extends StatefulWidget {
  const GetName({super.key});

  @override
  State<GetName> createState() => _GetNameState();
}

class _GetNameState extends State<GetName> {
  List singledata = [];
  bool loader = true;

  callapi() async {
    singledata = await getdatamulti();
    if (singledata.isNotEmpty) {
      setState(() {
        loader = false;
      });
    }
  }

  @override
  void initState() {
    callapi();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: const Icon(
              Icons.arrow_back_ios_new,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          title: const Text(
            "G E T D A T A A P I",
            style: TextStyle(
                color: Colors.black, fontSize: 14, fontWeight: FontWeight.w400),
          )),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: loader
            ? const Center(child: CircularProgressIndicator())
            : Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: singledata.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Text(
                            "email : ${singledata[index]["email"].toString()}",
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w400),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          // Text(
                          //   "First Name :  ${singledata["first_name"]}",
                          //   style: const TextStyle(
                          //       fontSize: 14, fontWeight: FontWeight.w400),
                          // ),
                          // const SizedBox(
                          //   height: 20,
                          // ),
                          // Text(
                          //   "Last Name :  ${singledata["last_name"]}",
                          //   style: const TextStyle(
                          //       fontSize: 14, fontWeight: FontWeight.w400),
                          // )
                        ],
                      );
                    },
                  )
                ],
              ),
      ),
    );
  }
}
