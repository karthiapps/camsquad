import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../theme/app_color.dart';
import '../../../theme/app_theme.dart';


class SearchBox extends StatelessWidget {
  SearchBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Colors.transparent,
          border: Border.all(color: AppColor.borderColor)
      ),
      alignment: Alignment.center,
      child: TextFormField(
        enableInteractiveSelection : false,
        autovalidateMode: AutovalidateMode.always,
        inputFormatters: <TextInputFormatter>[FilteringTextInputFormatter.allow(RegExp("[0-9a-zA-Z ]")),],
        //style: kTextStyle12,
        controller: null,
        autofocus: false,
        readOnly: false,
        maxLines: null,
        onTap: (){},
        onChanged: (value){},
        onEditingComplete: (){},
        keyboardType: TextInputType.text,
        style: kTextStyle16.copyWith(color: Colors.white),
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(vertical: 15),
          hintText: 'Search',
          hintStyle: kTextStyle16.copyWith(color: AppColor.t3Color),
          prefixIcon: const Icon(Icons.search,color:AppColor.t3Color,size: 25,)
        ),
      ),
    );
  }
}