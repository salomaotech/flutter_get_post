import 'package:http/http.dart' as http;

import 'RespostaJsonGet.dart';
import 'RespostaJsonPost.dart';

/**
 * Descricao:> Recebe dados dos via get
 * Autor:> @salomaotech
 */

class RecebeDadosGet {
  static Future<RespostaJsonGet> fetchDados({required String url}) async {
    /* resposta do HTTP */
    final respostaHttp = await http.get(Uri.parse(url));

    /* valida código de status HTTP */
    if (respostaHttp.statusCode == 200) {
      /* ok */
      return RespostaJsonGet.fromJson(respostaHttp.body);
    } else {
      /* falha */
      throw Exception("Falha!");
    }
  }
}
