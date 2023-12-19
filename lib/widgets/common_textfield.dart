import 'package:camsquad/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../theme/app_theme.dart';

class CommonOutlineTextField extends StatelessWidget {
  CommonOutlineTextField({Key? key,required this.txt,this.icn, this.ctr,this.icnSuffix,this.onTab,
    required this.readOnly,required this.textInputType,required this.onChanged,required this.onEditingComplete}) : super(key: key);

  final String txt;
  final IconData? icn;
  final IconData? icnSuffix;
  final TextEditingController? ctr;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTab;
  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: Colors.white,
        border: Border.all(color: AppColor.borderColor)
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              enableInteractiveSelection : false,
              autovalidateMode: AutovalidateMode.always,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
              //style: kTextStyle12,
              controller: ctr,
              autofocus: false,
              readOnly: readOnly,
              maxLines: null,
              onTap: onTab,
              onChanged: onChanged,
              onEditingComplete: onEditingComplete,
              keyboardType: textInputType,
              style: kTextStyle16.copyWith(color: AppColor.contentTextColor),
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: '',
                  contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                  labelText: txt,
                  counterText: '',
                  labelStyle: kTextStyle12.copyWith(color: AppColor.labelTextColor),
              ),
            ),
          ),
          Icon(
            icnSuffix,
            color: Colors.black45,
          ),
          const SizedBox(width: 7,),
        ],
      ),
    );
  }
}
class CommonOutlinePasswordField extends StatelessWidget {
  CommonOutlinePasswordField({Key? key,required this.txt,this.icn, this.ctr,this.icnSuffix,this.onTab,
    required this.readOnly,required this.textInputType,required this.onEditingComplete,required this.onChanged}) : super(key: key);

  final String txt;
  final IconData? icn;
  final IconData? icnSuffix;
  final TextEditingController? ctr;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTab;
  final Function(String)? onChanged;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.white,
          border: Border.all(color: AppColor.borderColor)
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              enableInteractiveSelection : false,
              autovalidateMode: AutovalidateMode.always,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
              //style: kTextStyle12,
              controller: ctr,
              autofocus: false,
              obscureText: true,
              readOnly: readOnly,
              maxLines: 1,
              onTap: onTab,
              onChanged: onChanged,
              onEditingComplete: onEditingComplete,
              keyboardType: textInputType,
              style: kTextStyle16.copyWith(color: AppColor.contentTextColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: '',
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                labelText: txt,
                counterText: '',
                labelStyle: kTextStyle12.copyWith(color: AppColor.labelTextColor),
              ),
            ),
          ),
          Icon(
            icnSuffix,
            color: Colors.black45,
          ),
          const SizedBox(width: 7,),
        ],
      ),
    );
  }
}
class CommonTextField extends StatelessWidget {
  CommonTextField({Key? key,required this.txt,this.icn, this.ctr,this.icnSuffix,this.onTab,
    required this.readOnly,required this.textInputType}) : super(key: key);

  final String txt;
  final IconData? icn;
  final IconData? icnSuffix;
  final TextEditingController? ctr;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: AppColor.textFieldBgColor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              enableInteractiveSelection : false,
              autovalidateMode: AutovalidateMode.always,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
              //style: kTextStyle12,
              controller: ctr,
              autofocus: false,
              readOnly: readOnly,
              maxLines: null,
              onTap: onTab,
              onChanged: (val){},
              keyboardType: textInputType,
              style: kTextStyle16.copyWith(color: AppColor.contentTextColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                hintText: txt,
                counterText: '',
                hintStyle: kTextStyle14.copyWith(color: AppColor.labelTextColor),
              ),
            ),
          ),
          Icon(
            icnSuffix,
            color: Colors.black45,
          ),
          const SizedBox(width: 7,),
        ],
      ),
    );
  }
}
class CommonPhoneField extends StatelessWidget {
  CommonPhoneField({Key? key,required this.txt,this.icn, this.ctr,this.icnSuffix,this.onTab,
    required this.readOnly,required this.textInputType}) : super(key: key);

  final String txt;
  final IconData? icn;
  final IconData? icnSuffix;
  final TextEditingController? ctr;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.textFieldBgColor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          const SizedBox(width: 10,),
          Container(
              padding: const EdgeInsets.symmetric(vertical: 6,horizontal: 3),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text("+91",style: kTextStyle14)
          ),
          Expanded(
            child: TextFormField(
              enableInteractiveSelection : false,
              autovalidateMode: AutovalidateMode.always,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
              //style: kTextStyle12,
              controller: ctr,
              autofocus: false,
              readOnly: readOnly,
              maxLines: null,
              onTap: onTab,
              onChanged: (val){},
              keyboardType: textInputType,
              style: kTextStyle16.copyWith(color: AppColor.contentTextColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
                hintText: txt,
                counterText: '',
                hintStyle: kTextStyle14.copyWith(color: AppColor.labelTextColor),
              ),
            ),
          ),
          Icon(
            icnSuffix,
            color: Colors.black45,
          ),
          const SizedBox(width: 7,),
        ],
      ),
    );
  }
}
class CommonPasswordField extends StatelessWidget {
  CommonPasswordField({Key? key,required this.txt,this.icn, this.ctr,this.icnSuffix,this.onTab,
    required this.readOnly,required this.textInputType}) : super(key: key);

  final String txt;
  final IconData? icn;
  final IconData? icnSuffix;
  final TextEditingController? ctr;
  final TextInputType textInputType;
  final bool readOnly;
  final VoidCallback? onTab;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 54,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: AppColor.textFieldBgColor,
      ),
      alignment: Alignment.center,
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              enableInteractiveSelection : false,
              autovalidateMode: AutovalidateMode.always,
              inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
              //style: kTextStyle12,
              controller: ctr,
              autofocus: false,
              readOnly: readOnly,
              obscureText: true,
              maxLines: 1,
              onTap: onTab,
              onChanged: (val){},
              keyboardType: textInputType,
              style: kTextStyle16.copyWith(color: AppColor.contentTextColor),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 5),
                hintText: txt,
                counterText: '',
                hintStyle: kTextStyle14.copyWith(color: AppColor.labelTextColor),
              ),
            ),
          ),
          Icon(
            icnSuffix,
            size: 20,
            color: AppColor.primaryColor.withOpacity(0.6),
          ),
          const SizedBox(width: 10,),
        ],
      ),
    );
  }
}