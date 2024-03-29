import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:quiz_app/questions_summary/questions_identifier.dart';

class SummaryItem extends StatelessWidget {
	SummaryItem(this.itemData, {super.key});

	final Map<String, Object> itemData;

	@override
	Widget build(context) {
		final isCorrectAnswer = itemData['user_answer'] == itemData['correct_answer'];

		return Row(
			crossAxisAlignment: CrossAxisAlignment.start,
			children: [
				QuestionIdentifier(
					isCorrectAnswer: isCorrectAnswer,
					questionIndex: itemData['question_index'] as int,
				),
				const SizedBox(width: 20),
				Expanded(
					child: Column(
						crossAxisAlignment: CrossAxisAlignment.start,
						children: [
							Text(
								itemData['question'] as String,
								style: GoogleFonts.lato(
									color: Colors.white,
									fontSize: 16,
									fontWeight: FontWeight.bold,
								),
							),
							const SizedBox(height: 5),
							Text(
								itemData['user_answer'] as String,
								style: const TextStyle(
									color: Color.fromARGB(255, 80, 135, 230)
								),
							),
							Text(
								itemData['correct_answer'] as String,
								style: const TextStyle(
									color: Color.fromARGB(255, 95, 196, 82)
								),
							)
						],
					)
				)
			],
		);
	}
}