
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
//               if (!provider._sidebarVisible) return Container(); // If sidebar is toggled off, return an empty container.
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





//Nested menu
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
// // class MainLayout extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Row(
// //         children: [
// //           Consumer<MenuProvider>(
// //             builder: (context, provider, child) {
// //               if (!provider.sidebarVisible) return Container(); // If sidebar is toggled off, return an empty container.
// //               return Row(
// //                 children: [
// //                   Container(
// //                     width: 100,
// //                     color: Colors.black,
// //                     child: ListView(
// //                       children: provider.menus.map((menu) => IconButton(
// //                         icon: Icon(menu.icon, color: Colors.white),
// //                         onPressed: () => provider.selectRootMenu(menu),
// //                       )).toList(),
// //                     ),
// //                   ),
// //                   if (provider.isSecondTierVisible) VerticalDivider(width: 1),
// //                   if (provider.isSecondTierVisible)
// //                     Container(
// //                       width: 200,
// //                       color: Colors.grey[850],
// //                       child: Column(
// //                         children: [
// //                           ListTile(
// //                             leading: Icon(Icons.arrow_back, color: Colors.white),
// //                             title: Text(provider.currentMenuTitle, style: TextStyle(color: Colors.white)),
// //                             onTap: () => provider.navigateBack(),
// //                           ),
// //                           Expanded(
// //                             child: ListView(
// //                               children: provider.currentSubMenuItems.map((sub) => ListTile(
// //                                 leading: Icon(sub.icon, color: Colors.white),
// //                                 title: Text(sub.title, style: TextStyle(color: Colors.white)),
// //                                 onTap: () => provider.selectSubMenu(sub),
// //                               )).toList(),
// //                             ),
// //                           ),
// //                         ],
// //                       ),
// //                     ),
// //                 ],
// //               );
// //             },
// //           ),
// //           Expanded(
// //             child: Column(
// //               children: [
// //                 Container(
// //                   color: Colors.blueGrey[100],
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(10),
// //                   child: Row(
// //                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                     children: [
// //                       IconButton(
// //                         icon: Icon(Icons.menu),
// //                         onPressed: () => Provider.of<MenuProvider>(context, listen: false).toggleSidebar(),
// //                       ),
// //                       Text("Your Application"),
// //                     ],
// //                   ),
// //                 ),
// //                 Expanded(child: Center(child: Text('Main Content Area'))),
// //                 Container(
// //                   color: Colors.blueGrey[100],
// //                   width: double.infinity,
// //                   padding: EdgeInsets.all(20),
// //                   child: Text('Footer', textAlign: TextAlign.center),
// //                 ),
// //               ],
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
//
// class MainLayout extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Row(
//         children: [
//           Consumer<MenuProvider>(
//             builder: (context, provider, child) {
//               // Only render the sidebar if the sidebarVisible flag is true
//               return Visibility(
//                 visible: provider.sidebarVisible,
//                 child: Row(
//                   children: [
//                     Container(
//                       width: 100,
//                       color: Colors.black,
//                       child: ListView(
//                         children: provider.menus.map((menu) => IconButton(
//                           icon: Icon(menu.icon, color: Colors.white),
//                           onPressed: () => provider.selectRootMenu(menu),
//                         )).toList(),
//                       ),
//                     ),
//                     if (provider.isSecondTierVisible) VerticalDivider(width: 1),
//                     if (provider.isSecondTierVisible)
//                       Container(
//                         width: 200,
//                         color: Colors.grey[850],
//                         child: Column(
//                           children: [
//                             ListTile(
//                               leading: Icon(Icons.arrow_back, color: Colors.white),
//                               title: Text(provider.currentMenuTitle, style: TextStyle(color: Colors.white)),
//                               onTap: () => provider.navigateBack(),
//                             ),
//                             Expanded(
//                               child: ListView(
//                                 children: provider.currentSubMenuItems.map((sub) => ListTile(
//                                   leading: Icon(sub.icon, color: Colors.white),
//                                   title: Text(sub.title, style: TextStyle(color: Colors.white)),
//                                   onTap: () => provider.selectSubMenu(sub),
//                                 )).toList(),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                   ],
//                 ),
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
//                         onPressed: () => Provider.of<MenuProvider>(context, listen: false).toggleFullSidebar(),
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
//   List<Menu> menus = [
//     Menu(title: 'Settings', icon: Icons.settings, subMenus: [
//       Menu(title: 'General', icon: Icons.tune),
//       Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
//         Menu(title: 'Billing History', icon: Icons.history),
//         Menu(title: 'Payment Info', icon: Icons.payment, subMenus: [
//           Menu(title: 'Cash', icon: Icons.money),
//           Menu(title: 'Card', icon: Icons.add_card),
//         ]),
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
//   bool sidebarVisible = true;
//   List<Menu> menuStack = [];
//
//   Menu? get currentMenu => menuStack.isNotEmpty ? menuStack.last : null;
//   String get currentMenuTitle => currentMenu?.title ?? 'Root';
//   List<Menu> get currentSubMenuItems => currentMenu?.subMenus ?? [];
//
//   bool get isSecondTierVisible => sidebarVisible && currentMenu != null;
//
//   void toggleFullSidebar() {
//     sidebarVisible = !sidebarVisible;
//     notifyListeners();
//   }
//
//
//   void selectRootMenu(Menu menu) {
//     menuStack.clear();
//     menuStack.add(menu);
//     notifyListeners();
//   }
//
//   void selectSubMenu(Menu submenu) {
//     if (submenu.subMenus.isNotEmpty) {
//       menuStack.add(submenu);
//       notifyListeners();
//     }
//   }
//
//   void navigateBack() {
//     if (menuStack.isNotEmpty) {
//       menuStack.removeLast();
//       notifyListeners();
//     }
//     //This will hide both tier if nothing is back
//     // if (menuStack.isEmpty) {
//     //   sidebarVisible = false;  // Optionally hide the sidebar when reaching the root
//     // }
//   }
// }
//
// class Menu {
//   String title;
//   IconData icon;
//   List<Menu> subMenus;
//
//   Menu({required this.title, required this.icon, this.subMenus = const []});
// }




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
              return Visibility(
                visible: provider.sidebarVisible,
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      color: Colors.black,
                      child: ListView(
                        children: provider.menus.map((menu) => MenuButton(menu: menu, onSelect: () => provider.selectRootMenu(menu))).toList(),
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
                              // leading: Icon(Icons.arrow_back, color: Colors.white),
                              leading: IconButton(
                                hoverColor: Colors.green.shade300.withOpacity(0.5),
                                icon: Icon(Icons.arrow_back, color: Colors.white),
                                  //onPressed: (){},
                                  onPressed: () => provider.navigateBack(),
                                      // () => Provider.of<MenuProvider>(context, listen: false).toggleFullSidebar(),
                                ),
                              title: Text(provider.currentMenuTitle, style: TextStyle(color: Colors.green.shade300)),
                              // onTap: () => provider.navigateBack(),
                              onTap: (){},
                            ),
                            Expanded(
                              child: ListView(
                                children: provider.currentSubMenuItems.map((sub) => SubMenuButton(subMenu: sub, onSelect: () => provider.selectSubMenu(sub))).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              );
            },
          ),
          Expanded(
            child: Column(
              children: [
                AppBarWidget(),
                Expanded(child: Center(child: Text('Main Content Area'))),
                FooterWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class MenuButton extends StatefulWidget {
  final Menu menu;
  final VoidCallback onSelect;

  const MenuButton({Key? key, required this.menu, required this.onSelect}) : super(key: key);

  @override
  _MenuButtonState createState() => _MenuButtonState();
}

class _MenuButtonState extends State<MenuButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onSelect,
        child: Container(
          margin: _isHovered ? EdgeInsets.symmetric(horizontal: 10) : null,
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: _isHovered ? Colors.grey[850] : Colors.transparent, // Change color on hover
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 10,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Icon(widget.menu.icon, color: Colors.white),
        ),
      ),
    );
  }
}

class SubMenuButton extends StatefulWidget {
  final Menu subMenu;
  final VoidCallback onSelect;

  const SubMenuButton({Key? key, required this.subMenu, required this.onSelect}) : super(key: key);

  @override
  _SubMenuButtonState createState() => _SubMenuButtonState();
}

class _SubMenuButtonState extends State<SubMenuButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) => setState(() => _isHovered = true),
      onExit: (event) => setState(() => _isHovered = false),
      child: InkWell(
        onTap: widget.onSelect,
        child: Container(
          margin: _isHovered ? EdgeInsets.symmetric(horizontal: 5) : null,
          decoration: BoxDecoration(
            color: _isHovered ? Colors.black.withOpacity(0.5) : Colors.grey[850],  // Hover color change
            borderRadius: BorderRadius.circular(10),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.5),
            //     spreadRadius: 1,
            //     blurRadius: 10,
            //     offset: Offset(0, 3),
            //   ),
            // ],
          ),
          child: ListTile(
            leading: Icon(widget.subMenu.icon, color: Colors.white),
            title: Text(widget.subMenu.title, style: TextStyle(color: Colors.white, ), ),
          ),
        ),
      ),
    );
  }
}



class AppBarWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => Provider.of<MenuProvider>(context, listen: false).toggleFullSidebar(),
          ),
          Text("Your Application"),
        ],
      ),
    );
  }
}

class FooterWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueGrey[100],
      width: double.infinity,
      padding: EdgeInsets.all(20),
      child: Text('Footer', textAlign: TextAlign.center),
    );
  }
}

class MenuProvider extends ChangeNotifier {
  bool sidebarVisible = true;
  List<Menu> menuStack = [];

    List<Menu> menus = [
    Menu(title: 'Settings', icon: Icons.settings, subMenus: [
      Menu(title: 'General', icon: Icons.tune),
      Menu(title: 'Billing', icon: Icons.credit_card, subMenus: [
        Menu(title: 'Billing History', icon: Icons.history),
        Menu(title: 'Payment Info', icon: Icons.payment, subMenus: [
          Menu(title: 'Cash', icon: Icons.money),
          Menu(title: 'Card', icon: Icons.add_card),
        ]),
      ]),
      Menu(title: 'Security', icon: Icons.security),
    ]),
    Menu(title: 'Profile', icon: Icons.person, subMenus: [
      Menu(title: 'Account Info', icon: Icons.account_circle),
      Menu(title: 'Change Password', icon: Icons.lock),
    ]),
    Menu(title: 'APIs', icon: Icons.api),
  ];

  Menu? get currentMenu => menuStack.isNotEmpty ? menuStack.last : null;
  String get currentMenuTitle => currentMenu?.title ?? 'Root';
  List<Menu> get currentSubMenuItems => currentMenu?.subMenus ?? [];

  bool get isSecondTierVisible => currentMenu != null && currentMenu!.subMenus.isNotEmpty;

  void toggleFullSidebar() {
    sidebarVisible = !sidebarVisible;
    notifyListeners();
  }

  void selectRootMenu(Menu menu) {
    menuStack.clear();
    menuStack.add(menu);
    notifyListeners();
  }

  void selectSubMenu(Menu submenu) {
    if (submenu.subMenus.isNotEmpty) {
      menuStack.add(submenu);
      notifyListeners();
    }
  }

  void navigateBack() {
    if (menuStack.isNotEmpty) {
      menuStack.removeLast();
      notifyListeners();
    }
  }
}

class Menu {
  String title;
  IconData icon;
  List<Menu> subMenus;

  Menu({required this.title, required this.icon, this.subMenus = const []});
}