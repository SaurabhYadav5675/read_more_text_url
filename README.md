# read_more_text_url


A Flutter package that provides a Read More/Read Less text expansion widget with advanced features such as URL and email detection, custom link styling, dynamic pattern matching, and click actions on
links.

## Features

* **Text Expansion:** Seamlessly toggle between expanded and collapsed text.<br/>
* **URL and Email Detection:** Automatically detect and highlight URLs and email addresses within the text.<br/>
* **Custom Link Styling:** Apply custom styles to detected links.<br/>
* **Dynamic Pattern Matching:** Provide custom regex patterns to match specific text and style them.<br/>
* **Click Action:** Handle click actions on links and detect which link was clicked.

## Install

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
read_more_text_url: ^0.0.2
```

Run `flutter pub get` to install the package.<br/>
Then, import it in your Dart code:

```dart
import 'package:read_more_text_url/read_more_text.dart';
```

# Getting started

Here’s a basic example of how to use the `ReadMoreText` widget in your Flutter app:

```dart
ReadMoreText(
"Read more and read less is used to improve the page text visibility. It allows users to read the page's full content by pressing the read more button and hiding the content by pressing the read less button.",
trimCollapsedText: 'Show more',
trimExpandedText: 'Show less',
trimMode: TrimMode.line,
style: const TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.w400),
trimLines: 2,
colorClickableText: Colors.blue,
linkStyle: TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
)
```

### Text With Url Example

You can customize the appearance of links and other matched patterns using the `linkStyle` and `linkPattern` parameters. The `linkStyle` parameter applies to URLs and emails by default.
The `linkPattern` parameter allows you to specify additional text patterns.

```dart
ReadMoreText(
"The Dart ecosystem uses packages to manage shared software such as libraries and tools. To get Dart packages, you use the pub package manager. You can find publicly available packages on the https://pub.dev , or you can load packages from the local file system or elsewhere",
trimCollapsedText: 'Show more',
trimExpandedText: 'Show less',
trimMode: TrimMode.line,
trimLines: 2,
colorClickableText: Colors.blue,
linkPattern: r'((https?://)|(www\.))([^\s/$.?#].\s*)',
style: const TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.w400),
moreStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
lessStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
linkStyle: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
onLinkClicked: (value) {print("clicked link $value");}
)
```

### Text With Url and HyperLink Example

You can customize the appearance of plain link into a text-based, styled link, which is more elegant while still maintaining its functionality as a clickable link.
The `hyperLinkMaps` parameter applies to map link with text.

```dart
ReadMoreText(
"I have developed a Flutter package that offers a https://pub.dev/packages/read_more_text_url text expansion widget. This package includes advanced features such as URL and email detection, custom link styling, dynamic pattern matching, and the ability to add click actions on links. You can also check out an example here https://pub.dev/packages/read_more_text_url/example to see it in action.",
trimCollapsedText: 'Show more',
trimExpandedText: 'Show less',
trimMode: TrimMode.line,
trimLines: 3,
colorClickableText: Colors.blue,
linkPattern: r'((https?://)|(www\.))([^\s/$.?#].\s*)',
style: const TextStyle(fontSize: 18,color: Colors.black, fontWeight: FontWeight.w400),
moreStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
lessStyle: const TextStyle(color: Colors.blue, fontWeight: FontWeight.w400),
linkStyle: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline),
onLinkClicked: (value) {print("clicked link $value");},
hyperLinkMaps: const [{"https://pub.dev/packages/read_more_text_url": "Read More/Read Less"}]
)
```

## Contributions 🤝

Contributions are welcome. 🙌<br>
Feel free to contribute to this project.<br><br>
If you find a bug or want a feature, but don't know how to fix/implement it, please fill an [issue](https://github.com/SaurabhYadav5675/read_more_text_url/issues) .<br>
If you fixed a bug or implemented a feature, please send a [pull request](https://github.com/SaurabhYadav5675/read_more_text_url/pulls).