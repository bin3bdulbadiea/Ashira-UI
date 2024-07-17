import 'package:alashira/consts/images.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

TextButton postButtons(
  BuildContext context, {
  required void Function()? onPressedOnIcon,
  required Widget icon,
  required String title,
  Color? titleColor,
}) =>
    TextButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.zero,
        ),
      ),
      onPressed: onPressedOnIcon,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          (context.screenWidth * 0.03).widthBox,
          Text(
            title,
            style: TextStyle(
              color: titleColor,
            ),
          ),
        ],
      ),
    );

TextButton postsTextButton(
  BuildContext context, {
  required void Function() onPressed,
  required void Function() onLongPress,
  required String text,
}) =>
    TextButton(
      style: ButtonStyle(
        padding: const WidgetStatePropertyAll(
          EdgeInsets.all(0),
        ),
        alignment: Alignment.centerRight,
        minimumSize: WidgetStatePropertyAll(Size(context.screenWidth, 0)),
        maximumSize: WidgetStatePropertyAll(
          Size(
            context.screenWidth,
            context.screenHeight * 0.2,
          ),
        ),
      ),
      onPressed: onPressed,
      onLongPress: onLongPress,
      child: Text(
        text,
        maxLines: 5,
        style: const TextStyle(
          fontSize: 17,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );

CircleAvatar profilePersonaLImage({
  required ImageProvider<Object> image,
}) =>
    CircleAvatar(
      maxRadius: 25,
      backgroundImage: image,
    );

TextButton openProfileFromName(
  BuildContext context, {
  required String accountName,
  required void Function()? onPressed,
}) =>
    TextButton(
      style: const ButtonStyle(
        padding: WidgetStatePropertyAll(
          EdgeInsets.all(0),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        accountName,
        maxLines: 2,
        style: const TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );

Container profileImage(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      shape: BoxShape.circle,
      border: Border.all(color: Colors.white, width: 5),
      image: const DecorationImage(
        image: AssetImage(icApp),
        fit: BoxFit.contain,
      ),
    ),
    width: context.screenWidth * 0.4,
    height: context.screenHeight * 0.2,
  );
}

Container coverPersonaLImage(BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[200],
      image: const DecorationImage(
        image: AssetImage(icApp),
        fit: BoxFit.cover,
      ),
    ),
    width: context.screenWidth,
    height: context.screenHeight * 0.3,
  );
}
