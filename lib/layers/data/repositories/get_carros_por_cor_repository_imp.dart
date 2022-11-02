import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/dtos/carro_dto.dart';
import 'package:clean_arq/layers/domain/entities/carro_entity.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';

class GetCarrosPorCorRepositoryImp implements GetCarrosPorCorRepository {
  final GetCarrosPorCorDataSource _getCarrosPorCorDataSource;
  GetCarrosPorCorRepositoryImp(this._getCarrosPorCorDataSource);

  @override
  CarroEntity call(String cor) {
    return _getCarrosPorCorDataSource(cor);
  }
}
