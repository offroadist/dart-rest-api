import 'dart:async';
import 'dart:convert';

import 'serialization_util.dart';
import '../backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../../login/login_widget.dart';
import '../../register/register_widget.dart';
import '../../complete_profile/complete_profile_widget.dart';
import '../../forgot_password/forgot_password_widget.dart';
import '../../my_friends/my_friends_widget.dart';
import '../../chat_details/chat_details_widget.dart';
import '../../edit_profile/edit_profile_widget.dart';
import '../../change_password/change_password_widget.dart';
import '../../products/products_widget.dart';
import '../../chat_details_copy/chat_details_copy_widget.dart';
import '../../conversations/conversations_widget.dart';
import '../../conversation_list/conversation_list_widget.dart';
import '../../notifications/notifications_widget.dart';
import '../../enquiry/enquiry_widget.dart';
import '../../conversation/conversation_widget.dart';

class PushNotificationsHandler extends StatefulWidget {
  const PushNotificationsHandler(
      {Key key, this.handlePushNotification, this.child})
      : super(key: key);

  final Function(BuildContext) handlePushNotification;
  final Widget child;

  @override
  _PushNotificationsHandlerState createState() =>
      _PushNotificationsHandlerState();
}

class _PushNotificationsHandlerState extends State<PushNotificationsHandler> {
  bool _loading = false;

  Future handleOpenedPushNotification() async {
    final notification = await FirebaseMessaging.instance.getInitialMessage();
    if (notification != null) {
      await _handlePushNotification(notification);
    }
    FirebaseMessaging.onMessageOpenedApp.listen(_handlePushNotification);
  }

  Future _handlePushNotification(RemoteMessage message) async {
    setState(() => _loading = true);
    try {
      final initialPageName = message.data['initialPageName'] as String;
      final initialParameterData = getInitialParameterData(message.data);
      final pageBuilder = pageBuilderMap[initialPageName];
      if (pageBuilder != null) {
        final page = await pageBuilder(initialParameterData);
        await Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      }
    } catch (e) {
      print('Error: $e');
    } finally {
      setState(() => _loading = false);
    }
  }

  @override
  void initState() {
    super.initState();
    handleOpenedPushNotification();
  }

  @override
  Widget build(BuildContext context) => _loading
      ? Container(
          color: Color(0xFFAA9130),
          child: Builder(
            builder: (context) => Image.asset(
              'assets/images/OFFROADIST_DEFAULT-min.jpg',
              fit: BoxFit.fitWidth,
            ),
          ),
        )
      : widget.child;
}

final pageBuilderMap = <String, Future<Widget> Function(Map<String, dynamic>)>{
  'Login': (data) async => LoginWidget(),
  'Register': (data) async => RegisterWidget(),
  'completeProfile': (data) async => CompleteProfileWidget(),
  'forgotPassword': (data) async => ForgotPasswordWidget(),
  'MyFriends': (data) async => MyFriendsWidget(),
  'chatDetails': (data) async => ChatDetailsWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'myProfile': (data) async => NavBarPage(initialPage: 'MyProfileWidget'),
  'editProfile': (data) async => EditProfileWidget(
        userEmail: await getDocumentParameter(
            data, 'userEmail', UsersRecord.serializer),
        userDisplay: await getDocumentParameter(
            data, 'userDisplay', UsersRecord.serializer),
        userPhoto: getParameter(data, 'userPhoto'),
      ),
  'changePassword': (data) async => ChangePasswordWidget(),
  'Products': (data) async => hasMatchingParameters(
          data, {'price', 'thumbnail', 'categoryname', 'productname'})
      ? ProductsWidget(
          price: getParameter(data, 'price'),
          thumbnail: getParameter(data, 'thumbnail'),
          categoryname: getParameter(data, 'categoryname'),
          productname: getParameter(data, 'productname'),
        )
      : NavBarPage(initialPage: 'ProductsWidget'),
  'chatDetailsCopy': (data) async => ChatDetailsCopyWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
  'Conversations': (data) async =>
      hasMatchingParameters(data, {'id', 'displayName'})
          ? ConversationsWidget(
              id: getParameter(data, 'id'),
              displayName: getParameter(data, 'displayName'),
            )
          : NavBarPage(initialPage: 'ConversationsWidget'),
  'ConversationList': (data) async =>
      hasMatchingParameters(data, {'firstname', 'displayName'})
          ? ConversationListWidget(
              firstname: getParameter(data, 'firstname'),
              displayName: getParameter(data, 'displayName'),
            )
          : NavBarPage(initialPage: 'ConversationListWidget'),
  'Notifications': (data) async => hasMatchingParameters(data, {'message'})
      ? NotificationsWidget(
          message: getParameter(data, 'message'),
        )
      : NavBarPage(initialPage: 'NotificationsWidget'),
  'Enquiry': (data) async => hasMatchingParameters(
          data, {'enquiry', 'id', 'customername', 'producttitle'})
      ? EnquiryWidget(
          enquiry: getParameter(data, 'enquiry'),
          id: getParameter(data, 'id'),
          customername: getParameter(data, 'customername'),
          producttitle: getParameter(data, 'producttitle'),
        )
      : NavBarPage(initialPage: 'EnquiryWidget'),
  'Conversation': (data) async => ConversationWidget(
        chatUser: await getDocumentParameter(
            data, 'chatUser', UsersRecord.serializer),
        chatRef: getParameter(data, 'chatRef'),
      ),
};

bool hasMatchingParameters(Map<String, dynamic> data, Set<String> params) =>
    params.any((param) => getParameter(data, param) != null);

Map<String, dynamic> getInitialParameterData(Map<String, dynamic> data) {
  try {
    final parameterDataStr = data['parameterData'];
    if (parameterDataStr == null ||
        parameterDataStr is! String ||
        parameterDataStr.isEmpty) {
      return {};
    }
    return jsonDecode(parameterDataStr) as Map<String, dynamic>;
  } catch (e) {
    print('Error parsing parameter data: $e');
    return {};
  }
}
