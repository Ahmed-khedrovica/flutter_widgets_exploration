import 'package:flutter/material.dart';
import 'package:flutter_widgets_exploration/widgets/advanced_animation.dart';
import 'package:flutter_widgets_exploration/widgets/dismissible_lists.dart';
import 'package:flutter_widgets_exploration/widgets/physics_widget.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int currentIndex = 0;

  final List<Widget> screens = [
    DismissibleLists(),
    PhysicsWidget(),
    AdvancedAnimation(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsetsGeometry.all(18),
            child: screens[currentIndex],
          ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected:
            (index) => setState(() => currentIndex = index),
          selectedIndex: currentIndex,
          destinations: [
            NavigationDestination(
                icon: Icon(Icons.list),
                label: 'Task 1',
            ),
            NavigationDestination(
              icon: Icon(Icons.view_comfortable_sharp),
              label: 'Task 2',
            ),
            NavigationDestination(
              icon: Icon(Icons.animation),
              label: 'Task 3',
            )
          ],
      ),
    );
  }
}
