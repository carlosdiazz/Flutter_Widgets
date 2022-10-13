import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Avatar Pages"),
        actions: <Widget>[
          CircleAvatar(
            backgroundImage: NetworkImage(
                'https://www.pngall.com/wp-content/uploads/12/Avatar-Profile-Vector-PNG-File.png'),
          ),
          Container(
            margin: EdgeInsets.only(right: 10, left: 15),
            child: CircleAvatar(
              child: Text("CD"),
              backgroundColor: Colors.brown,
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          image: NetworkImage(
              'https://img.redbull.com/images/c_limit,w_1500,h_1000,f_auto,q_auto/redbullcom/2018/07/10/4f0eb2e5-f6fa-4ca6-98ff-29a0701516ea/mtb-collection'),
          placeholder: AssetImage('assets/loading.gif'),
          fadeInDuration: Duration(milliseconds: 100),
        ),
      ),
    );
  }
}
