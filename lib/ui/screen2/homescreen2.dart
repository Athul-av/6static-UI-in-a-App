import 'package:flutter/material.dart';

class homescreen2 extends StatelessWidget {
  const homescreen2({super.key});

  Widget cards({IconData? icons,Color? iconcolor,String? tex1,String? tex2}){
    return  Card(  child:  Container(
                      height: 125,
                    width: 169,
                    padding: EdgeInsets.all(10),
                      child:  Column(
                        crossAxisAlignment:CrossAxisAlignment.start,
                        children: [
                          Container(child: Icon(icons,size: 40,color: Colors.white,) ,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color:iconcolor,)),
                          SizedBox(height: 10,),
                           Text(tex1!,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                           Text(tex2!,style:TextStyle(fontSize: 18,fontWeight: FontWeight.w400),)
                        ],
                      ),
                    ),
              );
  }

  BottomNavigationBarItem navbar({required label,required IconData ico}){
    return BottomNavigationBarItem(
      
      icon:Icon(ico,),
          label:label,);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Manage Store'),
        centerTitle: true,
      ),
            body:  Container(
        padding:EdgeInsets.all(15),
        color: Color.fromARGB(255, 238, 237, 237),
          child:  Column(
            children:[
               Row(
                 children: [
                  cards(tex1:'Marketing',tex2:'Designs', icons: Icons.campaign_outlined, iconcolor:Color.fromARGB(255, 240, 151, 16)  ),
                  cards(tex1: "Online",tex2: 'Payments', icons: Icons.currency_rupee, iconcolor:  Color.fromARGB(174, 60, 216, 33)),
                 ],
               ),
              const SizedBox(height: 11,),
               Row(
                 children: [
                  cards(tex1:'Discount',tex2:'Coupons', icons: Icons.discount_outlined, iconcolor: Color.fromARGB(255, 246, 192, 110)  ),
                  cards(tex1: "My",tex2: 'Customers', icons: Icons.group_outlined, iconcolor:  Color.fromARGB(255, 70, 168, 144)),
                 ],
               ),
              const SizedBox(height: 11,),
             Row(
                 children: [
                   cards(tex1:'Store QR',tex2:'Code', icons: Icons.qr_code_scanner_outlined, iconcolor:  Color.fromARGB(255, 125, 124, 123)  ),
                  cards(tex1: "Extra",tex2: 'Charges', icons: Icons.payments_outlined, iconcolor:  Color.fromARGB(255, 113, 51, 206)),

                 ], 
               ),
              const SizedBox(height: 11,),
                Row(
                 children: [
                   Card(
                    child:  Container(
                      height: 128,
                    width: 169,
                     padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment:CrossAxisAlignment.start, 
                        children:[  
                         Row(
                           children: [
                             Container(child: Icon(Icons.notes,size: 40,color: Colors.white,) ,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color.fromARGB(255, 182, 4, 176)),),
                             SizedBox(width:69  ,),
                             Container(
                              height: 20,width: 38,
                              padding: EdgeInsets.all(3),
                             child: Text('NEW',style: TextStyle(color: Colors.white),),
                             alignment: Alignment.topRight,
                             color: Colors.green, ),
                             
                           ],
                         ),
                          const SizedBox(height: 10,),
                          const Text('Order',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),
                          const Text('form',style:TextStyle(fontSize: 18,fontWeight: FontWeight.w400),),          
                        ],
                      ),
                    ),
              ),
                 ]
                ),
            ],
          ),
          
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Color.fromARGB(255, 15, 107, 182), 
          unselectedItemColor: Colors.grey, 
          currentIndex: 3,
          showUnselectedLabels: true,
          items: [
          navbar(label: 'Home', ico:Icons.home_outlined), 
          navbar(label: 'Orders', ico:Icons.local_mall_outlined),
          navbar(label: 'Products', ico:Icons.grid_view_outlined),
          navbar(label: 'Manage', ico:Icons.library_books_outlined),
          navbar(label: 'Account', ico:Icons.person_outline), 
   
        ]),
    );
  }
}  