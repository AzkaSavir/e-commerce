part of '../page.dart';

class _HeaderSection extends StatelessWidget {
  const _HeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hello Azka', style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  color: Colors.black
              ),),
              Text('@azkaSavir', style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Color(0xff504F5E),
              ),),
            ],
          ),
          Image.asset('assets/images/user.png', width: 54, height: 54,),
        ],
      ),
    );
  }
}