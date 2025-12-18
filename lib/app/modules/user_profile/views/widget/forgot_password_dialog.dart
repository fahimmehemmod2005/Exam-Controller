import 'package:exam_controller/app/modules/user_profile/views/widget/set_new_password.dart';
import 'package:exam_controller/app/modules/utils/common/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPasswordDialog extends StatelessWidget {
  const ForgotPasswordDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
       Get.offAllNamed( await showDialog(
         context: context,
         builder: (context) {
           return AlertDialog(
             title: const Text('Forgot Passowrd'),
             content: SingleChildScrollView(
               child: Column(
                 mainAxisSize: MainAxisSize.min,
                 crossAxisAlignment: CrossAxisAlignment.center,
                 children: [
                   InputField(
                     labelText: 'Enter E-Mail',
                     hintText: 'Enter email',
                   ),
                   SizedBox(height: 20.h),

                   InputField(labelText: 'Enter OTP', hintText: '1234'),
                   SizedBox(height: 20.h),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceAround,
                     children: [
                       OutlinedButton(
                         style: OutlinedButton.styleFrom(
                           shape: RoundedRectangleBorder(
                             borderRadius: BorderRadius.zero,
                           ),
                         ),
                         onPressed: () {
                           Get.back(canPop: true, closeOverlays: true);
                         },
                         child: Text(
                           'Cancel',
                           style: TextStyle(color: Colors.red),
                         ),
                       ),
                       SetNewPasswrodDialog(),
                     ],
                   ),
                 ],
               ),
             ),
           );
         },
       ));
      },
      child: Text(
        'Forgot your password?',
        style: TextStyle(
          color: Colors.black,
          decoration: TextDecoration.underline,
        ),
      ),
    );
  }
}


