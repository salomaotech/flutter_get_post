import 'dart:convert';

/**
 * Descricao:> Trata resposta JSON
 * Autor:> @salomaotech
 */

class RespostaJsonPost {
  String resposta;

  /* construtor */
  RespostaJsonPost({
    required this.resposta,
  });

  /* factory de resposta json */
  factory RespostaJsonPost.fromJson(String str) =>
      RespostaJsonPost.fromMap(json.decode(str));

  /* codifica a resposta json para string */
  String toJson() => json.encode(toMap());

  /* converte para map (chave: valor) */
  factory RespostaJsonPost.fromMap(Map<String, dynamic> json) => RespostaJsonPost(
        resposta: json["resposta"],
      );

  /* retorna */
  Map<String, dynamic> toMap() => {
        "resposta": resposta,
      };
}
