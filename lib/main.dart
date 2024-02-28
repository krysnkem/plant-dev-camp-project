import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

const primaryGreenColor = Color(0xff438E64);
final whiteWithOpacity = Colors.white.withOpacity(0.8);
const deepGreenAccent = Color(0xff327250);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Home(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: GoogleFonts.arimoTextTheme(),
      ),
    );
  }
}

class Home extends StatelessWidget {
  const Home({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryGreenColor,
        elevation: 0,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 420,
                    width: MediaQuery.of(context).size.width,
                    // color: primaryColor,
                    decoration: BoxDecoration(
                      color: primaryGreenColor,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.elliptical(
                          MediaQuery.of(context).size.width,
                          100.0,
                        ),
                      ),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Our Plants',
                          style: Theme.of(context)
                              .textTheme
                              .headlineLarge!
                              .copyWith(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Lorem Ipsum Discovery Plants',
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: whiteWithOpacity,
                                  ),
                        ),
                        const SizedBox(
                          height: 35,
                        ),
                        SizedBox(
                          width: 330,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              buildCustomTextSpan(
                                context: context,
                                key: 'Price',
                                value: '\$30',
                              ),
                              Container(
                                color: whiteWithOpacity,
                                height: 15,
                                width: 2,
                              ),
                              buildCustomTextSpan(
                                context: context,
                                key: 'Name',
                                value: 'Best plant',
                              ),
                              Container(
                                color: whiteWithOpacity,
                                height: 15,
                                width: 2,
                              ),
                              buildCustomTextSpan(
                                context: context,
                                key: 'Name',
                                value: 'Best plant',
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            const CircleAvatar(
                              backgroundColor: deepGreenAccent,
                              radius: 30,
                              child: Icon(Icons.arrow_back),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(bottom: 30.0),
                              child: SizedBox(
                                height: 250,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10,
                                  ), // Adjust the value to change the roundness

                                  child: Image.asset(
                                    'assets/thesill.jpg',
                                  ),
                                ),
                              ),
                            ),
                            const CircleAvatar(
                              backgroundColor: Color(0xff327250),
                              radius: 30,
                              child: Icon(Icons.arrow_forward),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                'Explore More',
                style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: const Color(0xff424246),
                      fontSize: 30,
                    ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                width: 250,
                padding: const EdgeInsets.only(left: 10),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 235, 233, 235),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                          color: primaryGreenColor,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                        ),
                    hintText: 'Search',
                    suffixIcon: const Icon(
                      Icons.search,
                      color: primaryGreenColor,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 300,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => buildPlantCard(context),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildPlantCard(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 200,
        width: 162,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 10.0,
                  )
                ],
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(
                  10,
                ),
                child: Image.asset(
                  'assets/thesill.jpg',
                ),
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: ColoredBox(
                color: deepGreenAccent,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Plant 1',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                    Text(
                      '\$30',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  RichText buildCustomTextSpan({
    required BuildContext context,
    required String key,
    required String value,
  }) {
    return RichText(
      text: TextSpan(
        text: '$key: ',
        children: [
          TextSpan(
            text: value,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  color: whiteWithOpacity,
                  fontWeight: FontWeight.bold,
                ),
          )
        ],
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 14,
              color: whiteWithOpacity,
            ),
      ),
    );
  }
}
