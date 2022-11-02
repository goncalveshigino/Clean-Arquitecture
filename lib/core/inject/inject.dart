import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/datasources/local/get_carros_por_cor_local_datasource.dart';
import 'package:clean_arq/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_arq/layers/data/repositories/salvar_carro_favorito_repository_imp.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arq/layers/domain/repositories/salvar_carro_favorito_repository.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carro_por_cor_usecase_imp.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';
import 'package:clean_arq/layers/domain/usecases/salvae_carrro_favorito/salvar_carro_favorito_usecase.dart';
import 'package:clean_arq/layers/domain/usecases/salvae_carrro_favorito/salvar_carro_favorito_usecase_imp.dart';
import 'package:clean_arq/layers/presentation/controller/carro_controller.dart';
import 'package:get_it/get_it.dart';

class Inject {
  static void init() {
    GetIt getIt = GetIt.instance;

    //datasource
    getIt.registerLazySingleton<GetCarrosPorCorDataSource>(
      () => GetCarrosPorCorLocalDataSourceImp(),
    );
    //repository
    getIt.registerLazySingleton<GetCarrosPorCorRepository>(
      () => GetCarrosPorCorRepositoryImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoRepository>(
      () => SalvarCarroFavoritoRepositoryImp(),
    );
    //usecase
    getIt.registerLazySingleton<GetCarrosPorCorUseCase>(
      () => GetCarrosPorCorUseCaseImp(getIt()),
    );
    getIt.registerLazySingleton<SalvarCarroFavoritoUseCase>(
      () => SalvarCarroFavoritoUseCaseImp(getIt()),
    );
    //controller
    getIt.registerFactory<CarroController>(
      () => CarroController(getIt(), getIt()),
    );
  }
}
