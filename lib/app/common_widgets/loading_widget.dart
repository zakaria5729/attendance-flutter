import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import '../../app/values/app_colors.dart';
import '../../translations/locale_keys.g.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.textColor = colorPrimary,
  }) : super(key: key);

  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const SizedBox(
          height: 21,
          width: 21,
          child: CircularProgressIndicator(
            color: Colors.red,
            strokeWidth: 2.8,
          ),
        ),
        const SizedBox(
          width: 12,
        ),
        Text(
          LocaleKeys.pleaseWait.tr(),
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}
