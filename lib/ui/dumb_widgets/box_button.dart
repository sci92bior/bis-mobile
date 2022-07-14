import 'package:bis/shared/app_colors.dart';
import 'package:bis/shared/styles.dart';
import 'package:flutter/material.dart';

class BoxButton extends StatelessWidget {
  final String title;
  final bool disabled;
  final bool busy;
  final void Function()? onTap;
  final bool outline;
  final Widget? leading;

  const BoxButton({
    Key? key,
    required this.title,
    this.disabled = false,
    this.busy = false,
    this.onTap,
    this.leading,
  })  : outline = false,
        super(key: key);

  const BoxButton.outline({
    required this.title,
    this.onTap,
    this.leading,
  })  : disabled = false,
        busy = false,
        outline = true;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 350),
        width: double.infinity,
        height: 48,
        alignment: Alignment.center,
        decoration: !outline
            ? BoxDecoration(
                color: !disabled ? kcButtonColor: kcMediumGreyColor,
                borderRadius: BorderRadius.circular(50),
              )
            : BoxDecoration(
    borderRadius: BorderRadius.circular(50), // Creates border
    color: kcButtonColor),
        child: !busy
            ? Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (leading != null) leading!,
                  if (leading != null) const SizedBox(width: 5),
                  Text(
                    title,
                    softWrap: true,
                    style: bodyStyle.copyWith(
                      fontWeight: !outline ? FontWeight.bold : FontWeight.w400,
                      color: !outline ? Colors.white : kcPrimaryColor,
                    ),
                  ),
                ],
              )
            : const CircularProgressIndicator(
                strokeWidth: 8,
                valueColor: AlwaysStoppedAnimation(Colors.white),
              ),
      ),
    );
  }
}
