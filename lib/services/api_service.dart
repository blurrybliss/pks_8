import 'package:dio/dio.dart';
import 'package:practice_4/model/flowers.dart';

class ApiService {
  final Dio _dio = Dio();
  final String baseurl = "http://10.192.213.60:8080";

  Future<List<Flowers>> getFlowers() async {
    try {
      final response = await _dio.get('${baseurl}/flowers');
      if (response.statusCode == 200) {
        List<Flowers> flowers =
            (response.data as List).map((flower) => Flowers.fromJson(flower)).toList();
        return flowers;
      } else {
        throw Exception('Failed to load flowers');
          }
        }
      }
    } catch (e) {
      throw Exception('Error fetching flowers: $e');
    }