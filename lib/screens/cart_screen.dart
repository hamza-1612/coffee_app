import 'package:flutter/material.dart';
import '../widgets/price_row.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../screens/home_screen.dart';
import '../data/cart_data.dart';


class CartScreen extends StatelessWidget {
  CartScreen({super.key});
  final TextEditingController _couponController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff543A20),

      appBar: AppBar(
        backgroundColor: Color(0xff543A20),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back_ios_new,color: Color(0xffCE9760),)),
       title: Center(
         child: Text('Cart',style: TextStyle(
           fontSize: 22,
           fontWeight: FontWeight.bold,
           color: Colors.white
         ),),
       ),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.notifications_none_sharp,color: Colors.white,))
        ],
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(13.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('My Order',style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Colors.white
              ),),
              SizedBox(height: 20,),
              if (cartItems.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
                  child: Center(
                    child: Text('Your cart is empty', style: TextStyle(color: Colors.white)),
                  ),
                )
              else
                ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: cartItems.length,
                  itemBuilder: (context,index){
                    final product = cartItems[index];
                    return   Dismissible(
                      key: ValueKey(product.name),
                      direction: DismissDirection.endToStart,

                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 8.0),
                        child: Container(
                          width: double.infinity,
                          height: 92,
                          decoration: BoxDecoration(
                              color: Color(0xffCE9760),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Row(
                            children: [
                              Image.asset(product.image),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(product.name,style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white
                                    ),),
                                    Text("\$${product.price}",style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w700,
                                        color: Color(0xff39260B)
                                    ),),
                                  ],
                                ),
                              ),
                              Spacer(),
                              Container(
                                width: 21,
                                height: 21,
                                decoration: BoxDecoration(
                                    color: Color(0xff543A20),
                                    borderRadius: BorderRadius.circular(6)
                                ),
                                child: Icon(Icons.remove,color: Colors.white,size: 12,),
                              ),
                              
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("1"),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(right: 8.0),
                                child: Container(
                                  width: 21,
                                  height: 21,
                                  decoration: BoxDecoration(
                                      color: Color(0xff543A20),
                                      borderRadius: BorderRadius.circular(6)
                                  ),
                                  child: Icon(Icons.add,color: Colors.white,size: 12,),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                 color: Color(0xffCE9760),
                 borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  children: [
                    Container(
                      height: 36,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        border: Border.all(color: Color(0xff543A20)),
                        borderRadius: BorderRadius.circular(9),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: TextField(
                              controller: _couponController,
                              textAlignVertical: TextAlignVertical.center,
                              style: TextStyle(
                                color: Color(0xff543A20),
                                fontSize: 11,
                              ),
                              decoration: InputDecoration(
                                hintText: "Enter Coupon Code here",
                                hintStyle: TextStyle(
                                  color: Color(0xff543A20),
                                  fontSize: 11,
                                ),
                                border: InputBorder.none,
                                isDense: true,
                                contentPadding: EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 8,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 84,
                            height: 36,
                            child: ElevatedButton(
                              onPressed: (){},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xff543A20),
                                foregroundColor: Colors.white,
                                elevation: 0,
                                padding: EdgeInsets.zero,
                                minimumSize: Size.zero,
                                tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.zero,
                                ),
                              ),
                              child: Text("Apply", style: TextStyle(fontSize: 12)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    PriceRow(label: 'Sub-total', amount: '\$44'),
                    SizedBox(height: 5),
                    PriceRow(label: 'Shipping', amount: '\$6'),
                    SizedBox(height: 5),
                    PriceRow(label: 'Total', amount: '\$50'),
                  ],
                ),
              ),
              SizedBox(height: 16),
              Center(
                child: TextButton(
                  onPressed: (){},
                  child: Text('Finalize Order', style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  )),
                ),
              ),
        
            ],
          ),
        ),
      ),
        bottomNavigationBar: ConvexAppBar(
          backgroundColor: Color(0xffCE9760),
          activeColor: Color(0xff543A20),
          initialActiveIndex: 1,
          items: [
            TabItem(icon: Icon(Icons.home_outlined, color: Colors.black), activeIcon: Icon(Icons.home_outlined, color: Colors.white)),
            TabItem(icon: Icon(Icons.shopping_cart_outlined, color: Colors.black), activeIcon: Icon(Icons.shopping_cart_outlined, color: Colors.white)),
            TabItem(icon: Icon(Icons.favorite_border, color: Colors.black), activeIcon: Icon(Icons.favorite_border, color: Colors.white)),
            TabItem(icon: Icon(Icons.person_outline, color: Colors.black), activeIcon: Icon(Icons.person_outline, color: Colors.white)),
          ],
          onTabNotify: (index) => index < 2,
          onTap: (index){
            if(index==0){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomeScreen()));
            }

          },


        )
    );
  }


}
