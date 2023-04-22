import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NewsDetailsContentSection extends StatelessWidget {
  const NewsDetailsContentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 16),
        child: Column(
          children: [
            Row(
              children: [
                const CircleAvatar(
                  radius: 20,
                  backgroundImage: NetworkImage(
                      "https://th.bing.com/th/id/R.1571feab3920f13c0206fc99cdd4547d?rik=b%2bXdjwjx5guxJg&pid=ImgRaw&r=0"),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Text(
                  "CNN Indonesia",
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  width: 4,
                ),
                SvgPicture.asset("assets/imgs/verfied.svg", width: 20),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed faucibus quam vel dui euismod eleifend. Praesent nec mi vitae orci euismod interdum eget eu eros. Nam bibendum, odio id dignissim consequat, est purus commodo ex, id semper enim urna eu purus. Nulla sed ante vel massa eleifend semper. Duis euismod justo non mi lacinia, sed imperdiet elit varius. Aliquam aliquam elit vitae elit gravida, a lobortis metus malesuada. Phasellus ut risus sit amet risus tincidunt elementum. Integer ac tortor ac lacus aliquet sodales. Donec sit amet risus vitae sapien bibendum faucibus id id lorem Nulla et commodo lectus. Curabitur nec placerat turpis. Quisque hendrerit mauris vitae nulla bibendum, sed tempor odio euismod. Praesent hendrerit massa ut enim accumsan, id imperdiet quam bibendum. Nunc condimentum lorem vitae velit semper consectetur. Nam porttitor, quam vitae euismod faucibus, velit velit sollicitudin nisl, eget consectetur ante enim a arcu. Nulla facilisi. Maecenas faucibus nunc nec justo molestie, ac elementum felis dictum. Curabitur bibendum aliquam felis, sit amet scelerisque ex vestibulum ac. Sed rhoncus eget nisi vitae auctor Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean venenatis varius dolor, eget bibendum magna.Suspendisse potenti. Nunc maximus, libero sit amet suscipit suscipit, dolor ex lacinia ipsum, eu sodales nulla velit in augue. Nam malesuada, leo at varius molestie, mi orci malesuada nibh, non lobortis lorem ante in tortor. Sed dapibus, odio id tristique auctor, tellus arcu egestas lorem, sit amet tincidunt metus turpis in sapien. Fusce vehicula mollis magna, eget fringilla magna rutrum vitae. Aliquam vestibulum nunc vel urna imperdiet malesuada. Sed tristique tristique libero. In consectetur justo enim, nec dictum magna vulputate ac. Proin ultrices felis et justo faucibus feugiat. Donec sit amet sapien eros. Sed dapibus, orci non auctor bibendum, quam erat rhoncus ipsum, in mollis nisi sapien vitae libero.Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Sed at placerat neque. Suspendisse ac ligula risus. Sed sodales mauris nulla, vel egestas enim vestibulum eu. Morbi auctor quam nec augue dignissim venenatis. Sed ac pharetra leo. Integer ut malesuada mauris. Nam a nulla hendrerit, congue augue vel, pretium mi. Phasellus sit amet felis rhoncus, dignissim urna ut, malesuada sapien. Sed consequat, eros vel vulputate convallis, eros lorem lobortis odio, a bibendum nunc magna at libero. Vivamus sagittis augue vel arcu rutrum, quis ullamcorper nulla luctus. Cras rhoncus dolor a mauris convallis, vel bibendum",
              style: TextStyle(fontSize: 16),
            ),
            const SizedBox(
              height: 40,
            )
          ],
        ),
      ),
    );
  }
}
