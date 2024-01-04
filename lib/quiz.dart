import 'package:flutter/material.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/start_screen.dart';

class Quiz extends StatefulWidget {
	const Quiz({super.key});

	@override
	State<Quiz> createState() {
		return _QuizState();
	}
}

class _QuizState extends State<Quiz> {
	// Widget? activeScreen;

	// Alternative for initState()
	var activeScreen = 'start-screen';

	// @override
	// void initState() {
	// 	activeScreen = StartScreen(switchScreen);
	// 	super.initState();
	// }

	void switchScreen() {
		setState(() {
			activeScreen = 'questions-screen';
		});
	}

	@override
	Widget build(context) {
		return MaterialApp(
			home: Scaffold(
				body: Container(
					decoration: const BoxDecoration(
						gradient: LinearGradient(
							colors: [
								Color.fromARGB(255, 71, 71, 71),
								Color.fromARGB(255, 24, 24, 24)
							],
							begin: Alignment.topCenter,
							end: Alignment.bottomCenter,
						)
					),
					child: activeScreen == 'start-screen' ? StartScreen(switchScreen) : const QuestionsScreen(),
				),
			)
		);
	}
}