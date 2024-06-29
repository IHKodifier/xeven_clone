import 'package:responsive_framework/responsive_framework.dart';
import 'package:xeven_clone/widgets-export.dart';

class UnstoppableBusiness extends StatelessWidget {
  const UnstoppableBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      // height: 600,
      // color: Colors.pink,
      child: ResponsiveRowColumn(
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        rowPadding: EdgeInsets.symmetric(horizontal: 64),
        columnPadding: EdgeInsets.symmetric(horizontal: 32),
        layout: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        children: [
          ResponsiveRowColumnItem(
            child: SizedBox(
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? MediaQuery.of(context).size.width 
                  : MediaQuery.of(context).size.width / 2,
              // width: 600,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 9.0, right: 8),
                        child: Image.asset('assets/images/vector1.png'),
                      ),
                      Expanded(
                        child: Text(
                          'Drive Unstoppable Business Success Through AI!',
                          style: Theme.of(context).textTheme.displaySmall,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    ''' Maximize your business potential with our exceptional AI Development Services. Our customer-centric and passionate team of engineers is committed to delivering tailored solutions that exceed your expectations.
                    
We leverage our expertise in machine learning, deep learning, and AI development to deliver exceptional solutions in NLP, computer vision, predictive analytics, generative AI, AI chatbot development, and more.
                    
Our AI-based solutions offer a clear pathway to success, helping businesses improve decision-making, automate operations, save time, and boost profits. Partner with Xeven Solutions – AI Experts in Pakistan, to seamlessly integrate, scale, and access data-driven insights, leading to exceptional business outcomes.''', 
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {},
                    child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Get A Free Quote',
                        style: TextStyle(fontSize: 16, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          ResponsiveRowColumnItem(
            child: CachedNetworkImage(
              imageUrl:
                  'https://www.xevensolutions.com/wp-content/uploads/2024/02/home-section-img.png',
              width: ResponsiveBreakpoints.of(context).smallerThan(DESKTOP)
                  ? MediaQuery.of(context).size.width * 0.6 
                  : MediaQuery.of(context).size.width / 2.8,
              // scale: MediaQuery.of(context).size.width *.5, 
            ),
          ),
        ],
      ),
    );
  }
}
