import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: ListView(

        children: [
        const SizedBox(height: 10,),
      const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Account', style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold
            ),),
          ]
      ),
      Row(
        children: [
          Image.asset('assets/images/user.png', width: 72,),
          const SizedBox(width: 20,),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Azka Savir', style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold
                ),),
                SizedBox(height: 5,),
                Text('azkasavir@gmail.com', style: TextStyle(
                    color: Colors.black,
                    fontSize: 10,
                    fontWeight: FontWeight.normal
                ),),
              ],
            ),
          ),
          const Icon(Icons.qr_code, color: Colors.black,),
        ],
      ),
      const SizedBox(height: 24,),
      const Divider(thickness: 0.5, color: Colors.grey,),
      const SizedBox(height: 24,),
      const Column(
        children: [
          listlistan(
            icon: Icons.discount_rounded, title: '   Transaction History',),
          listlistan(icon: Icons.money, title: '   Mokopi Points',),
          listlistan(icon: Icons.star, title: '   Mokopi Rewards',),
          listlistan(icon: Icons.favorite, title: '   Favorite',),
          listlistan(icon: Icons.location_city, title: '   Saved Address',),
          listlistan(icon: Icons.payment, title: '   Payment Method',),
        ],
      ),
      const SizedBox(height: 24,),
      Row(
        children: [
          Text('General', style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 8,),
          Expanded(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          )
        ],
      ),
      const SizedBox(height: 24,),
      const Column(
        children: [
          listlistan(
            icon: Icons.discount_rounded, title: '   Transaction History',),
          listlistan(icon: Icons.money, title: '   Mokopi Points',),
          listlistan(icon: Icons.star, title: '   Mokopi Rewards',),
          listlistan(icon: Icons.favorite, title: '   Favorite',),
        ],
      ),
      const SizedBox(height: 24,),
      Row(
        children: [
          Text('About', style: TextStyle(
              color: Colors.grey,
              fontSize: 14,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(width: 8,),
          Expanded(
            child: Container(
              height: 0.5,
              color: Colors.grey,
            ),
          )
        ],
      ),
      const SizedBox(height: 24,),
      const Column(
        children: [
          listlistan(icon: Icons.document_scanner, title: '   Help Center',),
          listlistan(icon: Icons.coffee, title: '   About Mokopi',),
        ],
      ),
      const SizedBox(height: 24,),
      const Divider(thickness: 0.5, color: Colors.grey,),
      const SizedBox(height: 24,),
      ListTile(
        leading: Icon(Icons.logout, color: Colors.red,),
        title: Text('Logout', style: const TextStyle(
            color: Colors.red,
            fontSize: 16,
            fontWeight: FontWeight.normal
        )),
        ),
      ],
    ),);
  }
}

class listlistan extends StatelessWidget {
  const listlistan({
    super.key, required this.icon, required this.title
  });

  final IconData icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon,
        color: Colors.black,
      ),
      title: Text(title, style: const TextStyle(
          color: Colors.black,
          fontSize: 16,
          fontWeight: FontWeight.normal
      ),),
      trailing: const Icon(Icons.arrow_forward,
        color: Colors.black,
      ),
    );
  }
}
