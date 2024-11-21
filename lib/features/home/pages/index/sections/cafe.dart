

part of '../page.dart';

class Cafe extends StatelessWidget {
  const Cafe({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'For You',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          const SizedBox(
            height: 16,
          ),
          ListView.separated(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (BuildContext context, int index) {
              return Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(AppImage.training),
                  ),
                  const SizedBox(width: 14,),
                  const Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(right: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Basketball', style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w400,
                              color: AppColor.greyText
                          ),),

                          SizedBox(height: 6,),
                          Text('Predator 20.3Grou20.3Grou20.3Grou20.3Grotor 20.3Grou20.3Grou20.3Grou20.3Grotor 20.3Grou20.3Grou20.3Grou20.3Grou20.3Grou20.3Ground', style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: AppColor.whiteText
                          ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 6,),
                          Text('\$33.6', style: TextStyle(
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
    );
  }
}
