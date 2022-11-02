import 'package:clean_arq/layers/domain/entities/carro_entity.dart';

class CarroDto extends CarroEntity {
  
  String placa;
  int quantidadeDePortas;
  double valorFinal;

  CarroDto({
    required this.placa,
    required this.quantidadeDePortas,
    required this.valorFinal,
  }) : super(
          placa: placa,
          qtdPortas: quantidadeDePortas,
          valor: valorFinal,
        );

  Map toMap() {
    return {
      'placa'             : this.placa,
      'quantidadeDePortas': this.quantidadeDePortas,
      'valorFinal'        : this.valorFinal,
    };
  }

 static CarroDto fromJson(Map map) {
    return CarroDto(
      placa: map['placa'],
      quantidadeDePortas: map['quantidadeDePortas'],
      valorFinal: map['valorFinal'],
    );
  }
}
