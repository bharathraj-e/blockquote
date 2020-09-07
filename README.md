# blockquote

[![Pub](https://img.shields.io/pub/v/blockquote.svg?style=flat-square)](https://pub.dartlang.org/packages/blockquote)

`blockquote` package helps you to create a `<blockquote></blockquote>` Widget.

## Getting Started

<img src='https://raw.githubusercontent.com/bharathraj-e/blockquote/master/img/single.png' width='60%' >

``` dart
BlockQuote(
        child: Column(
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
      ),
```

### Add to pubspec 
> blockquote: any
### import in project
> import 'package:blockquote/blockquote.dart';

| Arguments      | inputs             | if null / default to                           |
|----------------|--------------------|------------------------------------------------|
| `blockColor`   | Color              | [Theme]'s `accentColor`                        |
| `blockWidth`   | double             | `4`                                            |
| `childPadding` | EdgeInsetsGeometry | `EdgeInsets.only(left: 15, top: 5, bottom: 5)` |
| `child`        | Widget             | required / `SizedBox.Shrink()`                 |
| `outerPadding` | EdgeInsetsGeometry | `EdgeInsets.symmetric(horizontal: 15)`         |

<br>
<img src='https://raw.githubusercontent.com/bharathraj-e/blockquote/master/img/multiple.png' width='40%' >

>### More Quotes coming soon ! 