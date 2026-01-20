import 'package:dartz/dartz.dart';
import 'package:pharmacy/app_features/localization/domain/repositories/lang_repository.dart';
import 'package:pharmacy/core/base_usecase/base_usecase.dart';
import 'package:pharmacy/core/error/failures.dart';

class ChangeLangUseCase implements BaseUseCase<bool, String> {
  final LangRepository langRepository;

  ChangeLangUseCase({required this.langRepository});

  @override
  Future<Either<Failure, bool>> call(String langCode) async =>
      await langRepository.changeLang(langCode: langCode);
}
