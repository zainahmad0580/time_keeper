import 'package:flutter/material.dart';

import '../../utils/app_colors.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool isLoading;
  final VoidCallback onPress;

  const RoundButton({
    super.key,
    required this.title,
    this.isLoading = false,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: onPress,
        child: Container(
          height: 40,
          width: MediaQuery.of(context).size.width * 0.5,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: AppColors.green),
          child: Center(
            child: isLoading
                ? const CircularProgressIndicator(
                    strokeWidth: 3,
                    color: AppColors.white,
                  )
                : Text(
                    title,
                    style: const TextStyle(color: AppColors.white),
                  ),
          ),
        ));
  }
}
