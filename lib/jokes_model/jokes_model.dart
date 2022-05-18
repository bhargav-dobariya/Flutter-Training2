import 'package:collection/collection.dart';

import 'joke.dart';

class JokesModel {
	bool? error;
	int? amount;
	List<Joke>? jokes;

	JokesModel({this.error, this.amount, this.jokes});

	@override
	String toString() {
		return 'JokesModel(error: $error, amount: $amount, jokes: $jokes)';
	}

	factory JokesModel.fromJson(Map<String, dynamic> json) => JokesModel(
				error: json['error'] as bool?,
				amount: json['amount'] as int?,
				jokes: (json['jokes'] as List<dynamic>?)
						?.map((e) => Joke.fromJson(e as Map<String, dynamic>))
						.toList(),
			);

	Map<String, dynamic> toJson() => {
				'error': error,
				'amount': amount,
				'jokes': jokes?.map((e) => e.toJson()).toList(),
			};

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! JokesModel) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode => error.hashCode ^ amount.hashCode ^ jokes.hashCode;
}
