import 'package:flutter/material.dart';

class homescreen6 extends StatelessWidget {
  const homescreen6 ({super.key});

  Widget allcard({String? mainText,String? text2,String? image}){
    return Card(
            child: Container(
            height: 141,
            decoration: BoxDecoration(borderRadius:BorderRadius.circular(9) ),
            padding: EdgeInsets.all(9),
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                      height: 84 ,
                      width: 85,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,
                      image:  DecorationImage(image: AssetImage(image!),fit: BoxFit.fill)),
                    ),
                   const SizedBox(width: 10,), 
                    Container(
                      height: 83,
                      width: 230, 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                        Row(
                          children: [
                            Text(mainText!,style: TextStyle(fontSize: 15),),
                           const SizedBox(width: 39,), 
                           const Icon(Icons.more_vert)
                          ],
                        ),
                        const Text('1 piece',style: TextStyle(fontSize: 11),),
                        const SizedBox(height: 2,),
                        Text(text2!),
                        Row(
                          children: [
                            const Text('In Stock',style: TextStyle(color: Colors.green)),
                           const SizedBox(width: 130 ,),
                            Container(
                              height: 19,
                              width: 40,
                             
                              child:const Switch(value:true, onChanged:null,inactiveTrackColor: Color.fromARGB(255, 161, 211, 234),inactiveThumbColor:Colors.blue,),
                            )
                          ],
                        ),            
                      ]),
                    )
          ]),
              const SizedBox(height: 6,),    
               Container(width: 320,height: 1 ,color: Color.fromARGB(255, 200, 199, 197),) ,
              const SizedBox(height: 8,),
               Row(
                 mainAxisAlignment: MainAxisAlignment.center, 
                 children:const [
               Icon(Icons.share_outlined),
               Text(' Share Product')
          ],)
         ]
         ) )
        );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 2, child:Scaffold(
      appBar: AppBar(
         title: Text('Catalogue'),
        centerTitle: true,
        actions:const [
          Icon(Icons.search,size: 28,) 
        ],
          bottom:const TabBar(
        tabs: [
          Tab(child: Text('Products',style: TextStyle(fontSize: 17),)),
          Tab(child: Text('Categories',style: TextStyle(fontSize: 17))),     
        ],),
    ),
    body: Container(
      color: Color.fromARGB(255, 241, 240, 239),
      padding: EdgeInsets.all(11),
      child: ListView(
            children: [
               allcard(mainText: 'Couch Potato | Women..',text2: '₹799',image: 'assets/images/image1.jpeg'),
               allcard(mainText: 'Couch Potato | Men |Bl.. ',text2: '₹799',image: 'assets/images/image2.jpeg'),
               allcard(mainText: 'Mug|Explore                     ',text2: '₹399',image: 'assets/images/image3.jpeg'),
               allcard(mainText: 'Combo Blahst 2 | Expla..',text2: '₹599',image: 'assets/images/image4.jpeg'), 
               allcard(mainText: 'Kids Combo Blahst         ',text2: '₹1,299',image: 'assets/images/image5.jpeg'),
                allcard(mainText: 'Mug|Explore                     ',text2: '₹399',image: 'assets/images/image6.jpg'),           
            ]),
        ),
      ), 
    );
     }
} 

