import 'package:blockquote/blockquote.dart';
import 'package:flutter/material.dart';

// class BlockQuote extends StatelessWidget {
//   const BlockQuote(
//       {Key key,
//       @required this.child,
//       this.blockColor,
//       this.blockWidth,
//       this.outerPadding,
//       this.childPadding})
//       : super(key: key);

//   ///
//   /// The [child] contained by the BlockQuote.
//   ///
//   /// [required]
//   ///
//   final Widget child;

//   ///
//   /// BlockQuote's vertical line color
//   ///
//   /// default to [Theme]'s `accentColor`
//   ///
//   final Color blockColor;

//   ///
//   /// BlockQuote's vertical line width
//   ///
//   /// default to `4.0`
//   ///
//   final double blockWidth;

//   ///
//   /// BlockQuote's outer padding
//   ///
//   /// default to `const EdgeInsets.symmetric(horizontal: 15)`
//   ///
//   final EdgeInsetsGeometry outerPadding;

//   ///
//   /// BlockQuote's outer padding
//   ///
//   /// default to `const EdgeInsets.only(left: 15, top: 5, bottom: 5)`
//   ///
//   final EdgeInsetsGeometry childPadding;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: outerPadding ?? const EdgeInsets.symmetric(horizontal: 15),
//       child: Container(
//         decoration: BoxDecoration(
//             border: Border(
//                 left: BorderSide(
//                     color: blockColor ?? Theme.of(context).accentColor,
//                     width: blockWidth ?? 4.0))),
//         child: Padding(
//           padding: childPadding ??
//               const EdgeInsets.only(left: 15, top: 5, bottom: 5),
//           child: child ?? SizedBox.shrink(),
//         ),
//       ),
//     );
//   }
// }

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blockquote Example'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _c(1),
            _c(2),
            _c(3),
            _c(4),
            _c(5),
            _c(6),
          ],
        ),
      ),
    );
  }

  List<Color> col = [
    Colors.black,
    Colors.blue,
    Colors.red,
    Colors.green,
    Colors.pink,
    Colors.brown,
  ];

  Widget _c(double i) {
    return BlockQuote(
      outerPadding: const EdgeInsets.all(20),
      blockColor: col[(i.toInt() - 1)],
      blockWidth: i,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Lorem ipsum dolor sit amet, is the best place to hide a text.',
            textAlign: TextAlign.justify,
          ),
          Text(
            '~ Change my mind!',
            textAlign: TextAlign.end,
          )
        ],
      ),
    );
  }
}
