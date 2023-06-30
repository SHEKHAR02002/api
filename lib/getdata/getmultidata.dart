import 'package:api/function/function.dart';
import 'package:flutter/material.dart';

class GetMultiData extends StatefulWidget {
  const GetMultiData({super.key});

  @override
  State<GetMultiData> createState() => _GetMultiDataState();
}

class _GetMultiDataState extends State<GetMultiData> {
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
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            )),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: FutureBuilder(
                future: getuserdata(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    itemCount: userList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        color: Colors.grey.shade300,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(userList[index].title.toString()),
                            const Divider()
                          ],
                        ),
                      );
                    },
                  );
                },
              ),
            ),
            const Divider()
          ],
        ));
  }
}
