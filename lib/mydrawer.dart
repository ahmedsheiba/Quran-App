import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:quraan_app/setting.dart';
import 'constant.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              // image: DecorationImage(image: Image.asset('assets/AYMAN.jpg')),
              color: Color.fromARGB(255, 89, 5, 5),
            ),
            child: Column(
              children: [
                Image.asset(
                  'assets/AYMAN.jpg',
                  height: 110,
                ),
                Spacer(flex: 1),
                const Text(
                  'هذا المصحف صدقه جاريه على روح أيمن شعبان شيبه',
                  style: TextStyle(
                      fontSize: 13,
                      color: Color.fromARGB(255, 224, 213, 213),
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Text(
            '"اللَّهُمَّ، اغْفِرْ له وَارْحَمْهُ، وَاعْفُ عنْه وَعَافِهِ، وَأَكْرِمْ نُزُلَهُ، وَوَسِّعْ مُدْخَلَهُ، وَاغْسِلْهُ بمَاءٍ وَثَلْجٍ وَبَرَدٍ، وَنَقِّهِ مِنَ الخَطَايَا كما يُنَقَّى الثَّوْبُ الأبْيَضُ مِنَ الدَّنَسِ، وَأَبْدِلْهُ دَارًا خَيْرًا مِن دَارِهِ، وَأَهْلًا خَيْرًا مِن أَهْلِهِ، وَزَوْجًا خَيْرًا مِن زَوْجِهِ، وَقِهِ فِتْنَةَ القَبْرِ وَعَذَابَ النَّارِ"',
            style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
          ),
          ListTile(
            leading: const Icon(
              Icons.settings,
              color: Color.fromARGB(255, 89, 5, 5),
            ),
            title: const Text(
              'Setting',
            ),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Setting()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.share,
              color: Color.fromARGB(255, 89, 5, 5),
            ),
            title: const Text(
              'Share',
            ),
            onTap: () {
              Share.share('''*Quran app*\n
u can develop it from my github https://github.com/ahmedsheiba ''');
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
