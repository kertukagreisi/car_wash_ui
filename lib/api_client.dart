import 'package:car_wash_ui/generated_code/lib/api.dart';

class CarWashApi {
  static const String baseURL = 'http://localhost:8081';

  static final ApiClient _apiClient = ApiClient(basePath: baseURL);

  static final CarEndpointApi carEndpointApi = CarEndpointApi(_apiClient);

  static final OwnerEndpointApi ownerEndpointApi = OwnerEndpointApi(_apiClient);
}
