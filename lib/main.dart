
import 'package:audio/home.dart';
import 'package:audio/homeController.dart';
import 'package:audio/secondScreen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(
      MultiProvider(
        providers: [
          ListenableProvider(create: (context)=>Home_provider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          routes: {
            '/':(context)=>Home_Screen(),
            'sd':(context)=>Second_Screen(),
          },
        ),
      )
  );
}