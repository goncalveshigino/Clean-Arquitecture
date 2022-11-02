
import 'package:clean_arq/layers/data/datasources/get_carros_por_cor_datasource.dart';
import 'package:clean_arq/layers/data/datasources/local/get_carros_por_cor_local_datasource.dart';
import 'package:clean_arq/layers/data/repositories/get_carros_por_cor_repository_imp.dart';
import 'package:clean_arq/layers/domain/repositories/get_carros_por_cor_repository.dart';
import 'package:flutter_test/flutter_test.dart';


main() {
  GetCarrosPorCorDataSource dataSource = GetCarrosPorCorLocalDataSourceImp();
  GetCarrosPorCorRepository repository = GetCarrosPorCorRepositoryImp(dataSource);

  test('Devolva um carro independemente da cor', () {
    var result = repository('qualquer');

    expect(result, isNotNull);
  });
}
