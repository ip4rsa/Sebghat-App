import 'package:flutter/material.dart';

class NewInquiry extends StatelessWidget {
  const NewInquiry({super.key});

  @override
  Widget build(BuildContext context) {
    var textTem = Theme.of(context).textTheme;
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Column(children: [
          Container(
            decoration: const BoxDecoration(
                color: Color.fromRGBO(39, 43, 65, 1),
                borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(0),
                    bottomLeft: Radius.circular(30))),
            height: 100,
            child: Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Expanded(child: SizedBox()),
                  Text(
                    "خرید  -  استعلام",
                    style: textTem.headline6,
                  ),
                  const Expanded(child: SizedBox()),
                  InkWell(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back_ios_new_rounded),
                  ),
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
