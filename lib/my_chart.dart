import 'package:expanproject/bottom_menu.dart';
import 'package:expanproject/menu_item.dart';
import 'package:expanproject/menu_items_view.dart';
import 'package:flutter/material.dart';

class MyChart extends StatefulWidget {
  @override
  _MyChartState createState() => _MyChartState();
}

class _MyChartState extends State<MyChart> {
  final List<MenuItem> _data = [
    MenuItem(
      menuTitle: 'Health Status',
      menuIcon: Image.asset('assets/icon/health.jpg'),
      subItems: [],
    ),
    MenuItem(
      menuTitle: 'DNA Test',
      menuIcon: Image.asset('assets/icon/dna.jpg'),
      subItems: [],
    ),
    MenuItem(
        menuTitle: 'Contacts',
        menuIcon: Image.asset('assets/icon/contact.jpg'),
        subItems: [
          MenuItem(
            menuTitle: 'Option-1',
            
            subItems: [],
          ),
          MenuItem(
            menuTitle: 'Option-2',
            
            subItems: [],
          ),
        ]),
         MenuItem(
        menuTitle: 'Medication',
        menuIcon: Image.asset('assets/icon/mediciation.jpg'),
        subItems: [
          MenuItem(
            menuTitle: 'Option-3',
            
            subItems: [],
          ),
        ]),
 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Chart",
            style: TextStyle(fontSize: 18.0, color: Colors.black)),
        leading: const Icon(
          Icons.arrow_back,
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
      ),
      bottomNavigationBar: const BottomMenu(),
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
             crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                    height: 60,
                    margin: const EdgeInsets.only(left: 20, right: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(15)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 5,
                            blurRadius: 8,
                            offset: const Offset(
                                0, 3), // changes position of shadow
                          ),
                        ]),
                    child: const Center(
                        child: Text(
                      "My Chart",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ))),
                // ),

                const SizedBox(
                  height: 20,
                ),
                // Container(
                //     height: 50,
                //     width: MediaQuery.of(context).size.height / 2,
                //     margin: const EdgeInsets.all(4.0),
                //     child: Material(
                //       shadowColor: Colors.red, // added
                //       color: Colors.white,
                //       type: MaterialType.card,

                //       child: const Center(
                //           child: Text(
                //         "My Chart",
                //         style: TextStyle(
                //             fontWeight: FontWeight.bold, fontSize: 18),
                //       )),
                //       borderRadius: BorderRadius.circular(10.0), // added
                //     )),

                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: _data.length,
                    itemBuilder: (context, index) {
                      final item = _data[index];
                      return MenuItemsView(item: item);
                    },
                  ),
                ),
              ],
            ),
          )
          ),
    );
  }
}
