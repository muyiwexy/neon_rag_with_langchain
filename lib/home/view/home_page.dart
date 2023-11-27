import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
part 'widgets/display_area.dart';
part 'widgets/text_area.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final queryController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                'Add File',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        "Upload pdf file",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      ),
                      SvgPicture.asset(
                        "assets/file_upload_icon.svg",
                        height: 35,
                        colorFilter: const ColorFilter.mode(
                          Colors.white,
                          BlendMode.srcIn,
                        ),
                      )
                    ],
                  )),
            )
          ],
        ),
      ),
      appBar: AppBar(
        toolbarHeight: kToolbarHeight * 1.5,
        leadingWidth: 100,
        leading: Center(
          child: Builder(builder: (context) {
            return Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 5.0, vertical: 5.0),
              child: InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: ClipOval(
                  child: Container(
                    height: 60,
                    width: 60,
                    color: const Color(0xffffffff),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/drawer_icon.svg",
                        height: 40,
                      ),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
        elevation: 0,
        scrolledUnderElevation: 0,
        title: const Text(
          "Whisper",
          style: TextStyle(
            letterSpacing: 1,
            fontSize: 25,
            fontFamily: "Roboto",
            fontWeight: FontWeight.w600,
            color: Color.fromARGB(255, 122, 124, 126),
          ),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: CircleAvatar(
              backgroundColor: Color.fromARGB(255, 122, 124, 126),
            ),
          )
        ],
      ),
      body: SelectionArea(
        child: Column(
          children: [
            const DisplayArea(),
            TextSection(
              queryController: queryController,
            )
          ],
        ),
      ),
    );
  }
}
