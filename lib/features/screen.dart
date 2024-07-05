import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:userui/features/screens/electricty.dart';
import 'package:userui/features/screens/khathaservices.dart';
import 'package:userui/features/screens/propertytax.dart';
import 'package:userui/features/screens/rcextraction.dart';
import 'package:userui/features/screens/water.dart';

import '../comman/imageslider.dart';
import '../comman/sizes.dart';
import 'screens/tarfficfine.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:userui/comman/row.dart';
//
// import '../comman/buttons.dart';
// import '../comman/card.dart';
// import '../comman/greencontainer.dart';
// import '../comman/imageslider.dart';
// import '../comman/sizes.dart';
// import '../comman/slider.dart';
// import '../containers/circularimage.dart';
// import '../containers/searchbar.dart';
// import '../widgets/appbar.dart';
// import '../widgets/userdetails.dart';
//
// class Screen extends StatelessWidget {
//   const Screen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SingleChildScrollView(
//         child: Column(
//           children: [
//             Appbar(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             Usre(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             GreeenContainer(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             Buttons(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             Arow(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             Arow(),
//             SizedBox(
//               height: Sizes.md,
//             ),
//             APromoSlider(),
//           ],
//         ),
//       ),
//     );
//   }
// }

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/images/cms.png'), // Add your profile image here
        ),
        // title: "",
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.red),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.qr_code, color: Colors.red),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container2(),
            Container(
              height: 220,
              color: Colors.green,
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Image.asset('assets/images/cms.png',
                                  height: 50), // Add your Jio logo here
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('+91-8734890032'),
                                  Text('Jio Postpaid'),
                                  Text('Bill amount: ₹ 1,267'),
                                ],
                              ),
                            ],
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text('Pay Now'),
                            // style: ElevatedButton.styleFrom(
                            //   primary: Colors.red,
                            // ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(Icons.search),
                        hintText: 'search for services',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    FilterChip( backgroundColor: Colors.red,

                        label: Text('Recently Used'), onSelected: (_) {}),
                    SizedBox(width: Sizes.spaceBtwItems,),
                    FilterChip(

                        label: Text('Government Services'), onSelected: (_) {}),
                    SizedBox(width: Sizes.spaceBtwItems,),
                    FilterChip(
                        label: Text('Recharge & Bill'), onSelected: (_) {}),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.count(
                shrinkWrap: true,
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  ServiceTile(icon: Icons.traffic, label: 'Traffic Fine',onTap: () => Get.to(()=> TrafficFine()) ,),
                  ServiceTile(icon: Icons.car_repair, label: 'RC Extraction',onTap: () => Get.to(()=> RcExtraction()) ),
                  ServiceTile(icon: Icons.house, label: 'Property Tax',onTap: () => Get.to(()=> Propertytax()) ),
                  ServiceTile(icon: Icons.note, label: 'Khatha Services',onTap: () => Get.to(()=> Khataservices()) ),
                  ServiceTile(icon: Icons.flash_on, label: 'Electricity',onTap: () => Get.to(()=> Electricity()) ),
                  ServiceTile(icon: Icons.water, label: 'Water',onTap: () => Get.to(()=> Water()) ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.all(16),
              color: Colors.grey[200],
              child: Column(
                children: [
                  APromoSlider(),
                  // Text('GOVERNMENT SCHEMES',
                  //     style: TextStyle(fontWeight: FontWeight.bold)),
                  // Text('सरकारी योजनाएं',
                  //     style: TextStyle(fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



class ServiceTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final void Function()? onTap;
  ServiceTile({required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // onTap: (){
      //   Navigator.push(context, MaterialPageRoute(builder: (context )=>EmptyScreen()));
      // },
      // onTap:  () => Get.to(()=> EmptyScreen()),
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey[300]!,
              blurRadius: 5,
              spreadRadius: 1,
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.red),
            SizedBox(height: 10),
            Text(label, textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}