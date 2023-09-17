import 'package:flutter/material.dart';
import 'package:news/helper/news.dart';
import 'package:news/models/article_model.dart';
import 'package:news/views/articale_view.dart';

class CategoryNews extends StatefulWidget {
  
 late final String category;
 CategoryNews({required this.category});
  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ArticaleModel> articales = [];
  bool _loading = true ;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }
  getCategoryNews() async{
    CategoryNewsClass newsClass = CategoryNewsClass(); 
    await newsClass.getNews(widget.category);
    articales = newsClass.news;
    setState(() {
      _loading = false;
    });
  }

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
      body:_loading ? Center(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: CircularProgressIndicator(),
        ),
      ): 
      SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    children: <Widget>[
                  ListView.builder(
                    padding: EdgeInsets.only(top:16),
                    itemCount: articales.length ,
                    shrinkWrap: true,
                    physics: ClampingScrollPhysics(),
                    itemBuilder: (context,index){
                     return BolgTile(
                      imageUrl:articales[index].urlToImage,
                      title: articales[index].title,
                      desc: articales[index].description,
                      url: articales[index].url,
                     );
                    }) ,
                    ]
                ),
                ),
      )
    );
  }
}

class BolgTile extends StatelessWidget {
  
 final String imageUrl , title ,desc,url;
 BolgTile ({required this.imageUrl , required this.title , required this.desc ,required this.url});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
      Navigator.push(context, MaterialPageRoute(
        builder:(context)=> ArticaleView(
         blogUrl: url, 
        ) ));
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 16),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Image.network(imageUrl)
              ),
            Text(title, style: TextStyle(
              fontSize: 18,
              color: Colors.black87,
              fontWeight: FontWeight.w500
            ),),
            SizedBox(height: 8,),
            Text(desc, style: TextStyle(
              color: Colors.black54
            ),)
          ],
        ),
      ),
    );
  }
}