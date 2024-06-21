import 'package:xeven_clone/widgets-export.dart';

class XevenAppBar extends StatefulWidget {
  const XevenAppBar({super.key});

  @override
  State<XevenAppBar> createState() => _XevenAppBarState();
}

class _XevenAppBarState extends State<XevenAppBar> {
   bool isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (event) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (event) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        color: !isHovered ? Colors.transparent : Colors.white,
        height: isHovered ? 140 : 140, 
        width: MediaQuery.of(context).size.width,
        duration: Durations.long1,
        curve: Curves.easeInOut,
        child: const Padding(
          padding: EdgeInsets.all(16.0),
          child: Row(children: [
            XevenLogo(),
          ],),
        ),
      ),
    );
  }
}