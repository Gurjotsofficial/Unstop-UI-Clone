import 'package:flutter/material.dart';

 final List<Color> gridViewColors = [
       const Color.fromARGB(255, 142, 244, 145),
       const Color.fromARGB(255, 255, 133, 81),
       const Color.fromARGB(255, 142, 175, 233),
       const Color.fromARGB(255, 211, 115, 255),
       const Color.fromARGB(255, 255, 221, 99),
       const Color.fromARGB(255, 255, 112, 203),
    ];

    final List<List<dynamic>> featuredOpportunityGrid = [
      ['Win Prizes worth 26\nLakhs & Merchandise', 'Dream Internships with\nTATA Group', 'EY Techathin 6.0\nGrab PPIs & Rewards', 'Earn 1 Lakh/month with\n your Sparkplug Summer', 'HP Power Lab 2.0 | Cash\nPrize of 5 Lakhs'],
      [8089, 850532, 161058, 75, 119051 ],
      [14, 10, 7, 9, 3],
      [
        'assets/images/robotics-courses.jpg',
        'assets/images/Image_2.jpg',
        'assets/images/Image_3.jpeg',
        'assets/images/Image_4.jpeg',
        'assets/images/Image_5.jpeg',
      ],
    ];

    final List<Widget> gridViewTexts_1 = [
      Text('Internships',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),),
      Text('Mentorship', style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),),
      Text('Jobs',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),),
      Text('Practice', style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),),
      Text('Competition',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),),
      Row(
        children: [ 
          Icon(Icons.grid_view_outlined),
          SizedBox(width: 10),
          Text('More',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),),
        ],
      ),
    ];

    final List<Widget> gridViewTexts_2 = [
      Text('Gain'),
      Text('Guidance'),
      Text('Explore'),
      Text('Refine'),
      Text('Battle'),
      Text(''),
    ];

    final List<Widget> gridViewTexts_3 = [
       Text('Practical Experience',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),
       Text('From Top Mentors', style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),
       Text('Diverse Careers', style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),
       Text('Skills Daily',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),
       Text('For Excellence', style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),
       Text('',  style: TextStyle(
                            color: Colors.black,
                            fontSize: 18
                          ),
                          ),

    ];


    // SECOND GRID MATERIAL

    final List<String> grid_2Text_1 = [
       'Students and Professionals',
       'Companies and Recruiters',
       'College',
    ];
    final List<String> grid_2Text_2 = [
       'Unlock Your Potential',
       'Discover Roght Talent:',
       'Bridge Academia and Industry',
    ];
    final List<String> grid_2Text_3 = [
        'Compete, Build Resume, Grow and get Hired!',
       'Hire, Engage, and Brand Like Never Before',
       'Empower Students With Real-World Opportunities!',
    ];

    // GRID THREE

    final List<Widget> grid_4Text_1 = [
       Text('Sacred Rivers- Sustainable Futures', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                          ),
       Text('Founder\'s\nArena', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                          ),
       Text('IPL Auctions 21st E-Summit', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                          ),
       Text('Bid and Build - 21st E-Summit', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                          ),
       Text('C-Suite The Boardroom Challenge 9.0', style: TextStyle(
                            color: Colors.black,
                            fontSize: 20
                          ),
                          ),
    ];
    final List<Widget> grid_4Text_2 = [
       Text('Indian Institue of Technology', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
       Text('Amit Ram Sanatan Dharma College', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
       Text('Indian Institue of Technology', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
       Text('Indian Institue of Technology', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
       Text('Indian Institue of Technology', style: TextStyle(
                            color: Colors.black,
                            fontSize: 10,
                          ),
                          ),
       
    ];

    final List<int> grid_4Views= [299,5,9,2,10];
    final List<int> grid_4Hours= [5,5,1,12,10];
    final List<String> grid_4Images = [
      'assets/images/logo_11.jpeg',
        'assets/images/logo_12.jpeg',
        'assets/images/logo_13.jpeg',
        'assets/images/logo_14.jpeg',
        'assets/images/logo_15.jpeg',
        'assets/images/logo_16.jpeg',
    ];



    final List<List<String>> internshipsGrid = [
      ['Content Writer\nInternship', 'Business Development\nInternship', 'Customer Success\nInternship', 'Growth & Marketing\nInternship', 'MERN Developer Internship' ,'React Native\nInternship'],

      ['Cars24', 'Exly', 'Exly', 'Exly', 'Isaai', 'Dev Innovative Labs'],

      ['22 Views', '23 Views', '21 Applied', '12 Applied', '9 Applied', '11 Views'],

      ['Gurgaon', 'Gurgaon', 'Gurgaon', 'Gurgaon', 'Not Disclosed', 'Not Disclosed' ],

      [
        'assets/images/logo_1.jpeg',
        'assets/images/logo_2.jpg',
        'assets/images/logo_3.webp',
        'assets/images/logo_4.jpeg',
        'assets/images/logo_5.webp',
        'assets/images/logo_3.webp',
        
      ],

    ];

    final List<List<String>> jobsGrid = [
      ['Territory Manager', 'Sales Operations Analyst', 'Territory Sales Manager', 'Business Analyst', 'F&A Manager' ,'Analyst- US Seperations'],

      ['Solenis', 'Morningstar India Pvt ltd', 'Hero', 'Osmos Global Pvt ltd', 'Procter & Gamble (P&G)', 'Deloitte'],

      ['22', '23', '21', '12', '9', '11'],
      ['Views', 'Views', 'Views', 'Views', 'Views', 'Views'],

      ['Mumbai', 'Gurgaon', 'Patna', 'Pune', 'Mumbai', 'Hyderabad' ],

      
      [
        'assets/images/logo_5.webp',
        'assets/images/logo_6.jpeg',
        'assets/images/logo_7.jpeg',
        'assets/images/logo_8.jpeg',
        'assets/images/logo_9.jpeg',
        'assets/images/logo_10.jpeg',
      ],

    ];