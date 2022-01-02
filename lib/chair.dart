import 'package:flutter/material.dart';

class Chair extends StatelessWidget {
  const Chair({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        Center(
            child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Column(
            // ata thiko ache bt image ta r sob gula likha dui vag tar jonn design ta dehte hbe
            children: [
              Row(
                children: [
                  Container(
                    child: Mycard(
                      "https://image.shutterstock.com/z/stock-photo-bright-blue-colored-sofa-retro-style-isolated-on-white-with-clipping-path-311994749.jpg",
                      "Nashville Armchair",
                      "Royal Blue",
                      "1",
                      "Rs 1895",
                    ),
                  ),
                  Container(
                    child: Mycard(
                        "https://image.shutterstock.com/image-photo/three-seats-cozy-white-fabric-600w-677489710.jpg",
                        "Elisa Wingbook Chair",
                        "Royal Pink",
                        "1",
                        "Rs 1512"),
                  ),
                  Container(
                    child: Mycard(
                        "https://image.shutterstock.com/image-photo/white-accent-chair-isolated-on-600w-1943824894.jpg",
                        "Elisha Wingbook Chair ",
                        "I love you",
                        "1",
                        "Rs 1512"),
                  ),
                ],
              ),
            ],
          ),
        )),
      ],
    ));
  }
}

class Mycard extends StatelessWidget {
  var img;
  var title;
  var color;
  var Quantity;
  var price;
  Mycard(this.img, this.title, this.color, this.Quantity, this.price);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 400,
              width: 350,
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                elevation: 15,
                shadowColor: Colors.blue,
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  //ai j  ai khane image ta k ek pase r sob gula text ek pase rakar jonn row drkar chilo
                  child: Row(
                    children: [
                      //aikhane image ta k rakhchi
                      Container(
                        height: 200,
                        width: 300,
                        child: Image.network(
                          img,
                          height: 250,
                          width: 200,
                          // color: Colors.amber,
                        ),
                      ),

                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //ata ai khane chilo bujcch jan ???

                          // Container(
                          //   height: 200,
                          //   width: 300,
                          //   child: Image.network(
                          //     img,
                          //     height: 250,
                          //     width: 200,
                          //     // color: Colors.amber,
                          //   ),

                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 10, bottom: 20),
                            child: Text(
                              title,
                              style: TextStyle(
                                  fontSize: 14, color: Colors.black54),
                            ),
                          ),
                          Text(
                            price,
                            style: TextStyle(
                                color: Colors.blue,
                                fontWeight: FontWeight.bold),
                          ),
                          Container(
                            alignment: Alignment.centerRight,
                            child: Card(
                              shape: RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(5))),
                              color: Colors.blue,
                              elevation: 15,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              )),
        ),
      ],
    );
  }
}
