import 'package:flutter/material.dart';
import 'package:my_app/values/app_colors.dart';
import 'package:my_app/values/app_styles.dart';

class AppButton extends StatelessWidget {
  const AppButton({Key? key, required this.label, required this.onTap})
      : super(key: key);
  final String label;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: const BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black38, offset: Offset(3, 6), blurRadius: 6)
            ],
            borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Text(label,
            style: AppStyles.h5.copyWith(color: AppColors.textColor)),
      ),
    );
  }
}
