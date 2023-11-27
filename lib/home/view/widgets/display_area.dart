part of '../home_page.dart';

class DisplayArea extends StatelessWidget {
  const DisplayArea({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 20.0),
          child: Column(
            children: [
              Row(
                children: [
                  const CircleAvatar(
                    radius: 30,
                  ),
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.only(left: 16.0),
                      child: const Text(
                        "Hello",
                        style: TextStyle(fontSize: 18, letterSpacing: 0.8),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Card(
                color: const Color(0xfff3f6fc),
                elevation: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.all(16.0),
                  width: MediaQuery.of(context).size.width,
                  child: const Text(
                    "Hi",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
              )
            ],
          ),
        );
      },
      itemCount: 2,
    ));
  }
}
