import 'package:church_info_app/share/service/theme_service.dart';
import 'package:church_info_app/src/screen/sign_screen/component/sign_button.dart';
import 'package:church_info_app/src/screen/sign_screen/component/sign_text_field.dart';
import 'package:flutter/material.dart';

class SignScreen extends StatelessWidget {
  const SignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        padding: const EdgeInsets.all(28.0),
        decoration: BoxDecoration(
          color: context.theme.color.background,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 9,
              ),
              const FlutterLogo(
                size: 200,
              ),
              const SizedBox(
                height: 28.0,
              ),
              const SignTextField(
                isOobscureText: false,
                label: '이메일',
                hintMsg: '이메일 주소를 입력해주세요',
                leadingIcon: Icons.mail,
              ),
              const SizedBox(
                height: 14.0,
              ),
              const SignTextField(
                isOobscureText: true,
                label: '비밀번호',
                hintMsg: '비밀번호를 입력해주세요',
                leadingIcon: Icons.lock,
              ),
              const SizedBox(
                height: 24.0,
              ),
              SignButton(text: '로그인', onPressed: () {}),
              const SizedBox(height: 14.0),
              SignButton(text: '가입', onPressed: () {}),
            ],
          ),
        ),
      ),
    );
  }
}
