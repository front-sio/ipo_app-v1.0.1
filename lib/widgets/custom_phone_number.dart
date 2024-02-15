import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:country_pickers/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:ipo_app/core/app_export.dart';
import 'package:ipo_app/core/utils/validation_functions.dart';
import 'package:ipo_app/widgets/custom_text_form_field.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  CustomPhoneNumber({
    Key? key,
    required this.country,
    required this.onTap,
    required this.controller,
  }) : super(
          key: key,
        );

  Country country;

  Function(Country) onTap;

  TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(
          5.h,
        ),
        border: Border.all(
          color: theme.colorScheme.errorContainer,
          width: 1.h,
        ),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: () {
              _openCountryPicker(context);
            },
            child: Padding(
              padding: EdgeInsets.only(
                left: 10.h,
                top: 4.v,
                bottom: 4.v,
              ),
              child: Row(
                children: [
                  Container(
                    height: 23.v,
                    width: 25.h,
                    margin: EdgeInsets.symmetric(vertical: 6.v),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                      child: CountryPickerUtils.getDefaultFlagImage(
                        country,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowDownGray50003,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                    margin: EdgeInsets.fromLTRB(4.h, 8.v, 5.h, 8.v),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 9.h,
                right: 5.h,
              ),
              child: CustomTextFormField(
                width: 235.h,
                controller: controller,
                hintText: "lbl_12656982".tr,
                hintStyle: CustomTextStyles.titleSmallRobotoBlack900,
                textInputType: TextInputType.phone,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(13.h, 3.v, 8.h, 3.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgRightIcon,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 20.v,
                ),
                validator: (value) {
                  if (!isValidPhone(value)) {
                    return "err_msg_please_enter_valid_phone_number".tr;
                  }
                  return null;
                },
                contentPadding: EdgeInsets.only(
                  left: 30.h,
                  top: 1.v,
                  bottom: 1.v,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDialogItem(Country country) => Row(
        children: <Widget>[
          CountryPickerUtils.getDefaultFlagImage(country),
          Container(
            margin: EdgeInsets.only(
              left: 10.h,
            ),
            width: 60.h,
            child: Text(
              "+${country.phoneCode}",
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
          const SizedBox(width: 8.0),
          Flexible(
            child: Text(
              country.name,
              style: TextStyle(fontSize: 14.fSize),
            ),
          ),
        ],
      );
  void _openCountryPicker(BuildContext context) => showDialog(
        context: context,
        builder: (context) => CountryPickerDialog(
          searchInputDecoration: InputDecoration(
            hintText: 'Search...',
            hintStyle: TextStyle(fontSize: 14.fSize),
          ),
          isSearchable: true,
          title: Text('Select your phone code',
              style: TextStyle(fontSize: 14.fSize)),
          onValuePicked: (Country country) => onTap(country),
          itemBuilder: _buildDialogItem,
        ),
      );
}
