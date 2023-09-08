import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  MyHomePage(),
    );
  }
}
class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Strawberry Pavlova'),
      ),
    body: Row(
      children: [

        Container(
            margin: EdgeInsets.only(top: 5),
            width: 250,
            height: 400 ,
            decoration: BoxDecoration(
              border: Border.all(width:3),
            color: Color(0xffFFFEFE),
            ),

          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  width:225,
                  margin: EdgeInsets.only(top:10),
                  decoration: BoxDecoration(
                    color: Color(0xffD9E1E8),
                    border: Border.all(
                      width:3,
                      color:Color(0xff5F6B78),
                    ),
                  ),
                  child: Center(
                    child: Text('Strawberry pavlova',style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold) ,),
                  ),
                ),
                SizedBox(
                  height:10,
                ),
                Container(
                //  alignment: Alignment.,

                  width: 225,
                  height: 90,

                  decoration: BoxDecoration(
                    color: Color(0xffD9E1E8),
                    border: Border.all(
                      width:3,
                      //padding:EdgeInsets.only(top:5)
                      color:Color(0xff5F6B78)
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text('pavlova is meringue-based dessert named after Russian ballerine Anna Pavlova pavlova features a crispy crust and soft,light inside,topped with fruit and whipping cream',textAlign: TextAlign.justify, style:TextStyle(fontSize: 15) ,),
                  ),
                 ),
                 SizedBox(
                  height: 5,
                 ),
                Container(

                  width: 225,
                  height: 25,
                  decoration: BoxDecoration(
                    color: Color(0xffD9E1E8),
                    border: Border.all(
                        width:3,
                        //padding:EdgeInsets.only(top:5)
                        color:Color(0xff5F6B78)
                    ),
                  ),
                    child: Row(
                        children: [
                        Row(
                        children:[

                          SizedBox(
                            width: 15),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                          Icon(Icons.star, size: 16,),
                        ],
                    ),
                          SizedBox(
                            width: 30,
                          ),
                          Text('170 reviews',style: TextStyle(fontSize: 15),)
                        ],
                ),
                ),
                  SizedBox(
                    height:15 ,
                  ),
                  Container(
                    width: 225,
                    height: 75,
                  decoration: BoxDecoration(
                    color: Color(0xffD9E1E8),
                    border: Border.all(
                      width:3,
                      //padding:EdgeInsets.only(top:5)
                      color:Color(0xff5F6B78)
                    ),
                  ),
                 child: Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Icon(Icons.kitchen,size: 16,),
                       Text('PREP:',style: TextStyle(fontSize: 12),),
                       Text('25mins',style: TextStyle(fontSize: 12),),
                     ],
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       children: [
                         Icon(Icons.alarm,size: 16,),
                         Text('COOK:',style: TextStyle(fontSize: 12),),
                         Text('1hr',style: TextStyle(fontSize: 12),),
                       ],
                   ),
                   SizedBox(
                     width: 20,
                   ),
                   Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.restaurant,size: 16,),
                          Text('PREP:',style: TextStyle(fontSize: 12),),
                          Text('4-6',style: TextStyle(fontSize: 12),),
                        ],



                      )
                 ],
                  ),
                ),
              ],
            ),
          )
        ),Image.asset('assets/images/cake.jpg', fit: BoxFit.fill,width: 590,height: 400,),
    ],
    ),
    );
  }
}
