import 'package:google_fonts/google_fonts.dart';
import 'package:xeven_clone/widgets-export.dart';

class TagLine extends StatelessWidget {
  const TagLine({super.key});

  @override
  Widget build(BuildContext context) {
    var myGroup = AutoSizeGroup();
    String str1 = 'Your Trusted AI Development Company';
    String str2 =
        '''We build meaningful AI Healthcare Solutions to hape the future of your business''';

    var tagline = Text(str1,
        // softWrap: true,
        textAlign: TextAlign.center,
        // group: myGroup,
        maxLines: 2,
        // minFontSize: 40,
        // maxFontSize: 60, 
        style: Theme.of(context) 
            .textTheme
            .displayLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600,
            fontSize: 60,
            fontFamily: GoogleFonts.titilliumWeb().fontFamily));

    var tagline2 = Text(str2,
        // group: myGroup,
        // minFontSize: 24,
        // maxFontSize: 30,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 27, color: Colors.white, fontWeight: FontWeight.w400));

    return  Center(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Expanded(child: tagline,flex: 0,),
            // Spacer(),
            Expanded(
                child: tagline2),
            const Spacer(flex: 1,),
            ElevatedButton(
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('Get Free Consultastion'),
                )),
          ],
        ),
    );
    
  }
}
