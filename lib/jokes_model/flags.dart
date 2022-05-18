import 'package:collection/collection.dart';

class Flags {
	bool? nsfw;
	bool? religious;
	bool? political;
	bool? racist;
	bool? sexist;
	bool? explicit;

	Flags({
		this.nsfw, 
		this.religious, 
		this.political, 
		this.racist, 
		this.sexist, 
		this.explicit, 
	});

	@override
	String toString() {
		return 'Flags(nsfw: $nsfw, religious: $religious, political: $political, racist: $racist, sexist: $sexist, explicit: $explicit)';
	}

	factory Flags.fromJson(Map<String, dynamic> json) => Flags(
				nsfw: json['nsfw'] as bool?,
				religious: json['religious'] as bool?,
				political: json['political'] as bool?,
				racist: json['racist'] as bool?,
				sexist: json['sexist'] as bool?,
				explicit: json['explicit'] as bool?,
			);

	Map<String, dynamic> toJson() => {
				'nsfw': nsfw,
				'religious': religious,
				'political': political,
				'racist': racist,
				'sexist': sexist,
				'explicit': explicit,
			};

	@override
	bool operator ==(Object other) {
		if (identical(other, this)) return true;
		if (other is! Flags) return false;
		final mapEquals = const DeepCollectionEquality().equals;
		return mapEquals(other.toJson(), toJson());
	}

	@override
	int get hashCode =>
			nsfw.hashCode ^
			religious.hashCode ^
			political.hashCode ^
			racist.hashCode ^
			sexist.hashCode ^
			explicit.hashCode;
}
