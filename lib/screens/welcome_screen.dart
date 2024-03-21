import 'package:flutter/material.dart';
import 'package:task_manager/theme/theme.dart';
import 'package:task_manager/widgets/custom_bg.dart';
import 'package:task_manager/widgets/welcome_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBG(
        child: Column(
      children: [
        Flexible(
            flex: 8,
            child: Container(
              padding:
                  const EdgeInsets.symmetric(vertical: 0, horizontal: 40.0),
              child: Center(
                child: RichText(
                    textAlign: TextAlign.center,
                    text: const TextSpan(children: [
                      TextSpan(
                          text: "Welcome!\n",
                          style: TextStyle(
                            fontSize: 45.0,
                            fontWeight: FontWeight.w600,
                          )),
                      TextSpan(
                          text:
                              '\nManage your daily task plan & events as ease as possible.',
                          style: TextStyle(
                            fontSize: 20,
                          ))
                    ])),
              ),
            )),
        Flexible(
            flex: 1,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Row(
                children: [
                  const Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign in',
                    onTapRoute: '/signin',
                    btnColor: Colors.transparent,
                    txtColor: Colors.white,
                  )),
                  Expanded(
                      child: WelcomeButton(
                    buttonText: 'Sign up',
                    onTapRoute: '/signup',
                    btnColor: Colors.white,
                    txtColor: lightColorScheme.primary,
                  )),
                ],
              ),
            ))
      ],
    ));
  }
}
