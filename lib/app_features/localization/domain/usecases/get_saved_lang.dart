import 'package:dio/dio.dart';
import 'package:pharmacy/config/services/injection_container.dart';
import 'package:pharmacy/core/base_usecase/base_usecase.dart';
import 'package:pharmacy/core/error/failures.dart';
import 'package:dartz/dartz.dart';
import 'package:pharmacy/core/network/dio_factory.dart';
import '../repositories/lang_repository.dart';

class GetSavedLangUseCase implements BaseUseCase<String, NoParemeters> {
  final LangRepository langRepository;
  final DioFactory _diofactory = sl<DioFactory>();
  GetSavedLangUseCase({required this.langRepository});
  @override
  Future<Either<Failure, String>> call(NoParemeters params) async {
    return await langRepository.getSavedLang();
  }
}
