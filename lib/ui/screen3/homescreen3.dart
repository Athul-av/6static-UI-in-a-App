import 'package:all_ui/ui/screen3/listtile3.dart';
import 'package:flutter/material.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class homescreen3 extends StatelessWidget {
  const homescreen3 ({super.key});

  Widget elebutton ({required text,required Color color}){
    return  ElevatedButton(onPressed: (){},
    style:ElevatedButton.styleFrom(backgroundColor:color, 
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(19.0))), child: Text(text),);
  }

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title:const Text('Payments'),
        centerTitle: true,
        backgroundColor:Color.fromARGB(255, 4, 133, 208) , 
        actions:const [
          Icon(Icons.info_outline)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(11),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding:EdgeInsets.all(8),
                height:169,
                width: double.infinity,
                decoration: BoxDecoration(border:Border.all(color:Color.fromARGB(255, 226, 223, 223)),borderRadius: BorderRadius.circular(9)),
                child: Column(
                  
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text('Transaction Limit',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),),
                   SizedBox(height: 3,),
                   Text('A Free limit up to which you will recieve',style: TextStyle(color:Color.fromARGB(255, 110, 107, 106),fontSize: 15),),
                   Text('the online payments directly in your bank',style: TextStyle(color:Color.fromARGB(255, 110, 107, 106),fontSize: 15),),
                   SizedBox(height: 13,),
                  const StepProgressIndicator(
                   totalSteps: 100,
                   currentStep: 32,
                   size: 8,
                  padding: 0,
                  selectedColor: Color.fromARGB(255, 4, 133, 208),
                   unselectedColor: Color.fromARGB(255, 217, 221, 222),
                   roundedEdges: Radius.circular(10),
              ),
                   SizedBox(height: 5,),
                   Text('36,668 left out of ₹50,000',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138),fontSize: 15) ),
                   SizedBox(height: 17,),
                   SizedBox(
                    height: 30,
                    width: 120 ,
                    child: ElevatedButton(onPressed: (){}, child: Text('Increase limit'),style: ElevatedButton.styleFrom(backgroundColor: Color.fromARGB(255, 4, 133, 208)),))
                ]),
                ),
              const  SizedBox(height: 17,),
      
                Row(
                  children:const [
                    Text('Default Method',style: TextStyle(fontSize: 16,)),
                    SizedBox(width: 116 ,),
                    Text('Online Payments',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color.fromARGB(255, 143, 139, 138),),
                  ],
                ),
               const SizedBox(height: 20,),
                     Row(
                  children:const [
                    Text('Payment Profile',style: TextStyle(fontSize: 16,)),
                    SizedBox(width: 131 ,),
                    Text('Bank Account',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),),
                    Icon(Icons.arrow_forward_ios_outlined,color: Color.fromARGB(255, 143, 139, 138),),
                  ],
                ),
               const SizedBox(height: 16,),
                Container(
                  height: 1,
                  width: double.infinity,
                  color: Color.fromARGB(255, 220, 219, 218),
                ),
               const SizedBox(height: 10,),
                  Row(
                  children:const [
                    Text('Payments Overview',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
                    SizedBox(width: 130 ,),
                    Text('Life Time',style: TextStyle(color:Color.fromARGB(255, 143, 139, 138) ),),
                    Icon(Icons.arrow_drop_down,color: Color.fromARGB(255, 143, 139, 138),),
                  ],
                ),
               const SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 166, 
                      decoration: BoxDecoration(color: Color.fromARGB(255, 233, 143, 9),borderRadius: BorderRadius.circular(7)), 
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                          Text('AMOUNT ON HOLD',style: TextStyle(color: Color.fromARGB(255, 239, 238, 238)),),
                          SizedBox(height: 10,),
                          Text('₹0',style: TextStyle(color: Colors.white,fontSize: 22),)
                        ],
                      ),
                    ),SizedBox(width: 20,),
                     Container(
                      padding: EdgeInsets.all(12),
                      height: 80,
                      width: 166,
                      decoration: BoxDecoration(color: Color.fromARGB(255, 45, 192, 89),borderRadius: BorderRadius.circular(7)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:const [
                        Text('AMOUNT RECIEVED',style: TextStyle(color: Color.fromARGB(255, 239, 238, 238)),),
                         SizedBox(height: 10,),
                          Text('₹13,332',style: TextStyle(color: Colors.white,fontSize: 22),)
                      ]),
                    ) 
                  ],),
                  SizedBox(height: 10,), 
                  Text('Transactions',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500)),
                  Row(
                    children: [
                      elebutton(text: 'On Hold', color:Color.fromARGB(255, 196, 188, 188)),
                      SizedBox(width: 15,),
                      elebutton(text: 'Payouts(15)', color:Color.fromARGB(255, 4, 133, 208)),
                      SizedBox(width: 15,),
                      elebutton(text: 'Refunds', color:Color.fromARGB(255, 196, 188, 188)),
                    ],
                  ),
                  SizedBox(height: 14,),   
                ui3list(item: '#16068', subitem:  'jul 12, 02:06 PM', 
                image: 'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg', trail: '799'),
                 ui3list(item:'#14568', subitem: 'Fb 26, 07:47 AM', 
                image:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80', 
                trail: '899'),
                 ui3list(item: '#16868', subitem:  'fb 19, 07:13 PM', 
                image: 'https://media.istockphoto.com/photos/luxury-watch-isolated-on-white-background-with-clipping-path-for-or-picture-id1180244659?k=20&m=1180244659&s=612x612&w=0&h=kC3xPwi_AXqWqapmeVro6GhvQ2wcslD6WMgzdJbqZjE=',
                 trail: '1,100'),
                 ui3list(item: '#18068', subitem:  'jul 01, 04:34 PM', 
                image: 'https://contents.mediadecathlon.com/p1484240/ab565f3675dbdd7e3c486175e2c16583/p1484240.jpg', trail: '689'),
                 ui3list(item: '#10367', subitem:  'jul 28, 05:23 PM', 
                image: 'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                 trail: '599'),
                 ui3list(item: '#11068', subitem:  'jul 23, 09:34 PM', 
                image:'https://media.istockphoto.com/photos/white-mug-isolated-picture-id821282266?k=20&m=821282266&s=612x612&w=0&h=vc7HPB6Te8fSX-_TUFCXp5PYWQUtzTHdbiUJwybjRAA=',
                 trail: '129'), 
                  ui3list(item: '#19408', subitem:  'jul 12, 02:06 PM', 
                image:'https://st.depositphotos.com/1455321/1564/i/950/depositphotos_15645257-stock-photo-yellow-toy-car.jpg',
                 trail: '449'), 
                 ui3list(item:'#14568', subitem: 'Fb 26, 07:47 AM', 
                image:'https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8c2hvZXN8ZW58MHx8MHx8&w=1000&q=80', 
                trail: '899'),
                 ui3list(item: '#10367', subitem:  'jul 28, 05:23 PM', 
                image: 'https://media.istockphoto.com/photos/brown-teddy-bear-isolated-in-front-of-a-white-background-picture-id909772478?k=20&m=909772478&s=612x612&w=0&h=mzLuJ7ywrSDHmpchf9spOeNF2Ovr2aQBw1z57Szx17g=',
                 trail: '599'),   
              ], 
            ),         
          ),
      ),
      );
  }
}