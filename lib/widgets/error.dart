import 'package:flutter/material.dart';

class Error extends StatelessWidget {
  const Error({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      alignment: Alignment.center,
      child: const Text('🤦🏻‍♀️🤦🏻‍♀️there is an error ,try again'),
    );
  }
}
