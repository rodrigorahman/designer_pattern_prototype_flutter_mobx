import 'dart:convert';

class Cliente {
  
  String nome;
  String telefone;
  int idade;

  Cliente({
    this.nome,
    this.telefone,
    this.idade,
  });
  
  Cliente copyWith({
    String nome,
    String telefone,
    int idade,
  }) {
    return Cliente(
      nome: nome ?? this.nome,
      telefone: telefone ?? this.telefone,
      idade: idade ?? this.idade,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'telefone': telefone,
      'idade': idade,
    };
  }

  static Cliente fromMap(Map<String, dynamic> map) {
    if (map == null) return null;
  
    return Cliente(
      nome: map['nome'],
      telefone: map['telefone'],
      idade: map['idade'],
    );
  }

  String toJson() => json.encode(toMap());

  static Cliente fromJson(String source) => fromMap(json.decode(source));

  @override
  String toString() => 'Cliente(nome: $nome, telefone: $telefone, idade: $idade)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
  
    return o is Cliente &&
      o.nome == nome &&
      o.telefone == telefone &&
      o.idade == idade;
  }

  @override
  int get hashCode => nome.hashCode ^ telefone.hashCode ^ idade.hashCode;
}
