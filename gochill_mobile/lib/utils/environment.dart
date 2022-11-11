class Environment {

  static const String port ='8000';
  static const String adresseIp = '192.168.100.65';
  static const String adresseIpProduction ='';
  static const String portProduction ='8000';
  static  String BASE_URL='http://'+adresseIp+':'+port+'/api/';
  static const int timeout = 20;
  static const bool isProduction = false;
  static const String statutCree = "CREEE";
  static const String statutAffectee = "AFFECTEE";
  static const String statutDemarre = "DEMARREE";
  static const String statutTerminee = "TERMINEE";

  static String getAdresseIp(){
    String base_Url_Oauth;
    if(!isProduction){
      base_Url_Oauth = adresseIp+ ':'+ port;
      return base_Url_Oauth;
    }
    else{
      base_Url_Oauth = adresseIpProduction + ':'+ portProduction;
      return base_Url_Oauth;
    }
  }
}