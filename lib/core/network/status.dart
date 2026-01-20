import 'package:equatable/equatable.dart';

class StatusModel extends Equatable {
  final String message;
  final Map<String, List<String>>? errors;

  const StatusModel({
    required this.message,
    this.errors,
  });

  factory StatusModel.fromJson(Map<String, dynamic> json) {
    return StatusModel(
      message: json['message'] ?? 'empty',
      errors: json['errors'] != null
          ? Map<String, List<String>>.from(json['phone'].map(
              (key, value) => MapEntry(key, List<String>.from(value as List))))
          : null,
    );
  }

  @override
  List<Object?> get props => [message, errors];
}
