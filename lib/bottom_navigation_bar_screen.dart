import 'package:flutter/material.dart';

class BottomNavigationBarScreen extends StatefulWidget {

  final String label;
  final IconData icon;

  const BottomNavigationBarScreen({
    required this.icon,
    required this.label,
    super.key
    });

  @override
  State<BottomNavigationBarScreen> createState() => _BottomNavigationBarScreenState();
}

class _BottomNavigationBarScreenState extends State<BottomNavigationBarScreen> {

  final List<String> labels = [
    '','Explore', 'Applied', 'Watchlist', 'Host',
  ];

  final List<IconData> icons = [
    Icons.abc ,Icons.manage_search_outlined, Icons.check_box_outlined, Icons.remove_red_eye_outlined, Icons.volume_up
  ];

  final List<String> labels_2 = [
    '','Explore', 'Booked', 'Masterclasses', 'Go Pro',
  ];

  final List<IconData> icons_2 = [
    Icons.abc ,Icons.manage_search_outlined, Icons.check_box_outlined, Icons.play_circle_outline, Icons.workspace_premium_sharp
  ];


  @override
  Widget build(BuildContext context) {
    int selectedNavBarItem = 0;

    return SafeArea(child: Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration: InputDecoration(
            prefixIcon: Icon(Icons.search, size: 30,),
            hintText: 'Search ${widget.label}',
            border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(171, 110, 110, 110),
                            width: 2,
                          )
                        )
          ),
        ),
      ),

      body: Center(
        child: Text('App Under Construction',style: TextStyle(color: Colors.black,fontSize: 20),),
      ),

      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.black,
        onTap: (value) {
          setState(() {
            selectedNavBarItem = value;
            });
        },
        currentIndex: selectedNavBarItem,
        items: 
          List.generate(labels.length, 
          (index) => widget.label == 'Mentorships'? BottomNavigationBarItem(
            icon: index == 0? Icon(widget.icon) : Icon(icons_2[index],
              ),
            label: index == 0? widget.label : labels_2[index]
              ) : BottomNavigationBarItem(
            icon: index == 0? Icon(widget.icon) : Icon(icons[index],
              ),
            label: index == 0? widget.label : labels[index]
              ),
          )
          

      ),
    ));
  } //index == 0? Icon(widget.icon):   index == 0? widget.label:
}