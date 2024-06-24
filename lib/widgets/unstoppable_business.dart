import 'package:xeven_clone/widgets-export.dart';

class UnstoppableBusiness extends StatelessWidget {
  const UnstoppableBusiness({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*.80,
      // color: Colors.pink,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Spacer(),
          SizedBox(
            width: MediaQuery.of(context).size.width / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Drive Unstoppable Business Success Through AI!',
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                Text(
                  ''' Maximize your business potential with our exceptional AI Development Services. Our customer-centric and passionate team of engineers is committed to delivering tailored solutions that exceed your expectations.

We leverage our expertise in machine learning, deep learning, and AI development to deliver exceptional solutions in NLP, computer vision, predictive analytics, generative AI, AI chatbot development, and more.

Our AI-based solutions offer a clear pathway to success, helping businesses improve decision-making, automate operations, save time, and boost profits. Partner with Xeven Solutions – AI Experts in Pakistan, to seamlessly integrate, scale, and access data-driven insights, leading t''',
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
          CachedNetworkImage(
            imageUrl:'https://www.xevensolutions.com/wp-content/uploads/2024/02/home-section-img.png',
            width: MediaQuery.of(context).size.width * .45,
            // scale: 0.75,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}
