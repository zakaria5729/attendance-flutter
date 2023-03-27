import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../gen/fonts.gen.dart';
import '../../translations/locale_keys.g.dart';
import '../values/app_colors.dart';
import '../values/app_font_size.dart';
import '../values/constants.dart';

class TextFormFieldWidget extends StatefulWidget {
  final String? hint;
  final String? font;
  final bool enabled;
  final String? label;
  final bool readOnly;
  final int maxLines;
  final int minLines;
  final int? maxLength;
  final bool autofocus;
  final bool isValidate;
  final double? fontSize;
  final EdgeInsets padding;
  final TextAlign textAlign;
  final Color textFontColor;
  final VoidCallback? onTap;
  final Widget? suffixWidget;
  final IconData? prefixIcon;
  final IconData? suffixIcon;
  final Widget? prefixWidget;
  final bool disableLabelText;
  final String? defaultValue;
  final FontWeight fontWeight;
  final bool isEmailValidation;
  final Color? prefixIconColor;
  final Color? suffixIconColor;
  final bool isRemoveBottomBorder;
  final EdgeInsets contentPadding;
  final TextInputType? textInputType;
  final InputDecoration? inputDecoration;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final Function(String? value)? onChanged;
  final InputBorder? inputDecorationBorder;
  final FloatingLabelBehavior? floatingLabelBehavior;
  final FilteringTextInputFormatter? inputFormatters;

  TextFormFieldWidget({
    Key? key,
    this.hint,
    this.font,
    this.onTap,
    this.label,
    this.onChanged,
    this.maxLength,
    this.controller,
    this.suffixIcon,
    this.prefixIcon,
    this.prefixWidget,
    this.suffixWidget,
    this.maxLines = 1,
    this.minLines = 1,
    this.defaultValue,
    this.enabled = true,
    this.inputFormatters,
    this.inputDecoration,
    this.readOnly = false,
    this.isValidate = true,
    this.autofocus = false,
    this.inputDecorationBorder,
    this.floatingLabelBehavior,
    this.fontSize = fontSize16,
    this.disableLabelText = false,
    this.isEmailValidation = false,
    this.textFontColor = colorDark,
    this.prefixIconColor = colorText,
    this.textAlign = TextAlign.start,
    this.suffixIconColor = colorText,
    this.isRemoveBottomBorder = false,
    this.fontWeight = regularFontWeight,
    this.textInputType = TextInputType.text,
    this.textInputAction = TextInputAction.done,
    this.padding = const EdgeInsets.fromLTRB(20, 8, 20, 8),
    this.contentPadding = const EdgeInsets.fromLTRB(0, 0, 0, 8),
  }) : super(key: key);

  @override
  State<TextFormFieldWidget> createState() => _TextFormFieldWidgetState();
}

class _TextFormFieldWidgetState extends State<TextFormFieldWidget> {
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _formKey.currentState?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: widget.padding,
      child: Form(
        key: _formKey,
        child: TextFormField(
          onTap: widget.onTap,
          enabled: widget.enabled,
          maxLines: widget.maxLines,
          minLines: widget.minLines,
          readOnly: widget.readOnly,
          textAlign: widget.textAlign,
          cursorColor: colorPrimary,
          autofocus: widget.autofocus,
          controller: widget.controller,
          initialValue: widget.defaultValue,
          onChanged: widget.onChanged != null
              ? (value) {
                  if (_formKey.currentState != null &&
                      _formKey.currentState!.validate() &&
                      value.isNotEmpty) {
                    widget.onChanged!(value);
                  } else {
                    widget.onChanged!(null);
                  }
                }
              : null,
          validator: widget.isValidate
              ? (value) {
                  var labelText = widget.label ?? "";

                  if (value == null || value.trim().isEmpty) {
                    return labelText + LocaleKeys.emptyFieldWarning.tr();
                  } else if (widget.isEmailValidation) {
                    if (value.contains(" ")) {
                      return labelText +
                          LocaleKeys.canNotContainWhiteSpace.tr();
                    } else if (!RegExp(emailRegex).hasMatch(value)) {
                      return LocaleKeys.invlidEmailAddress.tr();
                    }
                  }

                  return null;
                }
              : null,
          inputFormatters:
              widget.inputFormatters == null ? null : [widget.inputFormatters!],
          style: TextStyle(
            fontSize: widget.fontSize,
            color: widget.textFontColor,
            fontWeight: widget.fontWeight,
            fontFamily: widget.font ?? FontFamily.ageo,
          ),
          enableSuggestions: true,
          maxLength: widget.maxLength,
          keyboardType: widget.textInputType,
          textInputAction: widget.textInputAction,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          decoration: widget.inputDecoration ??
              InputDecoration(
                alignLabelWithHint: true,
                hintMaxLines: 1,
                errorMaxLines: 2,
                filled: widget.isRemoveBottomBorder,
                errorStyle: TextStyle(
                  color: colorRed,
                ),
                fillColor:
                    widget.isRemoveBottomBorder ? Colors.transparent : null,
                focusedBorder: widget.inputDecorationBorder?.copyWith(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: colorPrimary,
                  ),
                ),
                border: widget.inputDecorationBorder?.copyWith(
                  borderSide: BorderSide(
                    width: 1.5,
                    color: colorPrimary,
                  ),
                ),
                floatingLabelBehavior: widget.floatingLabelBehavior,
                prefix: widget.prefixWidget,
                suffix: widget.suffixWidget,
                hintText: widget.hint ?? "",
                labelText: widget.disableLabelText
                    ? null
                    : widget.label ?? widget.hint,
                contentPadding: widget.contentPadding,
                prefixIcon: widget.prefixIcon != null
                    ? IconButton(
                        icon: Icon(
                          widget.prefixIcon,
                          color: widget.prefixIconColor,
                        ),
                        onPressed: () {},
                      )
                    : null,
                suffixIcon: widget.suffixIcon != null
                    ? IconButton(
                        icon: Icon(
                          widget.suffixIcon,
                          color: widget.suffixIconColor,
                        ),
                        onPressed: () {},
                      )
                    : null,
              ),
        ),
      ),
    );
  }
}
