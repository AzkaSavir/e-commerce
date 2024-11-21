part of '../page.dart';

class All extends StatelessWidget {
  const All ({super.key});

  final List<Product> products = const [
    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Hiking',
      title: 'TERREX URBAN LOW',
      price: 'Rp. 1.200.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Hiking',
      title: 'COURT VISION 2.0',
      price: 'Rp. 2.200.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: 'Rp. 800.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: 'Rp. 800.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: 'Rp. 800.000',
    ),

  ];

  final List<Product> arrivalProducts = const [
    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Hiking',
      title: 'TERREX URBAN LOW',
      price: '1.200.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Hiking',
      title: 'COURT VISION 2.0',
      price: '2.200.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: '800.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: 'Rp. 800.000',
    ),

    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Training',
      title: 'SL 72 SHOES',
      price: '800.000',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Popular Products',
                  style: TextStyle(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 14,
                ),
                SizedBox(
                  height: 270,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      final product = products[index];
                      return Container(
                        width: 215,
                        decoration: BoxDecoration(
                          color: Color(0x13000000),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(product.imageUrl),
                            const SizedBox(
                              height: 30,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 20.0, right: 15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    product.category,
                                    style: const TextStyle(color: AppColor.greyText, fontSize: 12, fontWeight: FontWeight.w400),
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    product.title,
                                    style: const TextStyle(fontSize: 18, color: AppColor.blackText, fontWeight: FontWeight.w600),
                                    overflow: TextOverflow.ellipsis,
                                    // maxLines: 2,
                                  ),
                                  const SizedBox(
                                    height: 6,
                                  ),
                                  Text(
                                    product.price,
                                    style: const TextStyle(fontSize: 14, color: AppColor.blueText, fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const SizedBox(
                        width: 30,
                      );
                    },
                    itemCount: products.length,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'New Arrivals',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
                ),
                const SizedBox(
                  height: 16,
                ),
                ListView.separated(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final arrivalProduct = arrivalProducts[index];
                    return Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Image.asset(arrivalProduct.imageUrl),
                        ),
                        const SizedBox(width: 14,),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(right: 15.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(arrivalProduct.category, style: const TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColor.greyText
                                ),),

                                const SizedBox(height: 6,),
                                Text(arrivalProduct.title, style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black
                                ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                                const SizedBox(height: 6,),
                                Text('Rp ${arrivalProduct.price}', style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: AppColor.blueText
                                ),),
                              ],
                            ),
                          ),
                        )
                      ],
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const SizedBox(height: 30,);
                  },
                  itemCount: 5,
                ),
              ],
            ),
          ],
        ));
  }
}