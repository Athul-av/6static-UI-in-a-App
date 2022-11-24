import 'package:all_ui/ui/screen5/customer.dart';
import 'package:flutter/material.dart';


class homescreen5 extends StatelessWidget {
  const homescreen5({super.key});
  Widget total(){
  return Container(
    padding:const EdgeInsets.fromLTRB(10, 10, 10, 0),
    height: 100,width: 400,
    child:Column(
      children: [
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Item Total'),
            Text('₹799')
          ],
        ),
        const SizedBox(height: 10,),
       Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Delivery'),
            Text('FREE',style: TextStyle(color: Colors.green),)
          ],
        ),
        const SizedBox(height: 10,),
        Row( 
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:const [
            Text('Grand Total',style: TextStyle(fontSize: 20),),
            Text('₹799',style: TextStyle(fontSize: 20))
          ],
        ),
      ],
    )
  );
}
Widget date() {
  return Container(
    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
    height: 50, width: 500,
  //  color: Colors.yellow,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text( 'May 31, 5:42  PM', style: TextStyle(fontSize: 18), ),
        Row(
          children: const [
            Icon( Icons.lens, color: Colors.blue,size: 15, ),
            SizedBox( width: 10, ),
            Text('Delivered ',style: TextStyle(fontSize: 18, color: Colors.grey)),
          ],
        )
      ],
    ),
  );
}

Widget additional() {
  return Container(
      padding: const EdgeInsets.fromLTRB(10, 5, 0, 0),
      height: 165,
      width: 400,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text( 'ADDITIONAL INFORMATION',
            style: TextStyle(color: Colors.grey, fontSize: 15),
          ),
          const SizedBox( height: 3, ),
          const Text('State'),
          const Text('Karnataka'),
          const SizedBox( height: 8,),
          const Text('Email'),
          const Text('greenecequa@gamil.com'),
          const SizedBox(height: 15, ),
          Container(
            height: 45,
            width: 400,
            padding:const EdgeInsets.fromLTRB(120, 15, 0, 0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              // color: Colors.yellow,
              border: Border.all(color: Colors.blue)
            ),
            child: const Text('Share Receipt',
            style: TextStyle(color: Colors.blue,fontSize: 18),
            ),
          )
        ],
      ));
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 70,
        centerTitle: true,
        title: const Text( 'Order #1688068',style: TextStyle(color: Colors.white),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              date(),  
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              item(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              total(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              customer(),
              const Divider(thickness: 1,indent: 8,endIndent: 15,),
              additional() 
            ],
          ),
        ),
      ),
    );
  }
}