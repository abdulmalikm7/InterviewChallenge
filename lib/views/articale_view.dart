import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';


class ArticaleView extends StatefulWidget {
 
 final String blogUrl;
 ArticaleView({required this.blogUrl});

  @override
  State<ArticaleView> createState() => _ArticaleViewState();
}

class _ArticaleViewState extends State<ArticaleView> {
  
  final Completer<WebViewController> _completer = Completer<WebViewController>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("New"),
            Text("News",style: TextStyle(
              color: Colors.blue
            ),)
          ]
          ),
          actions: <Widget>[
             Opacity(
              opacity: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16 )
                ,child: Icon(Icons.save)
            
              ),
            )
            
          ],
          centerTitle: true,
         elevation: 0.0, 
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

      child: WebView(
        initialUrl: widget.blogUrl,
        onWebViewCreated : ((WebViewController){
          _completer.complete(WebViewController);
        })
        ),
    ),
      
    ) ;
  }
}