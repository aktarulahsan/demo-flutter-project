import 'package:expanproject/menu_item.dart';
import 'package:flutter/material.dart';

class MenuItemsView extends StatefulWidget {
  const MenuItemsView({Key? key, this.item, this.callback}) : super(key: key);

  final MenuItem? item;
  final VoidCallback? callback;

  @override
  _MenuItemsViewState createState() => _MenuItemsViewState();
}

class _MenuItemsViewState extends State<MenuItemsView> {
  MenuItem? item;

  @override
  void initState() {
    super.initState();
    item = widget.item;
  }

  bool isExpand = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 4,bottom: 4),
      
       decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius:
                             BorderRadius.all(Radius.circular(10)),
                        ),

      child: ExpansionTile(
          title: Text(
            item!.menuTitle.toString(),
            textAlign: TextAlign.center,
            style: const TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black,),
          ),
          iconColor: Colors.black,
          // leading: Icon(item!.menuIcon),
          leading: item!.menuIcon,
          collapsedTextColor: Colors.black,
          onExpansionChanged: (value) {
            setState(() {
              isExpand = value;
            });
          },
          trailing: item!.subItems!.isEmpty
              ? const Icon(Icons.arrow_forward_ios_rounded)
              : isExpand
                  ? const Icon(Icons.remove)
                  : const Icon(Icons.add),
          children: item!.subItems!.isNotEmpty
              ? item!.subItems!.map((subItem) {
                  return SingleChildScrollView(
                    child: Column(
                      children: [
                        const Divider(height: 1.0),
                        Container(
                          
                          margin: const EdgeInsets.all(5),
                          width: MediaQuery.of(context).size.width,
                          child:
                          // MenuItemsView(item: subItem) 
                          
                          
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child:
                             MenuItemsView(item: subItem)
                            
                            
                            // Text(
                            //   subItem.menuTitle.toString(),
                            //   style: const TextStyle(fontSize: 16.0),
                            // ),
                          ),
                        ),
                        
                      ],
                    ),
                  );
                }).toList()
              : []),
    );
  }
}
