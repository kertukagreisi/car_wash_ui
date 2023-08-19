import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:car_wash_ui/resources/fonts.dart';

import '../../resources/app_colors.dart';
import '../../resources/dimens.dart';

class TextAreaWidget extends StatelessWidget {
  final String label;
  final bool mandatory;
  final Function(String?) onChange;
  final bool? disabled;
  final String? initialValue;

  const TextAreaWidget({
    Key? key,
    required this.label,
    required this.mandatory,
    required this.onChange,
    this.disabled,
    this.initialValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: Dimens.filterButtonWidth,
      color: Colors.white,
      child: Row(
        children: [
          Expanded(
            child: FormBuilderTextField(
              style: const TextStyle(
                fontFamily: Fonts.trajan,
              ),
              enabled: (disabled == true) ? false : true,
              minLines: 3,
              initialValue: initialValue ?? '',
              keyboardType: TextInputType.multiline,
              maxLines: null,
              name: label,
              decoration: _buildInputDecoration(label, context),
              onChanged: onChange,
              validator: (value) => mandatory && (value == null || value.isEmpty) ? 'Field required' : null,
            ),
          ),
        ],
      ),
    );
  }

  InputDecoration _buildInputDecoration(String label, BuildContext context) {
    const outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(2.0)),
      borderSide: BorderSide(
        color: AppColors.darkBlue,
      ),
    );

    return InputDecoration(
      labelText: label + (mandatory ? ' *' : ''),
      floatingLabelStyle: Dimens.extraSmallTextStyle,
      errorStyle: const TextStyle(fontSize: 9.0, height: 1.0),
      errorMaxLines: 1,
      hoverColor: Colors.white,
      contentPadding: const EdgeInsets.only(
        left: 10,
        bottom: 30,
        top: 20,
        right: 10,
      ),
      enabledBorder: outlineInputBorder,
      focusedBorder: outlineInputBorder,
      disabledBorder: outlineInputBorder,
      errorBorder: outlineInputBorder,
      focusedErrorBorder: outlineInputBorder,
    );
  }
}
