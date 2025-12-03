import 'package:flutter/material.dart';

/// Builds a generic page layout with header and footer.
/// Accepts a list of widgets for the body content.
Widget buildGenericPage(BuildContext context, List<Widget> bodyContent) {
  return Scaffold(
    body: SingleChildScrollView(
      child: Column(
        children: [
          // Header
          Container(
            height: 100,
            decoration: const BoxDecoration(
              color: Colors.white,
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey,
                  width: 1.5,
                ),
              ),
            ),
            child: Column(
              children: [
                // Top banner
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  color: const Color(0xFF4d2963),
                  child: const Text(
                    'PLACEHOLDER HEADER TEXT',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                ),
                // Main header
                generateMainHeader(context),
              ],
            ),
          ),

          ...bodyContent,

          // Footer
          generateFooter(context),
        ],
      ),
    ),
  );
}

Expanded generateMainHeader(BuildContext context) {
  GestureDetector unionLogo = GestureDetector(
    onTap: () {
      navigateToHome(context);
    },
    child: Image.network(
      'https://shop.upsu.net/cdn/shop/files/upsu_300x300.png?v=1614735854',
      height: 18,
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) {
        return Container(
          color: Colors.grey[300],
          width: 18,
          height: 18,
          child: const Center(
            child: Icon(Icons.image_not_supported, color: Colors.grey),
          ),
        );
      },
    ),
  );

  List<Widget> children = navSelectionBuilder(context);
  return Expanded(
    child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        children: [
          unionLogo,
          Expanded(
            child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: children),
          ),

          //Icons
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 600),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.search,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToGeneric(context, 'search'),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.person_outline,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToGeneric(context, 'sign-in'),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToGeneric(context, 'cart'),
                ),
                IconButton(
                  icon: const Icon(
                    Icons.menu,
                    size: 18,
                    color: Colors.grey,
                  ),
                  padding: const EdgeInsets.all(8),
                  constraints: const BoxConstraints(
                    minWidth: 32,
                    minHeight: 32,
                  ),
                  onPressed: () => navigateToHome(context),//todo implement menu. This is a placeholder for menu
                ),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

Container generateFooter(
  BuildContext context,
) {
  return Container(
    width: double.infinity,
    color: Colors.grey[50],
    padding: const EdgeInsets.all(24),
    child: Center(
      child: Wrap(
        spacing: 40,
        alignment: WrapAlignment.start,
        children: [
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  'Opening Hours',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              SizedBox(
                child: Text(
                  openingHoursMessage,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic),
                ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                child: Text(
                  'Help and Info',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: () => const {},//todo navigate to search,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  'Search',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextButton(
                onPressed: () => const {},//todo navigate to terms and conditions,
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  minimumSize: const Size(0, 0),
                  tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                ),
                child: const Text(
                  'Terms & Conditions',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
          const Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                child: Text(
                  'Latest Offers',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: 20),
              //Text input box with 'Email address' and 'Subscribe' button
            ],
          ),
        ],
      ),
    ),
  );
}

const String openingHoursMessage = '''
❄️ Winter Break Closure Dates ❄️
Closing 4pm 19/12/2025
Reopening 10am 05/01/2026
Last post date: 12pm on 18/12/2025
------------------------
(Term Time)
Monday - Friday 10am - 4pm
(Outside of Term Time / Consolidation Weeks)
Monday - Friday 10am - 3pm
Purchase online 24/7
''';

void navigateToHome(BuildContext context) {
  Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
}

void navigateToGeneric(BuildContext context, String routeName) {
  Navigator.pushNamed(context, '/$routeName');
}

List<Widget> navSelectionBuilder(BuildContext context) {
  return [
    TextButton(
      onPressed: () => navigateToHome(context),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'Home',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    TextButton(
      onPressed: () => navigateToGeneric(context, 'about-us'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'About Us',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
    TextButton(
      onPressed: () => navigateToGeneric(context, 'collections'),
      style: TextButton.styleFrom(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        minimumSize: const Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      child: Text(
        'Collections',
        style: TextStyle(
          color: Colors.grey[700],
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
    ),
  ];
}

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  bool _showMenu = false;

  @override
  Widget build(BuildContext context) {
    if (_showMenu) {
      return Container(
        width: double.infinity,
        color: Colors.grey[200],
        child: Column(
          children: [
            TextButton(
                onPressed: () => navigateToHome(context),
                child: const Text("Home")),
            TextButton(
                onPressed: () => navigateToGeneric(context, "about-us"),
                child: const Text("About Us")),
            TextButton(
                onPressed: () => navigateToGeneric(context, "collections"),
                child: const Text("Collections")),
          ],
        ),
      );
    }

    return Container();
  }
}
