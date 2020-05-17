import 'package:flutter/material.dart';
import 'package:responsivearchitecture/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation){
        return Scaffold(
          body: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Container(
                  height: 150.0,
                  color: Colors.blue,
                  margin: const EdgeInsets.all(50.0),
                  child: BaseWidget(builder: (context, sizingInfo) => Text(sizingInfo.toString()),),
                ),
                Text(sizingInformation.toString()),
              ],
            ),
          ),
        );
      },
    );
  }
}
