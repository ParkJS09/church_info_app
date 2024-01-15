import 'package:church_info_app/share/service/theme_service.dart';
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
          color: context.theme.color.primary,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 7,
              ),
              const FlutterLogo(
                size: 200,
              ),
              const SizedBox(
                height: 28.0,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  focusColor: context.theme.color.secondary,
                  border: const OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide:
                        BorderSide(color: context.theme.color.onPrimary),
                  ),
                ),
              ),
              const SizedBox(
                height: 14.0,
              ),
              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: context.theme.color.onPrimary,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 24.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('SignIn'),
                    ),
                  ),
                  const SizedBox(width: 14.0),
                  Expanded(
                    child: OutlinedButton(
                      onPressed: () {},
                      child: const Text('SignUp'),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
