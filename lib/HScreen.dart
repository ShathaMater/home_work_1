import 'package:flutter/material.dart';

class HScreen extends StatelessWidget {
  List<Map<String, dynamic>> data = [
    {
      "image":
      "https://images.unsplash.com/photo-1682687982141-0143020ed57a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
      "name1": "sahtha",
      "description": "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
      "name2": "shatha",
      "images": [
        "https://images.unsplash.com/photo-1682687982141-0143020ed57a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxlZGl0b3JpYWwtZmVlZHwyMXx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=600&q=60",
        "https://plus.unsplash.com/premium_photo-1694850980288-b14bd7f9c458?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1881&q=80",
        "https://images.unsplash.com/photo-1682687219570-4c596363fd96?ixlib=rb-4.0.3&ixid=M3wxMjA3fDF8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1975&q=80",
        "https://images.unsplash.com/photo-1694843697790-d384af776f2b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80",
        "https://images.unsplash.com/photo-1694845482698-accfce9310f4?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1964&q=80"
      ],
      "name3": "shatha"
    },
  ];

  HScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //
      // extendBodyBehindAppBar: true,
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Colors.transparent,
      //   leading: Icon(Icons.arrow_back_ios_rounded),
      //   actions: [
      //     Icon(Icons.menu),
      //   ],
      //
      // ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: data
                .map(
                  (e) => Screen(
                e["image"],
                e["name1"],
                e["name2"],
                e["name3"],
                e["images"],
                e["description"],
              ),
            )
                .toList(),
          ),
        ),
      )
    );
  }
}

class Screen extends StatelessWidget {
  String? imageUrl;
  String? name1, name2, name3, description;
  List<String>? images;

  Screen(this.imageUrl, this.name1, this.name2, this.name3, this.images,
      this.description);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(child: Row(children: [
          Icon(Icons.arrow_back_ios_rounded),
          Spacer(),
          Icon(Icons.menu),
        ],),),
        Image.network(imageUrl ?? "", width: double.infinity,height: 300,fit: BoxFit.cover,),
        SizedBox(height: 10,),
        Text(name1 ?? '',style: TextStyle(fontWeight: FontWeight.bold) ,textAlign: TextAlign.left,),
        SizedBox(height: 10,),
        Text(description ?? ''),
        Text(name2 ?? '',textAlign: TextAlign.left,),
        SizedBox(height: 15,),
        Row(

          // children: images.map((e) => Container(
          //   decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
          //   child: Image.network(e(images),width: 50,height: 50,fit: BoxFit.cover,),),).toList(),
          children: [
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(images![0],width: 50,height: 50,fit: BoxFit.cover,),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(images![1],width: 50,height: 50,fit: BoxFit.cover,),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(images![2],width: 50,height: 50,fit: BoxFit.cover,),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(images![1],width: 50,height: 50,fit: BoxFit.cover,),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(images![3],width: 50,height: 50,fit: BoxFit.cover,),),
            SizedBox(width: 10,),
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Image.network(
                images![4],
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        SizedBox(height: 10,),

        Row(
          children: [
            Text(name3 ?? '',),
            Icon(Icons.more_horiz),
          ],
        ),
      ],
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: HScreen(),
  ));
}
