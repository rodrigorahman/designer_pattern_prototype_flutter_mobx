import 'package:designer_pattern_prototype_flutter_mobx/cliente.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStoreBase with _$HomeStore;

abstract class _HomeStoreBase with Store {
  
  @observable
  Cliente cliente;

  @action
  void loadCliente() {
    cliente = Cliente(
      nome: 'Rodrigo',
      telefone: '123123213',
      idade: 36,
    );
  }

  @action
  void fazerAniversario(){
    cliente = cliente.copyWith(idade: cliente.idade + 1); 
    // cliente.idade += 1;
    // cliente = Cliente(
    //   nome: cliente.nome,
    //   telefone: cliente.telefone,
    //   idade: cliente.idade + 1,
    // );
  }
}
