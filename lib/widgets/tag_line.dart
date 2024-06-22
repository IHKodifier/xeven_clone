import 'package:xeven_clone/widgets-export.dart';

class TagLine extends StatelessWidget {
  const TagLine({super.key});

  @override
  Widget build(BuildContext context) {
    var myGroup = AutoSizeGroup();
    String str1 = 'Your Trusted AI Development Company';

    String str2 =
        '''We build meaningful AI Healthcare Solutions to hape the future of your business''';
    var tagline = AutoSizeText(str1,
        softWrap: true,
        textAlign: TextAlign.center,
        // group: myGroup,
        maxLines: 2,
        minFontSize: 40,
        maxFontSize: 48,
        style: Theme.of(context)
            .textTheme
            .displayLarge
            ?.copyWith(color: Colors.white, fontWeight: FontWeight.w600));
    var tagline3 = AutoSizeText(str2,
        // group: myGroup,
        minFontSize: 24,
        maxFontSize: 30,
        style: Theme.of(context).textTheme.titleLarge?.copyWith(
            fontSize: 26, color: Colors.white, fontWeight: FontWeight.w300));

    return Container(
      // color: Colors.pink,
      width: MediaQuery.of(context).size.width * .65,
      height: MediaQuery.of(context).size.height ,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Expanded(child: tagline),
          Expanded(
              child: SizedBox(
            width: 400,
            child: tagline3,
          )),
          const Spacer(flex: 1,),
          ElevatedButton(
              onPressed: () {},
              child: const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text('Get Free Consultastion'),
              )),
        ],
      ),
    );
  }
}
