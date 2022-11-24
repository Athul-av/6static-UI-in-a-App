import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class homescreen1 extends StatelessWidget {
  const homescreen1({super.key});
  Widget list({ String? maintext ,IconData? ico, Widget? ico2}){
    return ListTile(
            leading: Icon(ico),
            title:Text(maintext!, style: GoogleFonts. montserrat(
              textStyle:const TextStyle(
                fontSize: 17,
                fontWeight:FontWeight.w400,
           ),
            ),),
            trailing:ico2, 
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon:const  Icon(Icons.arrow_back)),
        title: Text('Additional Information',style: GoogleFonts.montserrat(
          textStyle:const TextStyle(
            fontSize: 19,
          )
        ),),
        centerTitle: true,
      ),
      body: SafeArea(child:
      Column(
        children:  [
            list(maintext: "Share Dukaan App",
            ico: Icons.share_outlined,
            ico2:Icon(Icons.arrow_forward_ios_outlined) ),
            list(maintext: "Change Language",
            ico:Icons.translate,
            ico2:Icon( Icons.arrow_forward_ios_outlined )),
            list(maintext: "WhatsApp Chat Support",
            ico: Icons.whatsapp,
            ico2:Switch(value:true, onChanged:null,inactiveTrackColor: Color.fromARGB(255, 161, 211, 234),inactiveThumbColor:Colors.blue,) ),          
            list(maintext: "Privacy Policy",
            ico: Icons.lock_outline ),
            list(maintext: "Rate Us",
            ico: Icons.star_outline),
            list(maintext: "Sign Out",
            ico: Icons.logout),
        ],
      )),
    );
  }
}