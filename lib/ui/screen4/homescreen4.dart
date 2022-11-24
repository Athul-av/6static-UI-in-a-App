import 'package:all_ui/ui/screen4/widget.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class homescreen4 extends StatelessWidget {
  homescreen4({super.key});

  Widget expansionTile({required String titleText}) {
    return ExpansionTile(
      title: Text(
        titleText,
        style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
      ),
      children: const [
        Text(
          '''Dukaan caters to a wide variety of sellers . Be it a 
small grocery store ot a big legacy brand-anyone 
who wants to sell their products/services online - 
Dukaan is the perfect platform for you''',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
  final _youtubeController = YoutubePlayerController(
    flags: const YoutubePlayerFlags(
      controlsVisibleAtStart: true,   autoPlay: false, ),
    initialVideoId: 'FQdnnJ0Sdcg',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text( 'Dukaan Premium ',
          style: TextStyle( fontWeight: FontWeight.w400,letterSpacing: 1,),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity, height: 130,
                color: Colors.blue,
              ),
              Container(
                width: double.infinity,height: 257,
                padding: const EdgeInsets.all(10),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Image.asset('assets/images/dukaan premium.jpg'),
                      const SizedBox( height: 20, ),
                      const Text(
                        'Get Dukaan Premium For Just',
                        style: TextStyle( fontSize: 20,),
                      ),
                      const SizedBox( height: 20, ),
                      const Text(
                        '₹4,999/year',
                        style: TextStyle( fontSize: 20,),
                      ),
                      const SizedBox( height: 20, ),
                      Text(
                        'All the advanced features for scaling your',
                        style: TextStyle(color: Colors.black.withOpacity(0.4),),
                      ),
                      Text(
                        'business.',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.4),  ),
                      ),
                    ], ),
                ), )
            ], ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Row(
                  children: const [
                    Text(
                      'Features',
                      style:  TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
                    )
                  ],
                ),
                const Ui4Widget(
                  leadingIcon: Icons.language_outlined,
                  titleText: 'Custom domain name',
                  subtitleText:
                      'Get your own custom domain and build your brand on the internet.',
                ),
                const Ui4Widget(
                  leadingIcon: Icons.verified_outlined,
                  titleText: 'Verified seller badge',
                  subtitleText:
                      'Get green verified badge under your store name and build trust.',
                ),
                const Ui4Widget(
                  leadingIcon: Icons.computer_outlined,
                  titleText: 'Dukaan for PC',
                  subtitleText:
                      'Access all the exclusive premium features on Dukaan for PC.',
                ),
                const Ui4Widget(
                  leadingIcon: Icons.headphones_outlined,
                  titleText: 'Priority Support',
                  subtitleText:
                      'Get your questions resolved with our priority  custom support',
                ),
                const Divider( thickness: 1, ),
                const SizedBox(  height: 20,  ),
                Row(
                  children: const [
                    Text(
                      'What is Dukaan Premium',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                YoutubePlayer(
                  progressIndicatorColor: Colors.red,
                  controller: _youtubeController,
                  controlsTimeOut: const Duration(seconds: 3),
                  showVideoProgressIndicator: true,
                ),
                const SizedBox(
                  height: 50,
                ),
                Row(
                  children: const [
                    Text(
                      'Frequently Asked Questions',
                      style: TextStyle( fontSize: 18,    ),
                    )
                  ],
                ),
                expansionTile(
                  titleText: 'What types of businesses can use Dukaan Premium?',
                ),
                expansionTile(
                  titleText: 'What is your refund policy?',
                ),
                expansionTile(
                  titleText:
                      'Will there be an automatic change after the paid trial?',
                ),
                expansionTile(
                  titleText: 'what payment methords do you offer?',
                ),
                expansionTile(
                  titleText: 'What are the terms for the custom domain?',
                ),
                const Divider(  thickness: 1,  ),
                Row(
                  children: const [
                    Text(
                      'Need help? Get in Touch',
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                GridView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisExtent: 120,
                  ),
                  children: [
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.message_outlined,
                            size: 40,
                          ),
                          Text(
                            'Live Chat',
                            style: TextStyle(  fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Card(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(
                            Icons.phone_enabled_outlined, size: 40,  ),
                          Text(
                            'Phone Call',
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],),
                const Divider(  thickness: 2,  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Select Domain',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: const Text(  'Get Premium',  ),
                        ),
                      ], ),
                  ],
                ),
              ],  ),
                )
        ],  ),
    );
  }
}