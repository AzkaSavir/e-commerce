
part of '../page.dart';

class Coffe extends StatelessWidget {
  const Coffe ({super.key});

  final List<Product> products = const [
    Product(
      imageUrl: 'assets/images/cappucino.png',
      category: 'Cappucino',
      title: 'Expresso',
      price: 'Rp. 25.000',
    ),

    Product(
      imageUrl: 'assets/images/machacoffe.png',
      category: 'Macha',
      title: 'Green Tea',
      price: 'Rp. 23.000',
    ),

    Product(
      imageUrl: 'assets/images/menthollatte.png',
      category: 'Menthol Latte',
      title: 'Sigma Rizz',
      price: 'Rp. 27.000',
    ),

    Product(
      imageUrl: 'assets/images/strongarabika.png',
      category: 'Arabika',
      title: 'Ireng Coffe',
      price: 'Rp. 21.000',
    ),

    Product(
      imageUrl: 'assets/images/sweetsalty.png',
      category: 'latte & lemon',
      title: 'Sour Latte',
      price: 'Rp. 18.000',
    ),

    Product(
      imageUrl: 'assets/images/vanilalatte.png',
      category: 'Latte',
      title: 'Creamy Baby',
      price: 'Rp. 23.000',
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
                      padding: const EdgeInsets.only(right: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(product.category, style: const TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.greyText
                          ),),

                          const SizedBox(height: 6,),
                          Text(product.title, style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteText
                          ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          const SizedBox(height: 6,),
                          Text(product.price, style: const TextStyle(
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