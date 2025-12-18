import 'package:exam_controller/app/modules/user_profile/views/widget/forgot_password_dialog.dart';
import 'package:exam_controller/app/modules/utils/common/input.dart';
import 'package:exam_controller/app/modules/utils/elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePassowrdDialog extends StatelessWidget {
  const ChangePassowrdDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButtonWidget(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text('Change Password'),
              content: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    InputField(
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.visibility_off),
                      ),

                      labelText: 'Old Password',
                      hintText: '******',
                    ),
                    SizedBox(height: 20.h),

                    InputField(
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.visibility_off),
                      ),

                      labelText: 'New Password',
                      hintText: '******',
                    ),
                    SizedBox(height: 20.h),

                    InputField(
                      suffixIcon: GestureDetector(
                        onTap: () {},
                        child: Icon(Icons.visibility_off),
                      ),

                      labelText: 'Confirm Password',
                      hintText: "******",
                    ),
                    SizedBox(height: 20.h),

                    ForgotPasswordDialog(),

                    SizedBox(height: 10.h),

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
                        ElevatedButtonWidget(
                          text: 'Update',
                          onPressed: () {
                            Get.back(canPop: true, closeOverlays: true);
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
      width: double.infinity,
      text: 'Change',
    );
  }
}
