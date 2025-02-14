import 'package:flutter/material.dart';
import '../widget/medium_contianer.dart';
import '../widget/reusable_container.dart';
import '../widget/reusable_text.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now();

    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.account_circle),

          //The Button for Calendar
          onPressed: () {},
        ),
        backgroundColor: Colors.pink.shade50,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Icon(Icons.calendar_month),
          )
        ],
        title: Text('${now.day} January '),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //THE FIRST WIDGET THAT SHOW THE TRACKING OF OVULATION
            ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.elliptical(500, 30),
                  bottomRight: Radius.elliptical(500, 30)),
              child: Container(
                height: height * 0.35,
                width: double.infinity,
                decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.pink.shade50,
                    Colors.pink.shade100,
                    Colors.pink.shade300,
                    Colors.pink.shade400
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
                ),
                child: Column(
                  children: [
                    Row(
                      children: [
                        //THIS FIRST ROW WILL BE THAT OF A CALENDAR
                      ],
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      'Period:',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Day 1',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                    ),
                    Container(
                      alignment: Alignment.center,
                      height: 25,
                      width: 125,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white),
                      child: Text(
                        'Edit period dates',
                        style: TextStyle(color: Colors.pink),
                      ),
                    )
                  ],
                ),
              ),
            ),
            ReusableText(
              text: 'My daily insights . Today',
              size: 18,
              weight: FontWeight.bold,
            ),
            //THE SMALL CONTAINERS IN ROW
            SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 8),
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 4, right: 2.5),
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            image: NetworkImage(
                                'https://github.com/exson6969/PCOS_App/blob/main/Screenshots/Screenshot_2022-06-01-18-17-05-867_com.example.pcos.jpg')),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.pink)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 4, right: 2.5),
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.pink)),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 4, right: 2.5),
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.pink)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 5, left: 4, right: 2.5),
                      height: 110,
                      width: 90,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(width: 2, color: Colors.pink))),
                  Container(
                    margin: EdgeInsets.only(top: 5, left: 4, right: 2.5),
                    height: 110,
                    width: 90,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(width: 2, color: Colors.pink)),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Container(
              padding: EdgeInsets.all(8),
              margin: EdgeInsets.symmetric(horizontal: 15),
              height: height * 0.35,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://github.com/exson6969/PCOS_App/blob/main/Screenshots/Screenshot_2022-06-01-18-17-05-867_com.example.pcos.jpg '),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ReusableText(
                      text: 'Suggestions', size: 15, weight: FontWeight.bold),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Divider(
                      height: 6,
                      color: Colors.black,
                      thickness: 0.8,
                    ),
                  )
                ],
              ),
            ),
            MediumContainer(
                bgImage:
                    'https://imgs.search.brave.com/8B9wwSALV5KYQVBaOkB1noYsLi-SE5E0LYG76grzccc/rs:fit:500:0:0:0/g:ce/aHR0cHM6Ly9oZXlk/YXlib3plbWFuLmNv/bS9jZG4vc2hvcC9m/aWxlcy9za2ktbGlr/ZS1hLWdpcmwtYm9u/ZS1pbS1kaWZmaWN1/bHQtY3Jld25lY2st/c3dlYXRzaGlydC05/NzYwOTEucG5nP3Y9/MTczMTg5NTE4MyZ3/aWR0aD0xMDgw',
                text: 'What the color of your period tells you.')
          ],
        ),
      ),
    );
  }
}
