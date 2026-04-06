import 'package:flutter/material.dart';
import 'package:unstop_clone/Pages/login_page.dart';
import 'package:unstop_clone/bottom_navigation_bar_screen.dart';
import 'package:unstop_clone/home_page_grid_material.dart';
import 'package:unstop_clone/mock_test_material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {


  final textFieldBorder =  OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                          borderSide: BorderSide(
                            color: const Color.fromARGB(171, 110, 110, 110),
                            width: 2,
                          )
                        );

  int selectedchip = -1;

  int selectedNavBarItem = 0;

  final List<String> labels = [
    'Unstop', 'Internships', 'Jobs', 'Competitions', 'Mentorships', 'More'
  ];

  final List<IconData> icons = [
    Icons.home, Icons.work_history_outlined, Icons.cases_outlined, Icons.star_border, Icons.person_outline, Icons.list_outlined
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(115, 181, 206, 250),
          title: Row(
            children: [
              Container(
                padding: EdgeInsets.all(3),
                decoration: BoxDecoration(
                  color:  const Color.fromARGB(255, 17, 32, 57),
                  shape: BoxShape.circle,
      
                ),
                child: Text('un', style: TextStyle(
                  color: Colors.white,
                  
                ),
                ),
              ),
              Text('stop',style: TextStyle(
                color:  const Color.fromARGB(255, 17, 32, 57),
              ),
              )
            ],
          ),
      
          actions: [
            TextButton(onPressed: () {
               Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LoginPage() 
              ),
              );}, 
            style: TextButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 6, 64, 238),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)
              )
            ),
            child:  Text('Login', style: TextStyle(
              color: Colors.white,
            ),
            ),
            ),
      
            IconButton(onPressed: () {}, icon: Icon(Icons.shopping_bag_outlined),
            ),
          ],
      
      
      ),
      body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                  color: const Color.fromARGB(115, 181, 206, 250),
                  ),
          
                    child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Hii,', style: TextStyle(
                          fontSize: 32,
                          color:  const Color.fromARGB(255, 17, 32, 57),
                          fontWeight: FontWeight.w500,
          
                        ),
                        ),
          
                        Text('Unlock Your Career', style: TextStyle(
                          fontSize: 32,
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
          
                        ),
                        ),
                        SizedBox(height: 20),
          
                        TextField(
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search),
                            hintText: 'Search Opportunities',
                            border: textFieldBorder,
                            enabledBorder: textFieldBorder,
                            focusedBorder: textFieldBorder,
                            )
                          ),
                      ],

                      
          
                    ),
                  ),
                  
                  LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth;
                    double aspectRatio;

                    if (width > 1212) {
                      aspectRatio = 5;
                    } else if (width > 960) {
                      aspectRatio = 4;
                    } else if (width > 735) {
                      aspectRatio = 3;
                    } else if (width > 590) {
                      aspectRatio = 2.2;
                    }  else if (width > 499) {
                      aspectRatio = 1.8;
                    } else if (width > 400) {
                      aspectRatio = 1.2;
                    }  else {
                      aspectRatio = 1;
                    }

                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      padding: const EdgeInsets.all(20),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        mainAxisSpacing: 20,
                        crossAxisSpacing: 20,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: gridViewColors.length,
                      itemBuilder: (context, index) {
                        return Container(
                          padding: const EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            color: gridViewColors[index],
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              gridViewTexts_1[index],
                              gridViewTexts_2[index],
                              gridViewTexts_3[index],
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),

          
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: TextButton(
                      
                      style: TextButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 211, 33),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        )
                      ),
                      onPressed: () {},  
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.business_center,color: Colors.black, size: 20,),
                            SizedBox(width: 10),
                            Text('Unstop For Business', style: TextStyle(color: Colors.black, fontSize: 20),),
                            SizedBox(width: 10),
                            Icon(Icons.arrow_forward,color: Colors.black,size: 20),
                          ],
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30,),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Who\'s Using Unstop?', style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    ),
                    ),
                  ),
                  
                  LayoutBuilder(
                    builder: (context, constraints) {
                      double width = constraints.maxWidth;
                      double aspectRatio;

                      // You can adjust these breakpoints later
                      if (width > 1200) {
                        aspectRatio = 10; // your initial ratio
                      } else if (width > 1050) {
                        aspectRatio = 9; // your initial ratio
                      } else if (width > 975) {
                        aspectRatio = 8; // your initial ratio
                      } else if (width > 800) {
                        aspectRatio = 6;
                      } else if (width > 700) {
                        aspectRatio = 6;
                      } else if (width > 500) {
                        aspectRatio = 4;
                      } else {
                        aspectRatio = 2.2;
                      }

                      return GridView.builder(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: const EdgeInsets.all(20),
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1,
                          mainAxisSpacing: 20,
                          childAspectRatio: aspectRatio,
                        ),
                        itemCount: grid_2Text_1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 0.3,
                              ),
                              color: Colors.white,
                              borderRadius: const BorderRadius.all(Radius.circular(30)),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  grid_2Text_1[index],
                                  style: Theme.of(context).textTheme.titleLarge,
                                ),
                                Text(
                                  grid_2Text_2[index],
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                                Text(
                                  grid_2Text_3[index],
                                  style: Theme.of(context).textTheme.titleMedium,
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),

                  SizedBox(height: 30),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text('Featured Opportunities', style: TextStyle(
                      color: Colors.black,
                      fontSize: 25
                    ),
                    ),
                  ),
                  SizedBox(height: 10),

                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 320,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, 
                          crossAxisSpacing: 20, 
                          mainAxisSpacing: 20,
                          ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: featuredOpportunityGrid[0].length,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                                  child: Image.asset(
                                    featuredOpportunityGrid[3][index],
                                    
                                    height: 140,
                                    width: double.infinity,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: SizedBox(height: 150,
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(featuredOpportunityGrid[0][index], style: TextStyle(color: Colors.black, fontSize: 20),),
                                          Text('Free | Online', style: TextStyle(color: Colors.black, fontSize: 15),),
                                        ],
                                      ),
                                      
                                                                        
                                      Column(
                                        children: [
                                          Row(
                                          children: [
                                            Icon(Icons.people_alt_outlined),
                                            Text(' ${featuredOpportunityGrid[1][index]} Registered'),
                                            ],
                                            ),
                                      
                                                                      
                                                                        Row(
                                                                        children: [
                                      Icon(Icons.access_time_outlined),
                                      Text(' ${featuredOpportunityGrid[2][index]} Days left')
                                        ],
                                      ),
                                        ],
                                      ),
                                    ],
                                                                    ),
                                  ),

                            ),
                            ],
                            ),
                          );
                      
                      }),
                    ),
                  ),

                  SizedBox(height: 30),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Competitions', style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),
                        ),
                        TextButton(onPressed: () {}, child: Text('View all'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 320,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, 
                          crossAxisSpacing: 20, 
                          mainAxisSpacing: 20,
                          ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: grid_4Text_1.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          
                                          child: Image.asset(
                                            grid_4Images[index],
                                            height: 70,
                                            width: 70,
                                          ),
                                        ),
                                      ),
                                SizedBox(height: 10,),
                      
                                grid_4Text_1[index],
                                grid_4Text_2[index],

                                    ],
                                  ),

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(Icons.remove_red_eye_outlined),
                                        Text(' ${grid_4Views[index]} Applied')
                                      ],
                                    ),
                                Row(
                                  children: [
                                    Icon(Icons.access_time_outlined),
                                    Text(' ${grid_4Hours[index]} hours left')
                                  ],
                                ),
                                  ],
                                )
                              ],
                            )
                          );
                      
                      }),
                    ),
                  ),

                  SizedBox(height: 30),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Internships', style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),
                        ),
                         TextButton(onPressed: () {}, child: Text('View all'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),


                  // INTERNSHIPS GRID
                  
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 320,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, 
                          crossAxisSpacing: 20, 
                          mainAxisSpacing: 20,
                          ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: internshipsGrid[0].length,
                        itemBuilder: (context, index) {
                          return Container(
                            
                            padding: EdgeInsets.all(10),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          
                                          child: Image.asset(
                                            internshipsGrid[4][index],
                                            height: 70,
                                            width: 70,
                                          ),
                                        ),
                                      ),
                                SizedBox(height: 10,),
                      
                                Text(internshipsGrid[0][index], style: Theme.of(context).textTheme.titleLarge),
                                Text(internshipsGrid[1][index], style: Theme.of(context).textTheme.titleMedium),
                                    ],
                                  ),


                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(internshipsGrid[2][index] == 'Views'? Icons.remove_red_eye_outlined: Icons.people_alt_outlined),
                                        Text(internshipsGrid[2][index]),
                                      ],
                                    ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text(internshipsGrid[3][index]),
                                  ],
                                )
                                  ],
                                ),
                              ],
                            )
                          );
                      
                      }),
                    ),
                  ),


                  // JOBS GRID

                  SizedBox(height: 30),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Jobs', style: TextStyle(
                          color: Colors.black,
                          fontSize: 25
                        ),
                        ),
                         TextButton(onPressed: () {}, child: Text('View all'))
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  
                    Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SizedBox(
                      height: 320,
                      child: GridView.builder(
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1, 
                          crossAxisSpacing: 20, 
                          mainAxisSpacing: 20,
                          ),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemCount: jobsGrid[0].length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: EdgeInsets.all(10),
                            width: 100,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black,
                                width: 1
                              ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(4),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            width: 0.5,
                                            color: Colors.black,
                                          ),
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                        ),
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.all(Radius.circular(10)),
                                          
                                          child: Image.asset(
                                            jobsGrid[5][index],
                                            height: 70,
                                            width: 70,
                                          ),
                                        ),
                                      ),
                                SizedBox(height: 10,),
                      
                                Text(jobsGrid[0][index], style: Theme.of(context).textTheme.titleLarge),
                                Text(jobsGrid[1][index], style: Theme.of(context).textTheme.titleMedium),
                                    ],
                                  ),
                                

                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                         Icon(jobsGrid[3][index] == 'Views'? Icons.remove_red_eye_outlined: Icons.people_alt_outlined),
                                        Text('${jobsGrid[2][index]} ${jobsGrid[3][index]}' ),
                                      ],
                                    ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined),
                                    Text(jobsGrid[4][index]),
                                  ],
                                )
                                  ],
                                ),
                              ],
                            )
                          );
                      
                      }),
                    ),
                  ),
                  SizedBox(height: 30,),

                  Padding(padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Company Mock Tests', style: TextStyle(
                              color: Colors.black,
                              fontSize: 25
                            ),
                            ),
                             TextButton(onPressed: () {}, child: Text('View all'))
                          ],
                      ),
                      SizedBox(height: 10,),
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        height: 50,
                        width: double.infinity,
                        child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: 3,
                            itemBuilder: (context,index) {
                              final bool isselected = selectedchip == index;
                            return GestureDetector(
                              onTap: (){
                                setState(() {
                                  selectedchip = index;
                                });
                              },
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 8),
                                child: Chip(
                                  label: Text(mockFilter[index]),
                                labelStyle: TextStyle(backgroundColor: Colors.transparent
                                ),
                                backgroundColor: Colors.transparent,
                                shape: StadiumBorder(
                                  side: BorderSide(
                                    color: isselected? Colors.black: Colors.transparent,
                                    width: 1,
                                  )
                                ),
                                )
                              )
                              
                            );
                          }
                        ),
                      ),
                      SizedBox(height: 10,),
                      
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20),
                          child: SizedBox(
                            height: 300,
                            child: GridView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisSpacing: 20,
                              crossAxisCount: 1
                              ),
                              itemCount: mockColumns[2].length, 
                              itemBuilder: (context,index) {
                                return Container(
                                  padding: EdgeInsets.all(10),
                                  decoration: BoxDecoration(
                                  border: Border.all(
                                  color: Colors.black,
                                  width: 1
                                  ),
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25)
                            ),
                                  child: Column(
                                    children: [
                                      Container(
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                          color: const Color.fromARGB(44, 146, 103, 154),
                                          borderRadius: BorderRadius.circular(15)
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(vertical: 10),
                                          child: ClipRRect(
                                            child: Image.asset(mockColumns[0][index],height: 70,width: 70,),
                                          ),
                                        ),
                                      ),
                                      SizedBox(height: 10,),
                                      SizedBox(height: 160,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(mockColumns[1][index], style: TextStyle(color: Colors.black, fontSize: 18)),
                                            SizedBox(height: 5,),
                                            Text(mockColumns[2][index], style: TextStyle(color: Colors.black, fontSize: 14)),
                                              ]
                                            ),
                                            
                                            Column(
                                              children: [
                                                Divider(),
                                            Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children: [
                                            Text('Start Test', style: TextStyle(color: Colors.black, fontSize: 14),),
                                            Icon(Icons.arrow_outward_rounded,size: 14,)
                                             ],
                                            ),
                                            ],
                                            )
                                            
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                );
                              })
                          ),
                          ),

                    ],
                  ),
                  )
                ],
          ),
        ),

        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.black,
          selectedFontSize: 15,
          unselectedFontSize: 15,
          iconSize: 30,
          onTap: (value) {
            setState(() {
            selectedNavBarItem = value;
            });
            if(selectedNavBarItem != 0 && selectedNavBarItem != 5){
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BottomNavigationBarScreen(
                icon: icons[selectedNavBarItem], label: labels[selectedNavBarItem]
                ),
                ),
               );
            }
            if(selectedNavBarItem == 5){
              showModalBottomSheet(context: context,
              isScrollControlled: true,
              backgroundColor: Colors.white,
               builder: (context) {
                return FractionallySizedBox(
                  heightFactor: 0.4,
                  widthFactor: 1,
                  child: SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(padding: EdgeInsets.all(16),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('Explore More', style: Theme.of(context).textTheme.titleLarge,),
                            IconButton(onPressed: () { Navigator.of(context).pop(); }, icon: Icon(Icons.close_rounded))
                          ],
                        ),
                        ),
                        Divider(),
                        Expanded(child: Center(
                          child: Text('App Under Construction', style: Theme.of(context).textTheme.titleLarge,),
                        ))
                      ],
                    
                    ),
                  ),  
                );
               } 
               );
            }
          },
          currentIndex: selectedNavBarItem,
          items: List.generate(
            labels.length, (index) => BottomNavigationBarItem(
              icon: Icon(icons[index]),
              label: labels[index]

            ),
            ),
        ),
      ),
      );
  }
}