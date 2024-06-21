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
        child: Stack(
          children: [
            Positioned(
              // left:10,
              // right: 10,
              top: 0,
              child: Text( 
                'xeven',
                style: Theme.of(context).textTheme.displayLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Positioned(
              left :20,
              // right: 75,
              top: 60, 
              
              // bottom: 10,
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  '--Solutions--',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
