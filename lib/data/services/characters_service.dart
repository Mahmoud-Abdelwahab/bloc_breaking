
class CharactersService {

  late Dio dio;

  CharactersService() {
    BaseOptions baseOptions = BaseOptions(
      baseUrl: BASE_URL
    );
    dio = Dio(baseOptions)
  }

  Future<List<dynamic>> getCharacters() async {
    try {
      Response response = await dio.get('characters');
      print(response.data.toString());
      return response.data
    } catch(error) {
      print(error)
          return []
    }
  }
}