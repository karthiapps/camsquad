import 'package:camsquad/theme/app_theme.dart';
import 'package:flutter/material.dart';

import '../../widgets/common_button.dart';
import '../../widgets/common_textfield.dart';

class EditProfileScreen extends StatelessWidget {
  const EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit Profile",style: kTextStyle18,),
        centerTitle: true,
        leading:  Container(
          padding: const EdgeInsets.only(right: 10.0),
          child: const BackIconButtonBlack(),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30,),
              CommonTextLabelField(
                readOnly: false,
                title: "User Name",
                textInputType: TextInputType.text,
                txt: "Ranjith Kumar",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "Mobile Number",
                textInputType: TextInputType.text,
                txt: "+91 8344884448",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "You are Expert in ?",
                textInputType: TextInputType.text,
                txt: "Add the categories which you are expert in",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "How many Years Experience ?",
                textInputType: TextInputType.text,
                txt: "Type your experience  in years",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "Available Work Locations?  ",
                textInputType: TextInputType.text,
                txt: "You can choose many locations",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "Equipments ?",
                textInputType: TextInputType.text,
                txt: "Your camera , lenses and equipment details ",
                onTab: (){},
              ),
              const SizedBox(height: 20,),
              CommonTextLabelField(
                readOnly: false,
                title: "Share your Social media link",
                textInputType: TextInputType.text,
                txt: "Facebook Link",
                onTab: (){},
              ),
              const SizedBox(height: 10,),
              CommonTextField(
                readOnly: false,
                textInputType: TextInputType.text,
                txt: "Instagram Link",
                onTab: (){},
              ),
              const SizedBox(height: 10,),
              CommonTextField(
                readOnly: false,
                textInputType: TextInputType.text,
                txt: "PickPicz Link",
                onTab: (){},
              ),
              const SizedBox(height: 30,),
              PrimaryButton(
                  txt: "OK",
                  onTab: (){}
              ),
              const SizedBox(height: 30,),
            ],
          ),
        ),
      ),
    );
  }
}
