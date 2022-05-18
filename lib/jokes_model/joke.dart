import 'package:collection/collection.dart';

import 'flags.dart';

class Joke {
	String? category;
	String? type;
	String? joke;
	Flags? flags;
	int? id;
	bool? safe;
	String? lang;

	Joke({
		this.category, 
		this.type, 
		this.joke, 
		this.flags, 
		this.id, 
		this.safe, 
		this.lang, 
	});

	@override
	String toString() {
		return 'Joke(category: $category, type: $type, joke: $joke, flags: $flags, id: $id, safe: $safe, lang: $lang)';
	}

	factory Joke.fromJson(Map<String, dynamic> json) => Joke(
				category: json['category'] as String?,
				type: json['type'] as String?,
				joke: json['joke'] as String?,
				flags: json['flags'] == null
						? null
						: Flags.fromJson(json['flags'] as Map<String, dynamic>),
				id: json['id'] as int?,
				safe: json['safe'] as bool?,
				lang: json['lang'] as String?,
			);

	Map<String, dynamic> toJson() => {
				'category': category,
				'type': type,
				'joke': joke,
				'flags': flags?.toJson(),
				'id': id,
				'safe': safe,
				'lang': lang,
			};

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Joke) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode =>
			category.hashCode ^
			type.hashCode ^
			joke.hashCode ^
			flags.hashCode ^
			id.hashCode ^
			safe.hashCode ^
			lang.hashCode;
}
