import 'dart:convert';

/**
 * Descricao:> Trata resposta JSON
 * Autor:> @salomaotech
 */

class RespostaJsonGet {
  String nome;
  String telefone;
  String endereco;
  String foto;

  /* construtor */
  RespostaJsonGet({
    required this.nome,
    required this.telefone,
    required this.endereco,
    required this.foto,
  });

  /* factory de resposta json */
  factory RespostaJsonGet.fromJson(String str) =>
      RespostaJsonGet.fromMap(json.decode(str));

  /* codifica a resposta json para string */
  String toJson() => json.encode(toMap());

  /* converte para map (chave: valor) */
  factory RespostaJsonGet.fromMap(Map<String, dynamic> json) => RespostaJsonGet(
        nome: json["nome"],
        telefone: json["telefone"],
        endereco: json["endereco"],
        foto: json["foto"],
      );

  /* retorna */
  Map<String, dynamic> toMap() => {
        "nome": nome,
        "telefone": telefone,
        "endereco": endereco,
        "foto": foto,
      };
}
