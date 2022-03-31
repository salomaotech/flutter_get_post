import 'package:http/http.dart' as http;

import 'RespostaJsonPost.dart';

/**
 * Descricao:> Envia dados dos via post
 * Autor:> @salomaotech
 */

class EnviaDadosPost {
  static Future<RespostaJsonPost> fetchDados({required String url}) async {
    /* resposta do HTTP */
    final respostaHttp = await http.post(Uri.parse(url));

    /* valida código de status HTTP */
    if (respostaHttp.statusCode == 200) {
      /* ok */
      return RespostaJsonPost.fromJson(respostaHttp.body);
    } else {
      /* falha */
      throw Exception("Falha!");
    }
  }
}
