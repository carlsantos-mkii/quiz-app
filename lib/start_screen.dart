import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
	const StartScreen(this.startQuiz, {super.key});

	final void Function() startQuiz;

	@override
	Widget build(context) {
		return Center(
			child: Column(
				mainAxisSize: MainAxisSize.min,
				children: [
					Image.asset(
						'assets/images/quiz-logo.png',
						width: 300,
						color: const Color.fromARGB(160, 255, 255, 255)
					),
					const SizedBox(height: 40),
					const Text(
						'Learn Flutter the fun way!',
						style: TextStyle(
							fontSize: 24,
							color: Color.fromARGB(255, 184, 184, 184)
						)
					),
					const SizedBox(height: 40),
					OutlinedButton.icon(
						onPressed: startQuiz,
						style: OutlinedButton.styleFrom(
							foregroundColor: Colors.white
						),
						label: const Text('Start Quiz'),
						icon: const Icon(Icons.arrow_circle_right_outlined),
					),
				],
			)
		);
	}
}