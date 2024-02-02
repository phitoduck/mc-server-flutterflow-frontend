import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start 🎁 Minecraft Platform-as-a-Service API 🎄 Group Code

class MinecraftPlatformAsAServiceAPIGroup {
  static String baseUrl =
      'https://g038bx3m9k.execute-api.us-west-2.amazonaws.com/prod';
  static Map<String, String> headers = {};
  static PingThisApiHealthcheckGetCall pingThisApiHealthcheckGetCall =
      PingThisApiHealthcheckGetCall();
  static StartMinecraftServerMinecraftServerPostCall
      startMinecraftServerMinecraftServerPostCall =
      StartMinecraftServerMinecraftServerPostCall();
  static StopMinecraftServerMinecraftServerDeleteCall
      stopMinecraftServerMinecraftServerDeleteCall =
      StopMinecraftServerMinecraftServerDeleteCall();
  static GetMinecraftServerIpAddressMinecraftServerIpAddressGetCall
      getMinecraftServerIpAddressMinecraftServerIpAddressGetCall =
      GetMinecraftServerIpAddressMinecraftServerIpAddressGetCall();
  static GetMinecraftServerDeploymentStatusMinecraftServerStatusGetCall
      getMinecraftServerDeploymentStatusMinecraftServerStatusGetCall =
      GetMinecraftServerDeploymentStatusMinecraftServerStatusGetCall();
}

class PingThisApiHealthcheckGetCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'ping_this_api_healthcheck_get',
      apiUrl: '${MinecraftPlatformAsAServiceAPIGroup.baseUrl}/healthcheck',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StartMinecraftServerMinecraftServerPostCall {
  Future<ApiCallResponse> call({
    int? playTimeMinutes = 0,
  }) async {
    final ffApiRequestBody = '''
{
  "play_time_minutes": $playTimeMinutes
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'start_minecraft_server_minecraft_server_post',
      apiUrl: '${MinecraftPlatformAsAServiceAPIGroup.baseUrl}/minecraft-server',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class StopMinecraftServerMinecraftServerDeleteCall {
  Future<ApiCallResponse> call({
    int? waitNMinutesBeforeDestroy = 0,
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'stop_minecraft_server_minecraft_server_delete',
      apiUrl: '${MinecraftPlatformAsAServiceAPIGroup.baseUrl}/minecraft-server',
      callType: ApiCallType.DELETE,
      headers: {},
      params: {
        'wait_n_minutes_before_destroy': waitNMinutesBeforeDestroy,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetMinecraftServerIpAddressMinecraftServerIpAddressGetCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName:
          'get_minecraft_server_ip_address_minecraft_server_ip_address_get',
      apiUrl:
          '${MinecraftPlatformAsAServiceAPIGroup.baseUrl}/minecraft-server/ip-address',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? ipAddress(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.server_ip_address''',
      ));
}

class GetMinecraftServerDeploymentStatusMinecraftServerStatusGetCall {
  Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName:
          'get_minecraft_server_deployment_status_minecraft_server_status_get',
      apiUrl:
          '${MinecraftPlatformAsAServiceAPIGroup.baseUrl}/minecraft-server/status',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  String? serverStatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
}

/// End 🎁 Minecraft Platform-as-a-Service API 🎄 Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
