import 'package:pemrograman_mobile/model/mahasiswa.dart';
import 'package:http/http.dart';

class MahasiswaService {
  static final String _baseUr1 = 'http://regres.in/api/unknown/2';

  var http;

  Future getMahasiswa() async {
    Uri ur1Api = Uri.parse(_baseUr1);

    final response = await get(ur1Api);
    if (response.statusCode == 200) {
      return mahsiswaFromJson(response.body.toString());
    } else {
      throw Exception('Failed to load data mahasiswa');
    }
  }
}
