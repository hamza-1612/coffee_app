import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../data/cart_data.dart';
import '../data/product.dart';
import 'cart_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    List<Product> products = [
      Product(
        "assets/images/image 6.png",
        'Arabica',
        18,
        "Lorem ipsum dolor sit \namet cons ",
      ),
      Product(
        "assets/images/image 6.png",
        'Arabica',
        18,
        "Lorem ipsum dolor sit \namet cons ",
      ),
      Product(
        "assets/images/image 6.png",
        'Arabica',
        18,
        "Lorem ipsum dolor sit \namet cons ",
      ),
      Product(
        "assets/images/image 6.png",
        'Arabica',
        18,
        "Lorem ipsum dolor sit \namet cons ",
      ),
    ];
    return Scaffold(
      backgroundColor: Color(0xff543A20),

      appBar: AppBar(
        toolbarHeight: 120,
        titleSpacing: 16,
        backgroundColor: Color(0xff543A20),
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundColor: Color(0xffCE9760),
              child: Icon(Icons.person, color: Colors.white, size: 30),
            ),
            SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Shahzaib',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Good Morning!",
                  style: TextStyle(
                    fontWeight: FontWeight.w300,
                    fontSize: 18,
                    color: Color(0xffE3E3E3),
                  ),
                ),
              ],
            ),
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/search-line.svg'),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset('assets/images/search-line.svg'),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(13.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 146,
              decoration: BoxDecoration(
                color: Color(0xffCE9760),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 5.0,
                  vertical: 10,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Get 20% Discount \nOn your First Order!",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                    Spacer(),
                    Image.asset("assets/images/image 12.png"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: GridView.builder(
                itemCount: products.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 13,
                  crossAxisCount: 2,
                  mainAxisExtent: 210,
                ),
                itemBuilder: (context, index) {
                  return Container(
                    width: 166,
                    decoration: BoxDecoration(
                      color: Color(0xffCE9760),
                      borderRadius: BorderRadius.circular(9),
                    ),
                    child: Stack(
                      children: [
                        Positioned.fill(
                          left: 8,
                          top: 8,
                          right: 8,
                          bottom: 52,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(child: Image.asset(products[index].image, fit: BoxFit.contain)),
                              Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      products[index].name,
                                      maxLines: 1,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 4),
                                  Text(
                                    "\$${products[index].price}",
                                    style: TextStyle(
                                      color: Color(0xff39260B),
                                      fontWeight: FontWeight.w700,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                products[index].desc,
                                style: TextStyle(
                                  color: Color(0xff39260B),
                                  fontSize: 9,
                                  fontWeight: FontWeight.w300,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          left: 8,
                          right: 8,
                          bottom: 8,
                          child: SizedBox(
                            height: 36,
                            child: ElevatedButton(
                              onPressed: () {
                                cartItems.add(products[index]);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff543A20),
                                foregroundColor: Colors.white,
                                padding: EdgeInsets.zero,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                              ),
                              child: Text('Add to Cart', style: TextStyle(fontSize: 12)),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xffCE9760),
          activeColor: Color(0xff543A20),
          initialActiveIndex: 0,
          items: [
        TabItem(icon: Icon(Icons.home_outlined, color: Colors.black), activeIcon: Icon(Icons.home_outlined, color: Colors.white)),
        TabItem(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black), activeIcon: Icon(Icons.shopping_cart_outlined, color: Colors.white)),
        TabItem(icon: Icon(Icons.favorite_border, color: Colors.black), activeIcon: Icon(Icons.favorite_border, color: Colors.white)),
        TabItem(icon: Icon(Icons.person_outline, color: Colors.black), activeIcon: Icon(Icons.person_outline, color: Colors.white)),
      ],
        onTabNotify: (index) => index < 2,
        onTap: (index){
            if(index==1){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>CartScreen()));
            }

        },


      ),

    );
  }
}
