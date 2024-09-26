
import 'package:http/http.dart' as http;




import 'package:api_practice/pages/model/get_model.dart';

class GetApiServices{
  Future<List<CommandsModel>?> getCommentsModel()async {
    var data = http.Client();
    var uri = Uri.parse("https://jsonplaceholder.typicode.com/comments");
    var response = await data.get(uri);
    if(response.statusCode == 200){
      var json = response.body;

      return commandsModelFromJson(json);
    } 
    return null;
  }
}