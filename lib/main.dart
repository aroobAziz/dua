import 'package:dua/new.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, }) : super(key: key);





  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin {

  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);


  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text("Chamman",style: TextStyle(
          fontWeight: FontWeight.bold,color: Colors.black,
        ),),
        centerTitle: true,
        backgroundColor: Colors.purpleAccent,
      ),
      body:Stack(
        children: [
          Container(
            height: 170,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(

              image: DecorationImage(
                image: AssetImage("assets/u.jpg"),
                fit: BoxFit.cover
              ),

            ),
          ),

          Padding(padding: const EdgeInsets.only(top: 80,right: 50,left: 50,),

           child: Container(
decoration: BoxDecoration(
  color: Colors.purpleAccent,
  borderRadius: BorderRadius.circular(10)
      
),


             height: 350,
             width: 250,
             child: Container(
               child: Column(
                 children: [
                   Padding(
                     padding: const EdgeInsets.all(12.0),
                     child: Material(
                       borderRadius: BorderRadius.circular(18),
                       elevation: 1,
                       color: Colors.white,
                       child: Container(
                         height: 35,
                         width: 150,
                         decoration: BoxDecoration(

                            color: Colors.white,
                           borderRadius: BorderRadius.circular(15),
                         ),
                         child: Padding(
                           padding: const EdgeInsets.all(0.0),
                           child: TabBar(
                             onTap: (i) => print(i),
                             controller: _tabController,
                             indicator: BoxDecoration(
                                 color: Colors.pink,
                                 borderRadius: BorderRadius.circular(15)),
                             unselectedLabelColor: Colors.grey,
                             isScrollable: true,
                             tabs: [
                               Tab(
                                 text: 'Login',
                               ),
                               Tab(text: 'Sign Up'),


                             ],
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(height: 15,),
                   TextField(
                     decoration: InputDecoration(
                       hintText: 'Email',
                       prefixIcon: Icon(Icons.email),
                     ),
                   ),
                   TextField(
                     obscureText: true,
                     decoration: InputDecoration(
                       hintText: 'Password',
                       prefixIcon: Icon(Icons.password_sharp),
                       suffixIcon: Icon(Icons.remove_red_eye)

                     ),
                   ),
                   Padding(
                     padding: EdgeInsets.only(top:20),
                     child: SizedBox(
                       width: 120,

                       child: InkWell(
                         child: TextButton(
                           onPressed:  () {
                             Navigator.of(context).push(MaterialPageRoute(
                               builder: (_) => Home(),
                             ));
                           },
                           child: Text(
                             'Login',
                             style: TextStyle(
                               fontWeight: FontWeight.bold,
                             ),
                           ),

                           style: TextButton.styleFrom(
                             primary: Colors.black,
                             backgroundColor: Colors.pink,

                             shape:
                             RoundedRectangleBorder(
                               borderRadius: BorderRadius.circular(20),
                             ),
                           ),
                         ),
                       ),
                     ),
                   ),
                   SizedBox(
                     height:5,
                   ),
                   Text("or", textAlign:TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,


                   ),),
                   SizedBox(
                     height: 5,
                   ),
                   Padding(
                     padding:  EdgeInsets.symmetric(horizontal: 50),
                     child: Row(

                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Image.asset('assets/facebook.png',
                           width: 20,
                           height: 20,
                         ),
                        // SizedBox(width: 15),
                         Image.asset('assets/twitter.png',
                           width: 20,
                           height: 20),
                         Image.asset('assets/instagram.png',
                             width: 20,
                             height: 20),


                       ],
                     ),
                   ),
                 ],
               ),
             ),
           ),)
        ],
      )
    );
  }
}
