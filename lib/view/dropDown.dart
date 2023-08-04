// import 'package:dropdown_button2/dropdown_button2.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// final List<String> items = [
//   'Item1',
//   'Item2',
//   'Item3',
//   'Item4',
// ];
// String? selectedValue;

// List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
//   final List<DropdownMenuItem<String>> menuItems = [];
//   for (final String item in items) {
//     menuItems.addAll(
//       [
//         DropdownMenuItem<String>(
//           value: item,
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             child: Text(
//               item,
//               style: const TextStyle(
//                 fontSize: 14,
//               ),
//             ),
//           ),
//         ),
//         //If it's last item, we will not add Divider after it.
//         if (item != items.last)
//           const DropdownMenuItem<String>(
//             enabled: false,
//             child: Divider(),
//           ),
//       ],
//     );
//   }
//   return menuItems;
// }

// List<double> _getCustomItemsHeights() {
//   final List<double> itemsHeights = [];
//   for (int i = 0; i < (items.length * 2) - 1; i++) {
//     if (i.isEven) {
//       itemsHeights.add(40);
//     }
//     //Dividers indexes will be the odd indexes
//     if (i.isOdd) {
//       itemsHeights.add(4);
//     }
//   }
//   return itemsHeights;
// }

// @override
// Widget build(BuildContext context) {
//   return Scaffold(
//     body: Center(
//       child: DropdownButtonHideUnderline(
//         child: DropdownButton2<String>(
//           isExpanded: true,
//           hint: Text(
//             'Select Item',
//             style: TextStyle(
//               fontSize: 14,
//               color: Theme.of(context).hintColor,
//             ),
//           ),
//           items: _addDividersAfterItems(items),
//           value: selectedValue,
//           // onChanged: (String? value) {
//           //   setState(() {
//           //     selectedValue = value;
//           //   });
//           // },
//           buttonStyleData: const ButtonStyleData(
//             padding: EdgeInsets.symmetric(horizontal: 16),
//             height: 40,
//             width: 140,
//           ),
//           dropdownStyleData: const DropdownStyleData(
//             maxHeight: 200,
//           ),
//           menuItemStyleData: MenuItemStyleData(
//             padding: const EdgeInsets.symmetric(horizontal: 8.0),
//             customHeights: _getCustomItemsHeights(),
//           ),
//           iconStyleData: const IconStyleData(
//             openMenuIcon: Icon(Icons.arrow_drop_up),
//           ),
//         ),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';

class DropDwonMenu extends StatefulWidget {
  const DropDwonMenu({super.key});

  @override
  State<DropDwonMenu> createState() => _DropDwonMenuState();
}

class _DropDwonMenuState extends State<DropDwonMenu> {
  final items = ['مرسدس بنز', 'آ او دی', 'پژو 207', 'ایران خودرو'];
  String? value;
  String dropValue = 'ok';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 253, 253, 253),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
            border: Border.all(
                color: const Color.fromARGB(125, 250, 172, 15), width: 2),
          ),
          width: 250,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(8, 0, 10, 0),
            child: DropdownButtonHideUnderline(
              child: DropdownButton(
                value: value,
                isExpanded: true,
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                icon: const Icon(Icons.keyboard_arrow_down_sharp),
                iconSize: 30,
                elevation: 3,
                items: items.map(buildMemuItem).toList(),
                onChanged: (value) => setState(() => this.value = value),
              ),
            ),
          ),
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMemuItem(String item) => DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: TextStyle(color: const Color.fromARGB(255, 45, 36, 12)),
        ),
      );
}
