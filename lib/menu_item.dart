// To parse this JSON data, do
//
//     final menuItem = menuItemFromJson(jsonString);

import 'dart:convert';

MenuItem menuItemFromJson(String str) => MenuItem.fromJson(json.decode(str));

String menuItemToJson(MenuItem data) => json.encode(data.toJson());

class MenuItem {
    MenuItem({
        this.menuTitle,
        this.menuIcon,
        this.subItems,
    });

    String? menuTitle;
    var menuIcon;
    List<dynamic>? subItems;

    factory MenuItem.fromJson(Map<String, dynamic> json) => MenuItem(
        menuTitle: json["menuTitle"],
        menuIcon: json["menuIcon"],
        subItems: List<dynamic>.from(json["subItem"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "menuTitle": menuTitle,
        "menuIcon": menuIcon,
        "subItem": List<dynamic>.from(subItems!.map((x) => x)),
    };
}
