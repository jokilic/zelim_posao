import 'package:http/http.dart' as http;

// A helper Class to make it easier to fetch data from the Web
class Network {
  final String url;

  Network(this.url);

  Future getData() async {
    try {
      http.Response response = await http.get(Uri.parse(url));

      if (response.statusCode == 200)
        return response.body;
      else
        return 'Problems fetching jobs';
    } catch (e) {
      return 'Problems fetching jobs';
    }
  }
}
