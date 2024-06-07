import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  final String title;
  final String text;
  final String image;
  final Color color;

  const Details({
    super.key,
    required this.title,
    required this.text,
    required this.image,
    required this.color,
  });
  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 0 , left: 30) ,
            child: Image.asset(
              widget.image,
              width: 382,
              height: 355,
              fit: BoxFit.cover,
            ),
          ),
          // const SizedBox(height: 16.0),
          Container(
            width: 393,
            height: 370,
            decoration: BoxDecoration(
              color: Color(0xff161616),
           borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20)
           )
            ),
            child:  Padding(
              padding: EdgeInsets.only(top: 30 , left: 30),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                      widget.title,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                      ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                   Flexible(
          child: Expanded(
            child: Text(
              widget.text,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16.0,
              ),
              maxLines: null,
              overflow: TextOverflow.visible,
            ),
          ),
                   ),

                  
                ],
              ),
            ),
          ),
          // SizedBox(height: 10,),
            const Row(
            children: [
              Text(
                'By Georges Jarrouj  |  6 Jun 2024' , 
                style: TextStyle(
                  color: Colors.white
                ),
              )
            ],
          )
         
         
        ],
      ),
    );
  }
}