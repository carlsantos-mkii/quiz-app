import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
	const AnswerButton(this.answerText, this.onTap, {super.key});

	final String answerText;
	final void Function() onTap;

	@override
	Widget build(context) {
		return ElevatedButton(
			onPressed: onTap,
			style: ElevatedButton.styleFrom(
				padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 30),
				backgroundColor: const Color.fromARGB(255, 255, 255, 255),
				foregroundColor: const Color.fromARGB(255, 24, 24, 24),
				shape: RoundedRectangleBorder(
					borderRadius: BorderRadius.circular(50)
				)
			),
			child: Text(
        answerText,
        textAlign: TextAlign.center,)
		);
  }
}