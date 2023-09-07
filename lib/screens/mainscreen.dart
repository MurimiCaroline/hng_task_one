import 'package:flutter/material.dart';
import 'package:hng_task_one/screens/web_view_container.dart';


class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
        ),
        child: Center(
          heightFactor: MediaQuery.of(context).size.height,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Caroline Murimi",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: 45,
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height* 0.02,),
              Container(
                height: MediaQuery.of(context).size.height* 0.6,
                width: MediaQuery.of(context).size.width* 0.6,
                decoration: const BoxDecoration(
                  image:DecorationImage(
                    image: AssetImage(
                      "images/slackprofilebg.jpeg",
                    )
                  ) ,
                 
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height* 0.04,),
              ElevatedButton(                                   
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WebViewContainer()));
                                },
                child: const Text("Open Github"),
                ),
                
                
              
            ],
          ),
        ),
      ),
      );
      
    
  }
}
