import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: Colors.green,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              pinned: true,
              title: Text("Sliver"),
              centerTitle: true,
              expandedHeight: 200,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.network(
                  "https://www.wartsila.com/images/default-source/marine-pictures/webinars/offshore-wind_webinar_hub_1920-x-690_.tmb-424x262.jpg?sfvrsn=5b827843_1",
                  fit: BoxFit.cover,
                ),
                title: Text("Sliver"),
                centerTitle: true,
              ),
            ),
            SliverList(
                delegate: SliverChildBuilderDelegate(
                    (context, index) => Column(
                          children: [
                            Container(
                              height: 30,
                              color: Colors.amber,
                            ),
                            Container(
                              height: 3,
                              color: Colors.white,
                            ),
                          ],
                        ),
                    childCount: 30))
          ],
        ));
  }
}
