import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:clean_arq/layers/domain/usecases/get_carros_por_cor/get_carros_por_cor.dart';

class GetCarrosPorCorUseCaseImp implements GetCarrosPorCorUseCase {
  
  final GetCarrosPorCorRepository _carrosPorCorRepository;
  GetCarrosPorCorUseCaseImp(this._carrosPorCorRepository);

  @override
  CarroEntity call(String cor) {
    return _carrosPorCorRepository(cor);
  }
}
