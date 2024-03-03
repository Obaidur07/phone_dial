import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

import 'UI_Screen.dart';

void main() {
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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dialler Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String nums = "";
  _callNumber() async{
    String op = nums; //set the number here
    bool? res = await FlutterPhoneDirectCaller.callNumber(op);
  }
  String onKeyTap(String nums){
    setState(() {
      nums = nums;
    });
    return nums;
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF303030),
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text("Simple Dialler App",style: TextStyle(color: Colors.white),)),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(30),topRight: Radius.circular(30))
            ),
            padding: EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
            width: double.maxFinite,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(20),
                  height: 70,
                  width: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white,width: 0.2),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      nums ==""?
                      Text("Enter the Number",style: TextStyle(color: Colors.grey),):
                      Text(onKeyTap(nums),style: TextStyle(color: Colors.grey),),
                      GestureDetector(
                        onTap: (){
                          nums = nums.substring(0, nums.length - 1);
                          onKeyTap(nums);
                        },
                          child: Icon(Icons.backspace,color: Colors.grey,)),
                    ],
                  ),
                ),
                SizedBox(height: 15,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:(){
                        nums = nums+"1";
                        onKeyTap(nums);
                      },
                        child: UiScreen(text: '1',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        nums = nums+"2";
                        onKeyTap(nums);
                      },
                        child: UiScreen(text: '2',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                      onTap: (){
                        nums = nums+"3";
                        onKeyTap(nums);
                      },
                        child: UiScreen(text: '3',)),
                  ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap:(){
                          nums = nums+"4";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '4',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"5";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '5',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"6";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '6',)),                 ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap:(){
                          nums = nums+"7";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '7',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"8";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '8',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"9";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '9',)),                 ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                        onTap:(){
                          nums = nums+"*";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '*',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"0";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '0',)),
                    SizedBox(width: 10,),
                    GestureDetector(
                        onTap: (){
                          nums = nums+"#";
                          onKeyTap(nums);
                        },
                        child: UiScreen(text: '#',)),                 ],
                ),
                SizedBox(height: 10,),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap:(){
                        _callNumber();
                        nums = "";
                        onKeyTap(nums);
                      },
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.white,
                        ),
                          child: Icon(Icons.call,color: Colors.green,)
                      ),
                    ),
                  ]
                ),
              ],
            ),
          ),
        ],
      )

    );
  }
}