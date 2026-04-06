import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});



  @override
  Widget build(BuildContext context) {

  final List<String> loginIcons = [
    'assets/images/login_1.jpeg',
    'assets/images/login_2.jpeg',
    'assets/images/login_3.jpeg',
  ];
  final List<String> loginText = [
    'Login with Google',
    'Continue with LinkedIn',
    'Continue with Email'
  ];

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            GestureDetector(
            onTap: () {Navigator.pop(context); },
            child: Row(
                  children: [
                  Container(
                    padding: EdgeInsets.all(3),
                    decoration: BoxDecoration(
                      color:  const Color.fromARGB(255, 17, 32, 57),
                      shape: BoxShape.circle,
                    
                    ),
                    child: Text('un', style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      
                    ),
                    ),
                  ),
                  Text('stop',style: TextStyle(
                    color:  const Color.fromARGB(255, 17, 32, 57),
                    fontSize: 30,
                              
                  ),
                  ),
                  ],
                  ),
          ),
                SizedBox(height: 10,),
                Text('Welcome to Unstop', style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
                ),
          
                Text('Use your email or another service to continue with unstop for FREE',maxLines: 2,),
                SizedBox(height: 20,),
          
                  LayoutBuilder(
                  builder: (context, constraints) {
                    double width = constraints.maxWidth;
                    double aspectRatio;

                    // Adjust breakpoints and ratios as you wish
                    if (width > 1300) {
                      aspectRatio = 30; // initial aspect ratio
                    } else if (width > 1200) {
                      aspectRatio = 25;
                    } else if (width > 1000) {
                      aspectRatio = 20;
                    }  else if (width > 770) {
                      aspectRatio = 18;
                    } else if (width > 500) {
                      aspectRatio = 14;
                    }  else {
                      aspectRatio = 10;
                    }

                    return GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 1,
                        mainAxisSpacing: 20,
                        childAspectRatio: aspectRatio,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return TextButton(
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.white,
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            side: const BorderSide(
                              color: Colors.black,
                              width: 0.8,
                            ),
                          ),
                          onPressed: () {},
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Image.asset(
                                  loginIcons[index],
                                  scale: 8,
                                ),
                              ),
                              Center(
                                child: Text(
                                  loginText[index],
                                  style: const TextStyle(
                                    color: Colors.black,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),

                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Don\'t have an accont?', style: TextStyle(color: Colors.black,fontSize: 16)),
                      Text('Sign up', style: TextStyle(color: const Color.fromARGB(255, 79, 33, 243),fontSize: 16))
                    ],
                  ),
                  SizedBox(height: 40,),
                  Align(
                    alignment: Alignment.center,
                    child: Text('By Signing in, you accept the Terms os Service and aclnowledge our Privacy Policy',maxLines: 2,)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}