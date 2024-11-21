
part of '../page.dart';

class Snack extends StatelessWidget {
  const Snack ({super.key});

  final List<Product> products = const [
    Product(
      imageUrl: 'assets/images/snack1.png',
      category: 'Donut',
      title: 'Pitch Choco',
      price: 'Rp. 8.000',
    ),

    Product(
      imageUrl: 'assets/images/snack2.png',
      category: 'Donut',
      title: 'Sparkle Choco',
      price: 'Rp. 10.000',
    ),

    Product(
      imageUrl: 'assets/images/snack3.png',
      category: 'Cookie',
      title: 'Cinta Kamu',
      price: 'Rp. 5.000',
    ),

    Product(
      imageUrl: 'assets/images/snack4.png',
      category: 'Cookie',
      title: 'Choco Chips',
      price: 'Rp. 5.000',
    ),

    Product(
      imageUrl: 'assets/images/snack5.png',
      category: 'Croissant',
      title: 'Classic Croissant',
      price: 'Rp. 15.000',
    ),

    Product(
      imageUrl: 'assets/images/snack6.png',
      category: 'Croissant',
      title: 'Choco Croissant',
      price: 'Rp. 18.000',
    ),

  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: AppColor.whiteText),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              final product = products[index];
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(product.imageUrl),
                  ),
                  const SizedBox(width: 14,),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.category, style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.greyText
                          ),),

                          SizedBox(height: 6,),
                          Text(product.title, style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteText
                          ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6,),
                          Text(product.price, style: TextStyle(
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
            itemCount: products.length,
          ),
        ],
      ),
    );
  }
}