import 'package:flutter/cupertino.dart';
import '../model/homeItemData.dart';

class grid_items_homescreen extends StatelessWidget {
  const grid_items_homescreen({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 310,
        height: 810,
        child: GridView.builder(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: itemGridList.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 12, mainAxisSpacing: 15),
          itemBuilder: (context, index) {
            return Center(
              child: Container(
                decoration: const BoxDecoration(
                    color: Color.fromRGBO(248, 248, 248, 1),
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                width: size.width / 2,
                height: 950,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            color: Color.fromRGBO(240, 165, 0, 1),
                            borderRadius:
                                BorderRadius.all(Radius.circular(100))),
                        child: Image.asset(
                          itemGridList[index].icon,
                          scale: 1.6,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(itemGridList[index].name),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
