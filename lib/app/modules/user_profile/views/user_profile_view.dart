import 'package:exam_controller/app/modules/user_profile/views/widget/change_password_dialog.dart';
import 'package:exam_controller/app/modules/user_profile/views/widget/edit_profile_dialog_box.dart';
import 'package:exam_controller/app/modules/utils/common/input_text_field.dart';
import 'package:exam_controller/app/modules/utils/common/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../controllers/user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //__________________ app bar _________________________
      appBar: profileAppBar(),

      body: SafeArea(
        top: true,
        bottom: true,
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //____________________ title _____________________________
              Text(
                'Admin Profile',
                style: TextStyle(fontSize: 12.h, fontWeight: FontWeight.w600),
              ),
              SizedBox(height: 15.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  // ____________________ profile picture ____________________________
                  Image.asset(
                    'assets/images/female.png',
                    height: 50.h,
                    width: 50.w,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(width: 10.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //________________ admin name and email ___________________________
                      Text(
                        'Jakob',
                        style: TextStyle(fontWeight: FontWeight.w600),
                      ),
                      Text('jakob@gmail.com'),
                    ],
                  ),
                  Spacer(),

                  // ____________________ edit profile button and dialog box _______________________
                  CustomElevatedButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (context) {
                          return EdiProfileDialogBox();
                        },
                      );
                    },
                    text: 'Edit Profile',
                  ),
                ],
              ),

              SizedBox(height: 30.h),

              // _________________ input fields ______________________
              InputField(labelText: 'Admin Name', hintText: 'Jakob Bergson'),

              SizedBox(height: 20.h),

              InputField(labelText: 'Email', hintText: 'admin@email.com'),

              SizedBox(height: 20.h),

              InputField(
                keyboardType: TextInputType.number,
                labelText: 'Contact',
                hintText: '01600237552',
              ),

              SizedBox(height: 20.h),

              //___________________ password change button and dialog box ______________________
              InputField(
                suffixIcon: GestureDetector(
                  onTap: () {},
                  child: Icon(Icons.visibility_off),
                ),
                labelText: 'Password',
                hintText: '******',
              ),
              SizedBox(height: 20.h),

              ChangePassowrdDialog(),
            ],
          ),
        ),
      ),
    );
  }

  AppBar profileAppBar() {
    return AppBar(
      title: Text(
        'Exam Management System',
        style: TextStyle(fontSize: 15.sp, fontWeight: FontWeight.w600),
      ),
      actions: [
        Row(
          children: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.notifications_outlined),
            ),
            Column(
              children: [
                CircleAvatar(
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/admin.png',
                  ),
                ),
                Text('Admin', style: TextStyle(fontSize: 10.sp)),
              ],
            ),
            SizedBox(width: 10.h),
          ],
        ),
      ],
    );
  }
}
