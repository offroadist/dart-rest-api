import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class ConversationidCall {
  static Future<ApiCallResponse> call({
    String conversationId = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'CONVERSATIONID',
      apiUrl:
          'https://conversations.messagebird.com/v1/conversations/${conversationId}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'AccessKey 69xhPkM956i6Th8wGyLWfXzv1',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic text(dynamic response) => getJsonField(
        response,
        r'''$..text''',
      );
  static dynamic to(dynamic response) => getJsonField(
        response,
        r'''$..to''',
      );
}

class ProductsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'products',
      apiUrl: 'http://www.offroad.ist/wp-json/wc/store/products?limits=15',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
    );
  }
}

class NotificationsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'notifications',
      apiUrl: 'http://www.offroad.ist/wp-json/wcfmmp/v1/notifications/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic cm9vdGFkbWluOkJmMzI5Mzg4',
      },
      params: {},
      returnBody: true,
    );
  }
}

class GetenquiresCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'GETENQUIRES',
      apiUrl: 'http://www.offroad.ist/wp-json/wcfmmp/v1/enquiries/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Basic cm9vdGFkbWluOkJmMzI5Mzg4',
      },
      params: {},
      returnBody: true,
    );
  }
}

class ConversationsCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Conversations',
      apiUrl: 'https://conversations.messagebird.com/v1/conversations',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'AccessKey 69xhPkM956i6Th8wGyLWfXzv1',
      },
      params: {},
      returnBody: true,
    );
  }

  static dynamic itemsid(dynamic response) => getJsonField(
        response,
        r'''$..items..id''',
      );
}

class WebhooksCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'webhooks',
      apiUrl: 'https://conversations.messagebird.com/v1/webhooks/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'AccessKey 69xhPkM956i6Th8wGyLWfXzv1',
      },
      params: {},
      returnBody: true,
    );
  }
}

class MessagesIDSCall {
  static Future<ApiCallResponse> call({
    String id = '',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'MessagesIDS',
      apiUrl:
          'https://conversations.messagebird.com/v1/conversations/${id}/messages',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'AccessKey 69xhPkM956i6Th8wGyLWfXzv1',
      },
      params: {},
      returnBody: true,
    );
  }
}
