
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';
import 'package:reasa/app/data/constants.dart';
import 'package:reasa/app/data/typography.dart';
import 'package:reasa/app/modules/routes/page_routes.dart';



class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({Key? key}) : super(key: key);

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;
  int ourindex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        
         iconSize: 22.sp,
         selectedLabelStyle:CustomTextStyle.kxsmall.copyWith(fontWeight: CustomFontWeight.kMediumFontWeight) ,
         unselectedLabelStyle: CustomTextStyle.kxsmall.copyWith(fontWeight: CustomFontWeight.kMediumFontWeight) ,
          backgroundColor: CustomColor.kbackgroundwhite,
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: CustomColor.kprimaryblue,
          unselectedItemColor: CustomColor.kgrey500,
          showSelectedLabels: true,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              ourindex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              activeIcon:Icon(IconlyBold.home,), 
              icon: Icon(IconlyLight.home,),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(IconlyBold.search),
              icon: Icon(IconlyLight.search),
              label: 'Explore',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(IconlyBold.heart),
              icon:  Icon(IconlyLight.heart),
              label: 'Favorites',
            ),
            BottomNavigationBarItem(
              activeIcon: Icon(IconlyBold.chat),
              icon: Icon(IconlyLight.chat,),
              label: 'Message',
            ),
            BottomNavigationBarItem(
               activeIcon: Icon(IconlyBold.profile,),
              icon: Icon(IconlyLight.profile,),
              label: 'Profile',
            ),
          ]),
    );
  }
}

class BottomNavContainer extends StatelessWidget {
  final int index;
  final IconData icon;
  const BottomNavContainer({
    Key? key,
    required int selectedIndex,
    required this.icon,
    required this.index,
  })  : _selectedIndex = selectedIndex,
        super(key: key);

  final int _selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
         // color: _selectedIndex == index ? kWhitePrimary : Colors.transparent,
         // shape: BoxShape.circle
          ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Icon(icon,
            color: _selectedIndex == index ? CustomColor.kprimaryblue : CustomColor.kprimaryblue),
      ),
    );
  }
}
