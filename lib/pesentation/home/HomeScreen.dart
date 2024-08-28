
import 'package:flutter/material.dart';

import '../customWidget/custom_appBar_widget.dart';
import '../customWidget/custom_listtile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: CustomAppBarWidget(
        text: "Home",
        isBackArrow: false,
        isCenterTitle: true,
        color: Colors.white,
        action: [

          const Icon(Icons.search),
          SizedBox(width: 30,),
          IconButton(onPressed: (){}, icon: const Icon(Icons.notification_add)),
        ],
      ),
      body: Column(
        children: [
          SizedBox(
            height: 585,
            width: 250,
            child: Drawer(child:Column(
              children: [
                SizedBox(height: 50,),
                CustomListTile(icon: Icons.home,text: "Home",onTap: (){},),
                CustomListTile(icon: Icons.person,text: "Users",onTap: (){},),
                CustomListTile(icon: Icons.favorite_border,text: "Favorite",onTap: (){},),
                CustomListTile(icon: Icons.local_offer,text: "Offers",onTap: (){},),
                CustomListTile(icon: Icons.add_shopping_cart,text: "Card List",onTap: (){},),
                CustomListTile(icon: Icons.account_balance_outlined,text: "Offer Cupon",onTap: (){},),
                CustomListTile(icon: Icons.settings,text: "Settings",onTap: (){},),
              ],
            ) ,),
          ),
        ],
      ),

    );
  }
}


