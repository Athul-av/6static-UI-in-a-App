import 'package:flutter/material.dart';

Widget customer(){
  return Container(
     padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
    height: 220,width: 400,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children:const [
            Text('CUSTOMER  DETAILES',style: TextStyle(color: Colors.grey),),
            SizedBox(width: 140,),
            Icon(Icons.share_outlined,color: Colors.blue,),
            SizedBox(width: 1,), 
            Text('SHARE',style: TextStyle(color: Colors.blue))
          ],
        ),
       const SizedBox(height: 5,),
       const Text('Deepa',style: TextStyle(fontSize: 18),),
       Row(
        children:const [
           Text('+91-703452499',style: TextStyle(color: Colors.grey),),SizedBox(width: 180,),
          Icon(Icons.call,color: Colors.blue,),SizedBox(width: 20,),
          Icon(Icons.call,color: Colors.green,),
        ],
       ),
       const SizedBox(height: 5,),
       const Text('Address',style: TextStyle(fontSize: 16)),
       const SizedBox(height: 5,),
       const Text('D 1101 Chattered Beverly',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
       const Text('Hills,Subramanyapura P.O',style: TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
       const SizedBox(height: 9,),
       Row(
        children:const [
          Text('City'),SizedBox(width: 120,),
          Text('Pincode'),
        ],
       ),
       Row(
        children:const [
          Text('Banglore',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),SizedBox(width: 90,),
          Text('560061',style:  TextStyle(color: Color.fromARGB(255, 88, 85, 85))),
        ],
       ),
       const SizedBox(height: 5,),
       const Text('Payment'),
       Row(
        children: [
          const Text('Online'),
          const SizedBox(width: 250,),
          Container(
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),color:const Color.fromARGB(255, 201, 245, 203)),
            padding:const EdgeInsets.fromLTRB(15, 4, 0, 0) ,            
            height: 23,width: 60,
            child:const Text('PAID',style: TextStyle(color: Color.fromARGB(255, 6, 173, 12),fontWeight: FontWeight.w700),),
          )
        ],
       )
      ],
    )
  );
}

Widget item(){
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
    height: 130,width: 500,
    child: Column(children:  [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:  [
        const Text('1 ITEM',style: TextStyle(color: Colors.grey),),
        Row( children: const [
          Icon(Icons.receipt_outlined,color: Colors.blue,),
           SizedBox( width: 10, ),
          Text('RECIEPT',style: TextStyle(color: Colors.blue))

        ],)
      ],),
      const SizedBox(height: 20,),
      Row(
        children: [
          Container(height: 60,width: 60,
           decoration:  BoxDecoration(border:Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(3),),
          child: Image.asset('assets/tshirt1.jpg',fit: BoxFit.cover,),
          ),
          const SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Explore | Men | Navy Blue',style: TextStyle(fontSize: 18)),
              const Text('1 Piece',style: TextStyle(color: Color.fromARGB(255, 124, 122, 122)),),
              const Text('Size: XL',style: TextStyle(color: Color.fromARGB(255, 124, 122, 122))),
             Row(
               children:const [
                Icon(Icons.looks_one_outlined,color: Color.fromARGB(255, 102, 175, 234),),
                SizedBox(width: 5,),
                Text('× ₹799'),
                SizedBox(width: 160,),
                 Text('₹799')
               ],
             ),
            ],
          )
        ],
      )
    ],),
  );
}