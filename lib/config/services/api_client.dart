import 'package:chronos_app/tenants/globals.dart' as GLOBALS;

String urlApi = GLOBALS.urlApi;
Map headersUnAuth = {
  'Content-Type': 'application/json',
  'current-tenant': GLOBALS.tenantEncode
};
