import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:infinity_web_app/res/my_colors.dart';
import 'package:infinity_web_app/responsive.dart';
import 'package:infinity_web_app/widgets/custom_text_widget.dart';
import 'package:infinity_web_app/widgets/hover_widget.dart';

class SeeMoreWidget extends StatelessWidget {
  const SeeMoreWidget({Key? key, this.isSeeMore, this.onTap}) : super(key: key);

  final bool? isSeeMore;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: OnHover(builder: (isHovered) {
        final color = isHovered ? MyColors.green_accent : Colors.white;

        return Container(
          height: Responsive.isDesktop(context) ? 55 : 45,
          width: Responsive.isDesktop(context) ? 202 : 150,
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: color, //MyColors.white,
              border: Border.all(color: MyColors.green_accent, width: 2),
              borderRadius: isHovered ? BorderRadius.circular(8) : BorderRadius.zero),
          child: CustomTextWidget(
            text: isSeeMore! ? 'SEE LESS' : 'SEE MORE',
            fontSize: 20,
            fontColor: !isHovered ? MyColors.grey_text : MyColors.white,
          ),
        );
      }),
    );
  }
}
