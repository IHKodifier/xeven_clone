import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:xeven_clone/data.dart';
import 'package:xeven_clone/widgets-export.dart';

class ServicesWeOffer extends StatefulWidget {
  const ServicesWeOffer({super.key});

  @override
  State<ServicesWeOffer> createState() => _ServicesWeOfferState();
}

class _ServicesWeOfferState extends State<ServicesWeOffer> {
  final _xevenServices = xevenServices;
  int selectedIndex = 0;
  XevenService? selectedService;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    selectedService = _xevenServices[selectedIndex];
  }

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
        constraints: BoxConstraints(
          maxHeight: MediaQuery.of(context).size.height * .75,
          maxWidth: MediaQuery.of(context).size.width / 3,
        ),
        // height: 350,
        // color: Colors.grey.shade50,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 200),
            child: Container(
              // color: const Color.fromARGB(255, 240, 40, 4),
              child: Stack(
                children: [
                  SizedBox(
                    width: 650,
                    height: MediaQuery.of(context).size.height * 0.95,
                    // color: const Color.fromRGBO(0, 0, 55, 1.0),
                    child:
                        //
                        Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            CachedNetworkImage(
                                imageUrl:
                                    'https://www.xevensolutions.com/wp-content/uploads/2023/08/Vector-1.png'),
                          ],
                        ),
                        Text(
                          'Services We Offer',
                          style: Theme.of(context)
                              .textTheme
                              .displaySmall
                              ?.copyWith(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .onPrimaryContainer),
                        ),
                      ],
                    ),
                  ),
                  serviceDetails(context),
                  serviceListing(context),
                ],
              ),
            )));
  }

  Positioned serviceListing(BuildContext context) {
    return Positioned(
      // left: 200,
      top: 80,
      child: Material(
        elevation: 55, 
        child: Container(
          width: 350,
          height: MediaQuery.of(context).size.height * 0.85,
          color: const Color.fromRGBO(0, 0, 55, 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ..._xevenServices.map(
                (e) => MouseRegion(
                    onEnter: (event) {
                      setState(() {
                        selectedIndex = _xevenServices.indexOf(e);
                      });
                    },
                    onExit: (event) {
                      setState(() {});
                    },
                    child: Container(
                      color: _xevenServices[selectedIndex] == e
                          ? Colors.pink.shade300
                          : const Color.fromRGBO(0, 0, 55, 1.0),
                      child: Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, top: 6, bottom: 8),
                        child: ListTile(
                          title: TextButton(
                            onPressed: () {
                              setState(() {
                                selectedService =
                                    _xevenServices[_xevenServices.indexOf(e)];
                              });
                            },
                            child: Text(e.name,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w600)),
                          ),
                        ),
                      ),
                    )),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  Positioned serviceDetails(BuildContext context) {
    return Positioned(
      left: 340,
      top: 120,
      child: Column(
        children: [
          Card(
            elevation: 50,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .425,
              // color: Colors.grey.shade500,
              child: Material(
                elevation: 50,
                child: Container(
                  color: Theme.of(context).colorScheme.surface,
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 64.0, top: 48, bottom:32),  
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          selectedService!.name,
                          style: Theme.of(context)
                              .textTheme
                              .headlineMedium
                              ?.copyWith(
                                fontWeight: FontWeight.w700,
                                color: const Color.fromRGBO(0, 0, 55, 1.0),
                              ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(selectedService!.description,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: const Color.fromRGBO(
                                        114, 116, 159, 1.0),
                                    fontSize: 18,
                                    fontFamily:
                                        GoogleFonts.titilliumWeb.toString(),
                                  )),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical :16.0),
                          child: Text('Business Benefits of Choosing Us', 
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w700,
                                    color: const Color.fromRGBO(
                                        114, 116, 159, 1.0),
                                    fontSize: 18,
                                    fontFamily:
                                        GoogleFonts.titilliumWeb.toString(),
                                  )),
                        ),
                        
                        benefits_widget(context,0),
                        SizedBox(height: 8,),
                        benefits_widget(context,1),
                        SizedBox(height: 8,),
                        benefits_widget(context,2),
                        SizedBox(height: 8,),
                        benefits_widget(context,3),
                        SizedBox(height: 8,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  RichText benefits_widget(BuildContext context, int index) {
    return RichText(
                        text: TextSpan(
                          children: [
                            WidgetSpan(
                              child: SizedBox(
                                height: 10,
                                width: 10,
                                child: Container(
                                  color: const Color.fromRGBO(0, 0, 55, 1.0),
                                ),
                              ),
                            ),
                            const TextSpan(
                              text: "\u00A0", // Non-breaking space character
                              style: TextStyle(
                                  letterSpacing:
                                      10.0), // Adjust width as needed
                            ),
                            TextSpan(
                              text: selectedService?.benefits[index].title,
                              style: const TextStyle(
                                fontSize: 16.0,
                                color: Color.fromRGBO(114, 116, 159, 1.0),
                              ).copyWith(fontWeight: FontWeight.w700),
                            ),
                            TextSpan(
                                text:
                                    selectedService?.benefits[index].description,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyLarge
                                    ?.copyWith(
                                      color: const Color.fromRGBO(
                                          114, 116, 159, 1.0),
                                      fontSize: 18,
                                      fontFamily:
                                          GoogleFonts.titilliumWeb.toString(),
                                    )),
                          ],
                        ),
                      );
  }
}
