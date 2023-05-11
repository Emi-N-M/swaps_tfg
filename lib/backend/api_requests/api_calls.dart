import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class UploadMediaCall {
  static Future<ApiCallResponse> call({
    String? token = 'null',
    List<int>? imageList,
  }) {
    final image = _serializeList(imageList);

    return ApiManager.instance.makeApiCall(
      callName: 'uploadMedia',
      apiUrl: 'https://us-central1-swaps-fcc15.cloudfunctions.net/uploadMedia',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'image': image,
        'token': token,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic imagePath(dynamic response) => getJsonField(
        response,
        r'''$.path''',
      );
  static dynamic url(dynamic response) => getJsonField(
        response,
        r'''$.url''',
      );
}

class AcceptPossibleSwapCall {
  static Future<ApiCallResponse> call({
    String? token = '',
    String? psid = '',
  }) {
    final body = '''
{
  "token": "${token}",
"psid": "${psid}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'acceptPossibleSwap',
      apiUrl:
          'https://us-central1-swaps-fcc15.cloudfunctions.net/acceptPossibleSwap',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckUsernameCall {
  static Future<ApiCallResponse> call({
    String? username = '',
  }) {
    final body = '''
{
  "username": "${username}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'checkUsername',
      apiUrl:
          'https://us-central1-swaps-fcc15.cloudfunctions.net/checkUsername',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

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

String _serializeJson(dynamic jsonVar) {
  jsonVar ??= {};
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return '{}';
  }
}
