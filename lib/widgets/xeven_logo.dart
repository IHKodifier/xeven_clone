import 'package:xeven_clone/widgets-export.dart';

class XevenLogo extends StatefulWidget {
  const XevenLogo({
    super.key,
  });

  @override
  State<XevenLogo> createState() => _XevenLogoState();
}

class _XevenLogoState extends State<XevenLogo> {
  bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(height: 140,width: 150,
        child: Image.asset('assets/images/xeven-logo.png'),
      ),
    );
  }
}
