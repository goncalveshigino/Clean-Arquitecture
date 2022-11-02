import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/dtos/carro_dto.dart';

class GetCarrosPorCorLocalDataSourceImp implements GetCarrosPorCorDataSource {

  var jsonVermelho = {
      'placa': 'ADE23',
      'quantidadeDePortas': 4,
      'valorFinal': 5000.00,
    };

  var jsonAny = {
    'placa': 'QWE',
    'quantidadeDePortas': 2,
    'valorFinal': 2000.00,
  };

  @override
  CarroDto call(String cor) {
    if(cor.contains('Vermelho')){
      return CarroDto.fromJson(jsonVermelho);
    }
    return CarroDto.fromJson(jsonAny);
  }

}