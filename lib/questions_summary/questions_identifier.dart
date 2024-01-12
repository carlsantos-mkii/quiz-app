import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuestionIdentifier extends StatelessWidget {
	const QuestionIdentifier({
		super.key,
		required this.isCorrectAnswer,
		required this.questionIndex,
	});

	final int questionIndex;
	final bool isCorrectAnswer;

	@override
	Widget build(context) {
		final questionNumber = questionIndex + 1;

		return Container(
			width: 30,
			height: 30,
			alignment: Alignment.center,
			decoration: BoxDecoration(
				color: isCorrectAnswer
					? const Color.fromARGB(255, 95, 196, 82)
					: const Color.fromARGB(255, 163, 76, 76),
				borderRadius: BorderRadius.circular(100),
			),
			child: Text(
				questionNumber.toString(),
				style: GoogleFonts.lato(
					fontWeight: FontWeight.w700,
					color: const Color.fromARGB(255, 255, 255, 255)
				),
			),
		);
	}
}