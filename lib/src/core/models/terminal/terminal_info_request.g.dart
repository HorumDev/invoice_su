// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'terminal_info_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TerminalInfoRequest _$TerminalInfoRequestFromJson(Map<String, dynamic> json) =>
    TerminalInfoRequest(
      id: json['id'] as String?,
      alias: json['alias'] as String?,
      signToken: json['Token'] as String?,
    );

Map<String, dynamic> _$TerminalInfoRequestToJson(TerminalInfoRequest instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('Token', instance.signToken);
  writeNotNull('id', instance.id);
  writeNotNull('alias', instance.alias);
  return val;
}
