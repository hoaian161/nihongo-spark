import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../constants/color.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: RGBO_BACKGROUND_COLOR,
      appBar: AppBar(
        backgroundColor: RGBO_BLUE_COLOR,
        title: Text(
          'Nihongo  Spark',
          style: TextStyle(
            fontSize: 13,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
        toolbarHeight: 20,
        centerTitle: true,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [RGBO_BLUE_COLOR, RGBO_BLUE_FADE_COLOR],
              ),
            ),
            child: Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://storage.googleapis.com/a1aa/image/FEUbigT6SdtY3J5cBXP6qObSkDib8sxDsE3o_zNKcZc.jpg"),
                ),
                SizedBox(width: 16),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "@username",
                          style: TextStyle(
                            fontSize: 17,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(width: 5)
                      ],
                    ),
                    Text(
                      "5 sparks",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                      ),
                    ),
                    SizedBox(height: 5)
                  ],
                ),
                Spacer(),
                Icon(
                  FontAwesomeIcons.pen,
                  color: Colors.white,
                  size: 13,
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _listItem(FontAwesomeIcons.h, "Hiragana",
                    "Luyện tập bảng chữ Hiragana"),
                SizedBox(height: 5),
                _listItem(FontAwesomeIcons.k, "Katakana",
                    "Luyện tập bảng chữ Katakana"),
                SizedBox(height: 5),
                _listItem(
                    FontAwesomeIcons.random, "Nâng cao", "Luyện tập nâng cao")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Quản lý chung",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: Column(
              children: [
                _listItem(FontAwesomeIcons.shieldAlt, "Thành tích",
                    "Xem các thành tích tôi đạt được"),
                SizedBox(height: 5),
                _listItem(
                    FontAwesomeIcons.gift, "Nhiệm vụ", "Nhiệm vụ hằng ngày"),
                SizedBox(height: 5),
                _listItem(
                    FontAwesomeIcons.coins, "Nâng cấp", "Nâng cấp tài khoản")
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _listItem(IconData icon, String title, String subtitle) {
    return ListTile(
      leading: Icon(
        icon,
        color: RGBO_BLUE_COLOR,
        size: 20,
      ),
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
      ),
      subtitle: Text(
        subtitle,
        style: TextStyle(color: Colors.grey, fontSize: 12),
      ),
      trailing: Icon(
        Icons.chevron_right,
        color: Colors.grey,
      ),
      tileColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 16),
    );
  }
}
