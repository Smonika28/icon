
/// api end point 
class Apis {
  static const _baseUrl = 'https://groomely.com';
  static const login = _baseUrl + '/api/v1/users/login';


  // static const signup = _baseUrl + '/api/v1/users/signup';
static const signup=_baseUrl+'/api/v1/users/register';
  static const fetchServiceList = _baseUrl+'/api/v1/sellers/service/list';
  static const appointmentList = _baseUrl+"/api/v1/sellers/appointment/list";
  static const getAllService = _baseUrl+"/api/v1/sellers/service/all-list";
  static const serviceDetailById = _baseUrl+"/api/v1/sellers/service/details-by-id";
  static const homePage = _baseUrl+"/api/v1/sellers/home/view";
  static const getUser = _baseUrl+"/api/v1/sellers/me";
  static const toggleService = _baseUrl+"/api/v1/sellers/service/status-change";
}
// Image storage  path
class ImageStorage{
  static const store_url = "";
  static const image_url = "";

}