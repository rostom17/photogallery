

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mood extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Center(
          child: Text(
            "Photo Gallery",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w500, color: Colors.white),
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            CupertinoIcons.chevron_back,
            size: 45,
            color: Colors.white,
            shadows: [],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                CupertinoIcons.ellipsis_vertical,
                size: 45,
                color: Colors.white,
              )),
        ],
      ),

      body:OrientationBuilder(
          builder: (context, orientation){
            if(orientation == Orientation.portrait){
              return Column(

                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Container(
                        height: 325,
                        width: 390,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(
                            image: AssetImage('images/mood.jpeg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            Text("Mood With Nature\n",
                            style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.black),
                            ),
                            //Text("Being in nature, or even viewing scenes of nature, reduces anger, fear, and stress and increases pleasant feelings")

                          ],
                        ),
                      )
                    )
                  ),

                  Expanded(
                    child: GridView(
                      padding: EdgeInsets.all(10.00),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1,
                        crossAxisSpacing: 15,
                        mainAxisSpacing: 15,
                      ),
                      children: [
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage('images/dawn.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Dawn',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            image: DecorationImage(
                              image: AssetImage('images/leaves.jpeg'),
                              fit: BoxFit.cover,
                            ),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Leaves',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              );
            }
            else{
              return Container(

              );
            }
          }
      ),

    );
  }
}