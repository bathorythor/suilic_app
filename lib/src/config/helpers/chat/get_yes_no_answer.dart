import 'package:dio/dio.dart';
import 'package:suilic_app/src/domain/entities/chat/message.dart';
import 'package:suilic_app/src/infrastructure/models/chat/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  Future<Message> getAnswer() async {
    final response = await _dio.get('https://yesno.wtf/api');

    final yesNoModel = YesNoModel.fromJsonMap(response.data);

    return yesNoModel.toMessageEntity();
  }
}
