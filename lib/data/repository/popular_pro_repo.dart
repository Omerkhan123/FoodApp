import 'package:food_delivery/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProRepo extends GetxService{
  final ApiClient apiClient;
  PopularProRepo({required this.apiClient});
  Future<Response> getPopularProList() async {
  return await apiClient.getData("here will be real url");
  }
}