import 'package:flutter/material.dart';
import 'package:app_settings/app_settings.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:easy_localization/easy_localization.dart';

import '../../common_widgets/appbar_widget.dart';
import '../../common_widgets/button_widget.dart';
import '../../common_widgets/text_form_field_wiget.dart';
import '../../values/app_colors.dart';
import '../../values/size_config.dart';
import '../../../shared/utils/util.dart';
import '../../provider/core_provider.dart';
import '../../../../shared/utils/extensions.dart';
import '../../../translations/locale_keys.g.dart';
import '../../viewmodel/attendance_viewmodel.dart';
import '../../state/attendance/attendance_state.dart';
import '../../viewmodel/attendance_request_viewmodel.dart';

class AttendanceView extends ConsumerWidget {
  const AttendanceView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    _listenAttendanceState(ref, context);
    ref.watch(attendanceViewModelProvider);
    ref.watch(attendanceRequestViewModelProvider);

    final attendanceViewModelNotifier = ref.read(
      attendanceViewModelProvider.notifier,
    );
    final requestViewModelNotifier = ref.read(
      attendanceRequestViewModelProvider.notifier,
    );

    return Scaffold(
      appBar: AppBarWidget(
        title: LocaleKeys.login.tr(),
        elevation: 1,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
                minWidth: constraints.maxWidth,
              ),
              child: GestureDetector(
                onTap: () => closeSoftKeyBoard(),
                child: Center(
                  child: Column(
                    children: [
                      TextFormFieldWidget(
                        label: LocaleKeys.name.tr(),
                        hint: LocaleKeys.name.tr(),
                        prefixIconColor: colorGrey,
                        textInputAction: TextInputAction.next,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.all(16),
                        inputDecorationBorder: OutlineInputBorder(),
                        onChanged: requestViewModelNotifier.setName,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      TextFormFieldWidget(
                        label: LocaleKeys.name.tr(),
                        hint: LocaleKeys.name.tr(),
                        prefixIconColor: colorGrey,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.text,
                        contentPadding: EdgeInsets.all(16),
                        inputDecorationBorder: OutlineInputBorder(),
                        onChanged: requestViewModelNotifier.setUserId,
                      ),
                      ButtonWidget(
                        text: LocaleKeys.submit.tr(),
                        width: SizeConfig.getScreenWidth(context) / 1.5,
                        isLoading: attendanceViewModelNotifier.isLoading,
                        onPressed: requestViewModelNotifier.isInvalidRequest()
                            ? null
                            : () => attendanceViewModelNotifier.attendance(),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  void _listenAttendanceState(
    WidgetRef ref,
    BuildContext context,
  ) {
    ref.listen<AttendanceState>(attendanceViewModelProvider, (previous, next) {
      next.whenOrNull(
        data: (data) {
          data.message?.showSnackBar(context, ref);
        },
        error: (error) async {
          if (error == LocaleKeys.locationDisabled.tr()) {
            final isEnabled =
                await ref.watch(locationObjectProvider).requestService();

            if (isEnabled) {
              ref.read(attendanceViewModelProvider.notifier).attendance();
            }
          } else if (error == LocaleKeys.locationPermanentlyDenied.tr()) {
            error.showSnackBar(context, ref);

            await Future.delayed(const Duration(seconds: 4)).then((_) async {
              await AppSettings.openAppSettings();
            });
          } else {
            error.showSnackBar(context, ref);
          }
        },
      );
    });
  }
}
