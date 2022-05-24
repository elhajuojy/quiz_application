import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Result extends StatelessWidget {
  // const Result({Key? key}) : super(key: key);

  Function() q;
  Result(this.q);
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Done!', style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.red)),
            ElevatedButton(

              style: ButtonStyle(
                backgroundColor:  MaterialStateProperty.all(Colors.red),
                  padding: MaterialStateProperty.all(EdgeInsets.all(15),
                  )
              ) ,
              onPressed: q,
              child:  Text('restart',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
            )
          ],
        ));
  }
}
