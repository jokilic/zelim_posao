import 'package:http/http.dart' as http;

class Network {
  final String url;

  Network(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200)
      return response.body;
    else
      throw Exception('Network Error - ${response.statusCode}');
  }
}
