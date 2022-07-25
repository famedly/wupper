import 'dart:html';

import 'package:wupper/wupper.dart';

class WrapperWidget extends Widget {
  final Element element;

  const WrapperWidget(this.element, {Key? key}) : super(key: key);

  @override
  void inflate(BuildContext context) {
    context.widget = this;
    context.element = element;
  }
}
