import 'package:http/http.dart' as http;

// A helper Class to make it easier to fetch data from the Web
class Network {
  final String url;

  Network(this.url);

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));

    if (response.statusCode == 200)
      return response.body;
    else
      throw Exception('Network Error - ${response.statusCode}');
  }
}
