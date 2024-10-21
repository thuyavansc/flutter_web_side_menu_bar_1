
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



// class SideMenuHomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<SideMenuHomePage> {
//   bool isCollapsed = true;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Responsive Side Menu'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             setState(() {
//               isCollapsed = !isCollapsed;
//             });
//           },
//         ),
//       ),
//       body: Row(
//         children: [
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             width: isCollapsed ? 70 : 250,
//             color: Colors.blue.shade800,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.dashboard, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('Overview', style: TextStyle(color: Colors.white)),
//                   ),
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.view_kanban, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('Kanban View', style: TextStyle(color: Colors.white)),
//                   ),
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.inbox, color: Colors.white),
//                   onPressed: () {},
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('In Progress', style: TextStyle(color: Colors.white)),
//                   ),
//                 // Add more menu items here
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.grey[200],
//               child: Center(
//                 child: Text(
//                   'Main Content Area',
//                   style: TextStyle(fontSize: 24),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// class SideMenuHomePage extends StatefulWidget {
//   @override
//   _HomePageState createState() => _HomePageState();
// }
//
// class _HomePageState extends State<SideMenuHomePage> {
//   bool isCollapsed = true;
//   String? selectedCategory;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dual-Tier Side Menu'),
//         leading: IconButton(
//           icon: Icon(Icons.menu),
//           onPressed: () {
//             setState(() {
//               isCollapsed = !isCollapsed;
//             });
//           },
//         ),
//       ),
//       body: Row(
//         children: [
//           AnimatedContainer(
//             duration: Duration(milliseconds: 300),
//             width: isCollapsed ? 70 : 250,
//             color: Colors.blue.shade800,
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.dashboard, color: Colors.white),
//                   onPressed: () {
//                     setState(() {
//                       selectedCategory = 'Overview';
//                     });
//                   },
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('Overview', style: TextStyle(color: Colors.white)),
//                   ),
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.business, color: Colors.white),
//                   onPressed: () {
//                     setState(() {
//                       selectedCategory = 'Company';
//                     });
//                   },
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('Company', style: TextStyle(color: Colors.white)),
//                   ),
//                 if (selectedCategory == 'Company' && !isCollapsed)
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         leading: Icon(Icons.people, color: Colors.white),
//                         title: Text('Members', style: TextStyle(color: Colors.white)),
//                         onTap: () {},
//                       ),
//                       ListTile(
//                         leading: Icon(Icons.group, color: Colors.white),
//                         title: Text('Teams', style: TextStyle(color: Colors.white)),
//                         onTap: () {},
//                       ),
//                       ListTile(
//                         leading: Icon(Icons.security, color: Colors.white),
//                         title: Text('Security', style: TextStyle(color: Colors.white)),
//                         onTap: () {},
//                       ),
//                     ],
//                   ),
//                 SizedBox(height: 20),
//                 IconButton(
//                   icon: Icon(Icons.settings, color: Colors.white),
//                   onPressed: () {
//                     setState(() {
//                       selectedCategory = 'Settings';
//                     });
//                   },
//                 ),
//                 if (!isCollapsed)
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16.0),
//                     child: Text('Settings', style: TextStyle(color: Colors.white)),
//                   ),
//                 if (selectedCategory == 'Settings' && !isCollapsed)
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       ListTile(
//                         leading: Icon(Icons.person, color: Colors.white),
//                         title: Text('Profile', style: TextStyle(color: Colors.white)),
//                         onTap: () {},
//                       ),
//                       ListTile(
//                         leading: Icon(Icons.lock, color: Colors.white),
//                         title: Text('Password', style: TextStyle(color: Colors.white)),
//                         onTap: () {},
//                       ),
//                     ],
//                   ),
//               ],
//             ),
//           ),
//           Expanded(
//             child: Container(
//               color: Colors.grey[200],
//               child: Center(
//                 child: Text(
//                   selectedCategory == null ? 'Main Content Area' : 'Selected: $selectedCategory',
//                   style: TextStyle(fontSize: 24),
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }




// class ProviderApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChangeNotifierProvider(
//         create: (context) => MenuProvider(),
//         child: Scaffold(
//           body: MainSidebar(),
//         ),
//       ),
//     );
//   }
// }
//
// class MenuProvider extends ChangeNotifier {
//   int _currentRootIndex = -1;
//   int _currentSubIndex = -1;
//   List<Menu> menus = [
//     Menu(title: 'Settings', icon: Icons.settings, subMenus: [
//       Menu(title: 'General', icon: Icons.tune),
//       Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
//         Menu(title: 'Billing History', icon: Icons.history),
//         Menu(title: 'Payment Info', icon: Icons.payment),
//       ]),
//       Menu(title: 'Security', icon: Icons.security),
//     ]),
//     Menu(title: 'Profile', icon: Icons.person, subMenus: [
//       Menu(title: 'Account Info', icon: Icons.account_circle),
//       Menu(title: 'Change Password', icon: Icons.lock),
//     ]),
//     Menu(title: 'APIs', icon: Icons.api),
//   ];
//
//   void selectRootMenu(int index) {
//     _currentRootIndex = index;
//     _currentSubIndex = -1;
//     notifyListeners();
//   }
//
//   void selectSubMenu(int index) {
//     _currentSubIndex = index;
//     notifyListeners();
//   }
//
//   void backToRoot() {
//     _currentRootIndex = -1;
//     notifyListeners();
//   }
//
//   Menu? get currentMenu => _currentRootIndex != -1 ? menus[_currentRootIndex] : null;
//   Menu? get currentSubMenu => _currentSubIndex != -1 && currentMenu != null ? currentMenu?.subMenus[_currentSubIndex] : null;
//   bool get isSecondTierVisible => _currentRootIndex != -1;
// }
//
// class Menu {
//   String title;
//   IconData icon;
//   List<Menu> subMenus;
//
//   Menu({required this.title, required this.icon, this.subMenus = const []});
// }
//
// // class MainSidebar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     MenuProvider provider = Provider.of<MenuProvider>(context);
// //     return Row(
// //       children: [
// //         NavigationRail(
// //           selectedIndex: provider._currentRootIndex,
// //           onDestinationSelected: (index) {
// //             provider.selectRootMenu(index);
// //           },
// //           labelType: NavigationRailLabelType.none,
// //           destinations: provider.menus
// //               .map((menu) => NavigationRailDestination(
// //             icon: Icon(menu.icon),
// //             label: Text(menu.title),
// //           ))
// //               .toList(),
// //           backgroundColor: Colors.black87,
// //         ),
// //         VerticalDivider(thickness: 1, width: 1),
// //         Expanded(
// //           child: provider.isSecondTierVisible ? SecondarySidebar() : Container(color: Colors.black54),
// //         ),
// //       ],
// //     );
// //   }
// // }
//
//
// class MainSidebar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     MenuProvider provider = Provider.of<MenuProvider>(context);
//     return Row(
//       children: [
//         NavigationRail(
//           selectedIndex: provider._currentRootIndex == -1 ? null : provider._currentRootIndex,
//           onDestinationSelected: (index) {
//             provider.selectRootMenu(index);
//           },
//           labelType: NavigationRailLabelType.none,
//           destinations: provider.menus
//               .map((menu) => NavigationRailDestination(
//             icon: Icon(menu.icon),
//             label: Text(menu.title),
//           ))
//               .toList(),
//           backgroundColor: Colors.black87,
//         ),
//         VerticalDivider(thickness: 1, width: 1),
//         Expanded(
//           child: provider.isSecondTierVisible ? SecondarySidebar() : Container(color: Colors.black54),
//         ),
//       ],
//     );
//   }
// }
//
//
//
// // class SecondarySidebar extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     MenuProvider provider = Provider.of<MenuProvider>(context);
// //     Menu currentMenu = provider.currentMenu;
// //     return Column(
// //       children: [
// //         ListTile(
// //           leading: Icon(Icons.arrow_back),
// //           title: Text('Back to root', style: TextStyle(color: Colors.white)),
// //           onTap: () => provider.backToRoot(),
// //         ),
// //         Expanded(
// //           child: ListView.builder(
// //             itemCount: currentMenu.subMenus.length,
// //             itemBuilder: (context, index) {
// //               Menu subMenu = currentMenu.subMenus[index];
// //               return ListTile(
// //                 leading: Icon(subMenu.icon, color: Colors.white),
// //                 title: Text(subMenu.title, style: TextStyle(color: Colors.white)),
// //                 onTap: () => provider.selectSubMenu(index),
// //               );
// //             },
// //           ),
// //         ),
// //       ],
// //     );
// //   }
// // }
//
//
// class SecondarySidebar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     MenuProvider provider = Provider.of<MenuProvider>(context);
//     Menu? currentMenu = provider.currentMenu;  // Allow the menu to be null
//
//     if (currentMenu == null) {
//       // Handle the case when there is no selected root menu
//       return Container();  // Or some placeholder indicating nothing is selected
//     }
//
//     return Column(
//       children: [
//         ListTile(
//           leading: Icon(Icons.arrow_back),
//           title: Text('Back to root', style: TextStyle(color: Colors.red)),
//           onTap: () => provider.backToRoot(),
//         ),
//         Expanded(
//           child: ListView.builder(
//             itemCount: currentMenu.subMenus.length,
//             itemBuilder: (context, index) {
//               Menu subMenu = currentMenu.subMenus[index];
//               return ListTile(
//                 leading: Icon(subMenu.icon, color: Colors.red),
//                 title: Text(subMenu.title, style: TextStyle(color: Colors.red)),
//                 onTap: () {
//                   if (subMenu.subMenus.isNotEmpty) {
//                     provider.selectSubMenu(index);
//                   }
//                 },
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
// }




//
// class ProviderApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChangeNotifierProvider(
//         create: (context) => MenuProvider(),
//         child: Scaffold(
//           appBar: AppBar(title: Text("Your Application")),
//           body: MainPage(),
//           bottomNavigationBar: BottomAppBar(
//             child: Text("Footer", textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Flexible(
//           child: MainSidebar(),
//           flex: 2,  // Adjust flex to control sidebar width
//         ),
//         VerticalDivider(thickness: 1, width: 1),
//         Expanded(
//           child: Center(child: Text('Main Content Area')),
//           flex: 8,  // Adjust flex to control content area width
//         ),
//       ],
//     );
//   }
// }
//
// class MainSidebar extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     MenuProvider provider = Provider.of<MenuProvider>(context);
//     return Drawer(
//       child: Column(
//         children: [
//           Expanded(
//             child: ListView(
//               children: [
//                 for (var i = 0; i < provider.menus.length; i++)
//                   ListTile(
//                     leading: Icon(provider.menus[i].icon),
//                     title: Text(provider.menus[i].title),
//                     selected: i == provider._currentRootIndex,
//                     onTap: () => provider.selectRootMenu(i),
//                   ),
//                 if (provider.isSecondTierVisible)
//                   ...provider.currentMenu!.subMenus.map((subMenu) => ListTile(
//                     leading: Icon(subMenu.icon),
//                     title: Text(subMenu.title),
//                     onTap: () {
//                       if (subMenu.subMenus.isNotEmpty) {
//                         provider.selectSubMenu(provider.currentMenu!.subMenus.indexOf(subMenu));
//                       }
//                     },
//                   ))
//               ],
//             ),
//           ),
//           ListTile(
//             leading: Icon(Icons.arrow_back),
//             title: Text('Collapse'),
//             onTap: () => Scaffold.of(context).openEndDrawer(),
//           )
//         ],
//       ),
//     );
//   }
// }
//
// class MenuProvider extends ChangeNotifier {
//   int _currentRootIndex = -1;
//   int _currentSubIndex = -1;
//   List<Menu> menus = [
//     Menu(title: 'Settings', icon: Icons.settings, subMenus: [
//       Menu(title: 'General', icon: Icons.tune),
//       Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
//         Menu(title: 'Billing History', icon: Icons.history),
//         Menu(title: 'Payment Info', icon: Icons.payment),
//       ]),
//       Menu(title: 'Security', icon: Icons.security),
//     ]),
//     Menu(title: 'Profile', icon: Icons.person, subMenus: [
//       Menu(title: 'Account Info', icon: Icons.account_circle),
//       Menu(title: 'Change Password', icon: Icons.lock),
//     ]),
//     Menu(title: 'APIs', icon: Icons.api),
//   ];
//
//   void selectRootMenu(int index) {
//     _currentRootIndex = index;
//     _currentSubIndex = -1;
//     notifyListeners();
//   }
//
//   void selectSubMenu(int index) {
//     _currentSubIndex = index;
//     notifyListeners();
//   }
//
//   void backToRoot() {
//     _currentRootIndex = -1;
//     _currentSubIndex = -1;
//     notifyListeners();
//   }
//
//   Menu? get currentMenu => _currentRootIndex != -1 ? menus[_currentRootIndex] : null;
//   bool get isSecondTierVisible => _currentRootIndex != -1 && currentMenu!.subMenus.isNotEmpty;
// }
//
// class Menu {
//   String title;
//   IconData icon;
//   List<Menu> subMenus;
//
//   Menu({required this.title, required this.icon, this.subMenus = const []});
// }




// Expected Working Code
// class ProviderApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: ChangeNotifierProvider(
//         create: (context) => MenuProvider(),
//         child: MainLayout(),
//       ),
//     );
//   }
// }
//
// class MainLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Consumer<MenuProvider>(
//             builder: (context, provider, child) {
//               return Row(
//                 children: [
//                   Container(
//                     width: 100,
//                     color: Colors.black,
//                     child: ListView(
//                       children: provider.menus.map((menu) => IconButton(
//                         icon: Icon(menu.icon, color: Colors.white),
//                         onPressed: () => provider.selectRootMenu(provider.menus.indexOf(menu)),
//                       )).toList(),
//                     ),
//                   ),
//                   if (provider.isSecondTierVisible) VerticalDivider(width: 1),
//                   if (provider.isSecondTierVisible)
//                     Container(
//                       width: 200,
//                       color: Colors.grey[850],
//                       child: Column(
//                         children: [
//                           ListTile(
//                             leading: Icon(Icons.arrow_back, color: Colors.white),
//                             title: Text('Back', style: TextStyle(color: Colors.white)),
//                             onTap: () => provider.backToRoot(),
//                           ),
//                           Expanded(
//                             child: ListView(
//                               children: provider.currentMenu?.subMenus.map((sub) => ListTile(
//                                 leading: Icon(sub.icon, color: Colors.white),
//                                 title: Text(sub.title, style: TextStyle(color: Colors.white)),
//                                 onTap: () {
//                                   // Handle deeper submenu actions here
//                                 },
//                               )).toList() ?? [],
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                 ],
//               );
//             },
//           ),
//           Expanded(
//             child: Column(
//               children: [
//                 Container(
//                   color: Colors.blueGrey[100],
//                   width: double.infinity,
//                   padding: EdgeInsets.all(10),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       IconButton(
//                         icon: Icon(Icons.menu),
//                         onPressed: () => Provider.of<MenuProvider>(context, listen: false).toggleSidebar(),
//                       ),
//                       Text("Your Application"),
//                     ],
//                   ),
//                 ),
//                 Expanded(child: Center(child: Text('Main Content Area'))),
//                 Container(
//                   color: Colors.blueGrey[100],
//                   width: double.infinity,
//                   padding: EdgeInsets.all(20),
//                   child: Text('Footer', textAlign: TextAlign.center),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class MenuProvider extends ChangeNotifier {
//   int _currentRootIndex = -1;
//   bool _sidebarVisible = true;
//
//   List<Menu> menus = [
//     Menu(title: 'Settings', icon: Icons.settings, subMenus: [
//       Menu(title: 'General', icon: Icons.tune),
//       Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
//         Menu(title: 'Billing History', icon: Icons.history),
//         Menu(title: 'Payment Info', icon: Icons.payment),
//       ]),
//       Menu(title: 'Security', icon: Icons.security),
//     ]),
//     Menu(title: 'Profile', icon: Icons.person, subMenus: [
//       Menu(title: 'Account Info', icon: Icons.account_circle),
//       Menu(title: 'Change Password', icon: Icons.lock),
//     ]),
//     Menu(title: 'APIs', icon: Icons.api),
//   ];
//
//   void toggleSidebar() {
//     _sidebarVisible = !_sidebarVisible;
//     notifyListeners();
//   }
//
//   void selectRootMenu(int index) {
//     _currentRootIndex = index;
//     notifyListeners();
//   }
//
//   void backToRoot() {
//     _currentRootIndex = -1;
//     notifyListeners();
//   }
//
//   Menu? get currentMenu => _currentRootIndex != -1 ? menus[_currentRootIndex] : null;
//   bool get isSecondTierVisible => _currentRootIndex != -1 && _sidebarVisible;
// }
//
// class Menu {
//   String title;
//   IconData icon;
//   List<Menu> subMenus;
//
//   Menu({required this.title, required this.icon, this.subMenus = const []});
// }




// Expected Working Code
class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ChangeNotifierProvider(
        create: (context) => MenuProvider(),
        child: MainLayout(),
      ),
    );
  }
}

class MainLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Consumer<MenuProvider>(
            builder: (context, provider, child) {
              if (!provider._sidebarVisible) return Container(); // If sidebar is toggled off, return an empty container.
              return Row(
                children: [
                  Container(
                    width: 100,
                    color: Colors.black,
                    child: ListView(
                      children: provider.menus.map((menu) => IconButton(
                        icon: Icon(menu.icon, color: Colors.white),
                        onPressed: () => provider.selectRootMenu(provider.menus.indexOf(menu)),
                      )).toList(),
                    ),
                  ),
                  if (provider.isSecondTierVisible) VerticalDivider(width: 1),
                  if (provider.isSecondTierVisible)
                    Container(
                      width: 200,
                      color: Colors.grey[850],
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(Icons.arrow_back, color: Colors.white),
                            title: Text('Back', style: TextStyle(color: Colors.white)),
                            onTap: () => provider.backToRoot(),
                          ),
                          Expanded(
                            child: ListView(
                              children: provider.currentMenu?.subMenus.map((sub) => ListTile(
                                leading: Icon(sub.icon, color: Colors.white),
                                title: Text(sub.title, style: TextStyle(color: Colors.white)),
                                onTap: () {
                                  // Handle deeper submenu actions here
                                },
                              )).toList() ?? [],
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              );
            },
          ),
          Expanded(
            child: Column(
              children: [
                Container(
                  color: Colors.blueGrey[100],
                  width: double.infinity,
                  padding: EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () => Provider.of<MenuProvider>(context, listen: false).toggleSidebar(),
                      ),
                      Text("Your Application"),
                    ],
                  ),
                ),
                Expanded(child: Center(child: Text('Main Content Area'))),
                Container(
                  color: Colors.blueGrey[100],
                  width: double.infinity,
                  padding: EdgeInsets.all(20),
                  child: Text('Footer', textAlign: TextAlign.center),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuProvider extends ChangeNotifier {
  int _currentRootIndex = -1;
  bool _sidebarVisible = true;

  List<Menu> menus = [
    Menu(title: 'Settings', icon: Icons.settings, subMenus: [
      Menu(title: 'General', icon: Icons.tune),
      Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
        Menu(title: 'Billing History', icon: Icons.history),
        Menu(title: 'Payment Info', icon: Icons.payment),
      ]),
      Menu(title: 'Security', icon: Icons.security),
    ]),
    Menu(title: 'Profile', icon: Icons.person, subMenus: [
      Menu(title: 'Account Info', icon: Icons.account_circle),
      Menu(title: 'Change Password', icon: Icons.lock),
    ]),
    Menu(title: 'APIs', icon: Icons.api),
  ];

  void toggleSidebar() {
    _sidebarVisible = !_sidebarVisible;
    notifyListeners();
  }

  void selectRootMenu(int index) {
    _currentRootIndex = index;
    notifyListeners();
  }

  void backToRoot() {
    _currentRootIndex = -1;
    notifyListeners();
  }

  Menu? get currentMenu => _currentRootIndex != -1 ? menus[_currentRootIndex] : null;
  bool get isSecondTierVisible => _currentRootIndex != -1 && _sidebarVisible;
}

class Menu {
  String title;
  IconData icon;
  List<Menu> subMenus;

  Menu({required this.title, required this.icon, this.subMenus = const []});
}