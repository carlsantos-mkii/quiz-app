import 'package:flutter/material.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/questions_summary.dart';

class ResultsScreen extends StatelessWidget {
	const ResultsScreen(this.chosenAnswers, {super.key});
	
	final List<String> chosenAnswers;

	List<Map<String, Object>> getSummaryData() {
		List<Map<String, Object>> summary = [];

		for (var i = 0; i < chosenAnswers.length; i++) {
			summary.add({
				'question_index': i,
				'question': questions[i].text,
				'question_answer': questions[i].answers[0],
				'user_answer': chosenAnswers[i]
			});
		}

		return summary;
	}

	@override
	Widget build(context) {
		return SizedBox(
			width: double.infinity,
			child: Container(
				padding: const EdgeInsets.all(40),
				child: Column(
					mainAxisAlignment: MainAxisAlignment.center,
					children: [
						const Text('You answered X out of Y questions correctly!'),
						const SizedBox(height: 30),
						QuestionsSummary(getSummaryData()),
						TextButton(
							onPressed: () {},
							child: const Text('Restart Quiz'),
						)
				],),
			),
		);
	}
}