import 'package:exam_controller/app/modules/utils/common/input.dart';
import 'package:exam_controller/app/modules/utils/elevated.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';

class EdiProfileDialogBox extends StatelessWidget {
  const EdiProfileDialogBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Edit Student Info'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize:
              MainAxisSize.min, // ⭐ very important
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InputField(
              labelText: 'Name',
              hintText: 'Atikur Rahman',
            ),
            SizedBox(height: 20.h),
    
            InputField(
              labelText: 'Email',
              hintText: 'CST',
            ),
            SizedBox(height: 20.h),
    
            InputField(
              labelText: 'Contact Number',
              hintText: "8th",
            ),
            SizedBox(height: 20.h),
    
            Container(
              height: 130.h,
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black45),
                borderRadius: BorderRadius.circular(5.r),
              ),
              child: Column(
                mainAxisAlignment:
                    MainAxisAlignment.center,
                children: [
                  Image.asset('assets/icons/upload.png'),
                  SizedBox(height: 5.h),
                  const Text('Drop file or browse'),
                  SizedBox(height: 5.h),
                  Text(
                    'Format: .jpeg, .png & Max file size: 25 MB',
                    style: TextStyle(
                      fontSize: 10.sp,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 8.h),
                  ElevatedButtonWidget(
                    text: 'Browse Files',
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h),
    
            Stack(
              children: [
                Image.asset(
                  'assets/images/blank.png',
                  fit: BoxFit.cover,
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/icons/cross.png',
                      height: 15,
                      width: 15,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10.h),
    
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.zero,
                    ),
                  ),
                  onPressed: () {
                    Get.back(
                      canPop: true,
                      closeOverlays: true,
                    );
                  },
                  child: Text(
                    'Cancel',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
                ElevatedButtonWidget(
                  text: 'Update',
                  onPressed: () {
                    Get.back(
                      canPop: true,
                      closeOverlays: true,
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
