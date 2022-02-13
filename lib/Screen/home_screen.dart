import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 0,
            right: 0,
            left: 0,
              child: Container(
                height: 259,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/images/Rectangle 9.png"),
                        fit: BoxFit.fill)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 35, left: 23,),
                      child: Row(
                        children: [
                          Container(
                            height: 32,
                            width: 71,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.black54,
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(

                                children: [
                                  SizedBox(
                                    width: 8,
                                  ),
                                 Image.asset('assets/images/Icon feather-share.png'),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Image.asset('assets/images/Icon feather-share.png'),
                                ],
                              ),
                            ),
                          ),
                          Spacer(),
                          Padding(
                            padding: const EdgeInsets.only(right: 23.0),
                            child: Container(
                              height: 32,
                              width: 32,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(30),
                                color: Colors.black54,
                              ),
                              child: Image.asset('assets/images/Group 1035@2x.png'),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset('assets/images/play-button (1).png'),
                  ],
                ),
              ),

            ),
            Padding(
              padding: const EdgeInsets.only(top: 220),
              child: Container(
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(40),
                    topRight:Radius.circular(40),),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.3),
                      blurRadius: 15,
                      spreadRadius: 5,
                    )
                  ]
              ),
                child: Padding(
                  padding: const EdgeInsets.all(22.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 90,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              color: Colors.orange,
                            ),
                            child: Center(child: Text('BIOTHECH',
                            style: TextStyle(color: Colors.white,
                                fontWeight: FontWeight.bold),)),

                          ),
                          Spacer(),
                          Text('7 Jan, 2022')
                        ],
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text('Boehringer Ingelheim Animal Health Establishes Pawru for its PetPro Portfolio'
                      ,style: TextStyle(fontWeight: FontWeight.bold),),
                      SizedBox(
                        height: 12,
                      ),
                       Text('Humans depends on livestock for survival and Animal Health has always been an issue to look for since it directly reflects the betterment of human life For a country’s economy and balanced human life, proper care and disease-free health of animals play a key role. Since rapid environmental change has targeted animal health, it becomes important to expand the innovation procedure in the field of medicines meant for animal health In the Top 20 ledgers, Zoetis ensured the top position with total revenue of 6.67B. Our team at PharmaShots has compiled the report of the top 20 Animal Health companies based on the 2020 animal health revenue'),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        height: 44,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Colors.orange,
                        ),
                        child: Center(child: Text('TAP HERE TO READ FULL STORY',
                        style: TextStyle(color: Colors.white,
                            fontWeight: FontWeight.bold),)),

                      ),
                      TextButton(onPressed: () {

                      }, child: Text('Swipe left to see the related news')),
                    ],
                  ),
                ),
              ),
            ),


          ],
        ),
      ),
    );
  }
}
