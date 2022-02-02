import 'package:complete_dev_guide/section0_how_to/back_button.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';

class GFFlutterCardExample extends StatelessWidget {
  const GFFlutterCardExample({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: backButton(context, text: 'GFFlutterCardExample'),
      body: ListView(
        children: [
          GFCard(
            boxFit: BoxFit.cover,
            image: Image.asset('your asset image'),
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('your asset image'),
              ),
              title: Text('Card Title'),
              subTitle: Text('Card Sub Title'),
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFButton(
                  onPressed: () {},
                  text: 'Buy',
                ),
                GFButton(
                  onPressed: () {},
                  text: 'Cancel',
                ),
              ],
            ),
          ),
          GFCard(
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            image: Image.network(
              "https://images.unsplash.com/photo-1593104547489-5cfb3839a3b5?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1153&q=80",
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
            ),
            showImage: true,
            title: GFListTile(
              avatar: GFAvatar(
                backgroundImage: AssetImage('your asset image'),
              ),
              titleText: 'Game Controllers',
              subTitleText: 'PlayStation 4',
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SECONDARY,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
                GFAvatar(
                  backgroundColor: GFColors.SUCCESS,
                  child: Icon(
                    Icons.phone,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          GFCard(
            boxFit: BoxFit.cover,
            titlePosition: GFPosition.start,
            showOverlayImage: true,
            imageOverlay: AssetImage(
              'your asset image',
            ),
            title: GFListTile(
              avatar: GFAvatar(),
              titleText: 'Game Controllers',
              subTitleText: 'PlayStation 4',
            ),
            content: Text("Some quick example text to build on the card"),
            buttonBar: GFButtonBar(
              children: <Widget>[
                GFAvatar(
                  backgroundColor: GFColors.PRIMARY,
                  child: Icon(
                    Icons.share,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
