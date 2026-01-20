// // class FirebaseService {
// //   FirebaseMessaging messaging = FirebaseMessaging.instance;
// //   FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
// //       FlutterLocalNotificationsPlugin();
//
// //   Future<void> initFirebaseMessaging(BuildContext context) async {
// //     // Request notification permissions
// //     await _requestNotificationPermission(context:context);
//
// //     // Initialize local notifications
// //     await _initializeNotifications();
//
// //     // Handle foreground messages
// //     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
// //       if (message.notification != null) {
// //         String title = message.notification!.title ?? 'Notification';
// //         String body = message.notification!.body ?? 'You have a new message';
// //         _showNotification(title, body);
// //       }
// //     });
//
// //     // Handle background messages
// //     FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
// //       // Handle user tapping the notification when the app is in the background
// //       _handleMessageNavigation(context, message);
// //     });
// //   }
//
// //   Future<void> _requestNotificationPermission(
// //       {required BuildContext context}) async {
// //     PermissionStatus status = await Permission.notification.status;
//
// //     if (!status.isGranted) {
// //       // Request the permission if it's not granted
// //       status = await Permission.notification.request();
// //     }
// //     if (status.isGranted) {
// //       log('Notification permission granted');
// //     } else {
// //       log('Notification permission denied');
// //       _showPermissionExplanationDialog(context);
// //     }
// //   }
//
// //   // Show a dialog explaining the importance of notifications
// //   void _showPermissionExplanationDialog(BuildContext context) {
// //     showDialog(
// //       context: context,
// //       builder: (BuildContext context) {
// //         return AlertDialog(
// //           title: const Text('Notification Permission Needed'),
// //           content: const Text(
// //               'Notifications help you stay updated with important messages. Please enable notifications.'),
// //           actions: <Widget>[
// //             TextButton(
// //               child: const Text('Enable Notifications'),
// //               onPressed: () {
// //                 Navigator.of(context).pop();
// //                 Permission.notification.request();
// //               },
// //             ),
// //           ],
// //         );
// //       },
// //     );
// //   }
//
// //   Future<void> _initializeNotifications() async {
// //     const AndroidInitializationSettings initializationSettingsAndroid =
// //         AndroidInitializationSettings('@mipmap/ic_launcher');
// //     const IOSInitializationSettings initializationSettingsIOS =
// //         IOSInitializationSettings();
//
// //     const InitializationSettings initializationSettings = InitializationSettings(
// //       android: initializationSettingsAndroid,
// //       iOS: initializationSettingsIOS,
// //     );
//
// //     await flutterLocalNotificationsPlugin.initialize(
// //       initializationSettings,
// //       onSelectNotification: (String? payload) async {
// //         if (payload != null) {
// //           print("Notification payload: $payload");
// //           // Handle navigation based on payload
// //         }
// //       },
// //     );
// //   }
//
// //   // Show local notification
// //   Future<void> _showNotification(String title, String body) async {
// //     const AndroidNotificationDetails androidPlatformChannelSpecifics =
// //         AndroidNotificationDetails(
// //       'my_notification_channel',
// //       'My Notifications',
// //       channelDescription: 'Notifications for updates',
// //       importance: Importance.max,
// //       priority: Priority.high,
// //       showWhen: true,
// //     );
// //     const IOSNotificationDetails iOSPlatformChannelSpecifics =
// //         IOSNotificationDetails();
// //     const NotificationDetails platformChannelSpecifics = NotificationDetails(
// //       android: androidPlatformChannelSpecifics,
// //       iOS: iOSPlatformChannelSpecifics,
// //     );
//
// //     int notificationId = DateTime.now().millisecondsSinceEpoch.remainder(1 << 31);
//
// //     await flutterLocalNotificationsPlugin.show(
// //       notificationId,
// //       title,
// //       body,
// //       platformChannelSpecifics,
// //       payload: 'Firebase Notification Payload',
// //     );
// //   }
//
// //   // Handle navigation when notification is tapped
// //   void _handleMessageNavigation(BuildContext context, RemoteMessage message) {
// //     // Handle navigation when the notification is tapped
// //     Navigator.pushNamed(context, '/notifications');
// //   }
// // }
// ///////////////////////////////////////////////////
// library;
//
// import 'dart:convert';
// import 'dart:math';
//
// import 'package:pharmacy/app_features/home/presentation/controller/home_cubit.dart';
// import 'package:pharmacy/config/routes/app_routes.dart';
// import 'package:pharmacy/core/network/api_constance.dart';
// import 'package:pharmacy/main.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart' show kDebugMode;
// import 'package:flutter/material.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// // Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
// //   NotificationHelper.onBgNotificationOpen(json.encode(message.data));
// // }
//
// // class NotificationHelper {
// //   // Constructor
// //   NotificationHelper({this.fcmOnMessage}) {
// //     _initFCM();
// //   }
//
// //   // Clients.
// //   static final _fcmNotify = FirebaseMessaging.instance;
// //   static final _localNotify = FlutterLocalNotificationsPlugin();
//
// //   // Functions.
// //   final Function? fcmOnMessage;
//
// //   // Vars
// //   final bool _init = false;
//
// //   String? currentTopic; // Track the current topic
//
// //   // Public Methods
// //   Future<void> switchToTopic(String newTopic) async {
// //     if (currentTopic != null && currentTopic != newTopic) {
// //       debugPrint("unSubscribeFromCurrentTopic to $newTopic topic");
//
// //       await unSubscribeFromCurrentTopic(); // Unsubscribe from old topic
// //     }
// //     await subscribeToTopic(newTopic); // Subscribe to the new topic
// //     currentTopic = newTopic;
// //     debugPrint("Current topic: $currentTopic");
// //     debugPrint("Switched to $newTopic topic");
// //   }
//
// //   static Future<void> subscribeToTopic(String topic) async {
// //     await _fcmNotify.subscribeToTopic(topic);
// //   }
//
// //   Future<void> unSubscribeFromCurrentTopic() async {
// //     if (currentTopic != null) {
// //       await unSubscribeToTopic(currentTopic!);
// //     }
// //   }
//
// //   static Future<void> unSubscribeToTopic(String topic) async {
// //     await _fcmNotify.unsubscribeFromTopic(topic);
// //   }
//
// //   // Private Methods
// //   _initFCM() async {
// //     if (_init) {
// //       // await switchToTopic('owner'); // Subscribe to 'owner' topic initially
//
// //       return;
// //     } else {
// //       // await _fcmNotify.subscribeToTopic('all');
// //       // await _fcmNotify.subscribeToTopic('customer');
// //       // await _fcmNotify.subscribeToTopic('owner');
// //       await _fcmNotify.setAutoInitEnabled(true);
//
// //       // Get Token and just Print it.
// //       await _saveFCMToken();
//
// //       _onTokenRefresh();
// //       // Init Listen for Notifications.
// //       FirebaseMessaging.onMessage.listen((RemoteMessage message) {
// //         if (kDebugMode) {
// //           debugPrint(
// //             "methodName: 'FirebaseMessaging@onMessage',\n"
// //             "fileName: 'fcm_manager.dart',\n"
// //             "response: ${message.data},\n",
// //             wrapWidth: 512,
// //           );
// //         }
// //         //
// //         if (fcmOnMessage != null) fcmOnMessage!(message);
// //         //
// //         final BuildContext context = navigatorKey.currentState!.context;
//
// //         HomeCubit.get(context)
// //             .GetNotificationsData()
// //             .then((value) => showNotification(message));
// //       });
// //       // Request Permissions for IOS Only.
// //       await _fcmNotify.requestPermission(
// //         alert: true,
// //         announcement: false,
// //         badge: true,
// //         carPlay: false,
// //         criticalAlert: false,
// //         provisional: false,
// //         // sound: true,
// //       );
//
// //       void onDidReceiveLocalNotification(
// //           int? id, String? title, String? body, String? payload) async {}
//
// //       // Init Local Notifications Settings.
// //       var initializationSettingsAndroid =
// //           const AndroidInitializationSettings('@mipmap/ic_launcher');
// //       var initializationSettingsIOS = DarwinInitializationSettings(
// //         onDidReceiveLocalNotification: onDidReceiveLocalNotification,
// //       );
// //       var initializationSettings = InitializationSettings(
// //         android: initializationSettingsAndroid,
// //         iOS: initializationSettingsIOS,
// //       );
// //       await _localNotify.initialize(
// //         initializationSettings,
// //         onDidReceiveBackgroundNotificationResponse: onNotificationOpen,
// //       );
// //       // Subscribe to the correct topic dynamically (based on user role)
// //       await _handleDynamicTopicSubscription();
//
// //       // _init = true;
// //     }
// //   }
//
// //   Future<void> _handleDynamicTopicSubscription() async {
// //     // Assuming you have a way to determine the user's role
// //     String userRole = await getUserRole(); // Replace this with actual logic
// //     if (userRole == 'customer') {
// //       debugPrint("Current topic: customer");
// //       await switchToTopic('customer'); // Subscribe to 'customer' topic
// //     } else if (userRole == 'owner') {
// //       debugPrint("Current00000 topic: owner");
//
// //       await switchToTopic('owner'); // Subscribe to 'owner' topic
// //     } else {
// //       debugPrint("Current topic: all");
// //       await switchToTopic('all'); // Default or fallback topic
// //     }
// //   }
//
// //   Future<String> getUserRole() async {
// //     // This should be replaced by the actual logic to retrieve the user's role
// //     return 'owner'; // Example: returning 'customer' as the user role
// //   }
//
// //   Future<void> _saveFCMToken() async {
// //     final token = await _fcmNotify.getToken();
// //     if (kDebugMode) debugPrint("_fcmToken: $token");
// //   }
//
// //   static Future<void> onBgNotificationOpen(String? x) async {
// //     try {
// //       // final message = json.decode(x!);
// //       // Navigator.of(Get.context!).push(
// //       //   CupertinoPageRoute(
// //       //     builder: (context) => const NotificationScreen(),
// //       //   ),
// //       // );
// //       final BuildContext context = navigatorKey.currentState!.context;
//
// //       HomeCubit.get(context)
// //           .MarkNotificationAsRead(
// //               notificationsId: HomeCubit.get(context)
// //                   .getAllNotificationsModel!
// //                   .data!
// //                   .data!
// //                   .first
// //                   .id!)
// //           .then((value) => navigatorKey.currentState
// //               ?.pushReplacementNamed(Routes.NotificationsScreenRoute));
// //     } catch (e) {}
// //   }
//
// //   static Future<void> onNotificationOpen(NotificationResponse? x) async {
// //     try {
// //       // final message = json.decode(x!);
// //       // Navigator.of(Get.context!).push(
// //       //   CupertinoPageRoute(
// //       //     builder: (context) => const NotificationScreen(),
// //       //   ),
// //       // );
// //       // if (payload != null) {
// //       // log("Notification payload: $payload");
// //       // Navigate to the NotificationsScreen when tapped
// //       final BuildContext context = navigatorKey.currentState!.context;
//
// //       HomeCubit.get(context)
// //           .MarkNotificationAsRead(
// //               notificationsId: HomeCubit.get(context)
// //                   .getAllNotificationsModel!
// //                   .data!
// //                   .data!
// //                   .first
// //                   .id!)
// //           .then((value) => navigatorKey.currentState
// //               ?.pushReplacementNamed(Routes.NotificationsScreenRoute));
// //       // }
// //     } catch (e) {}
// //   }
//
// //   // Helper Functions
// //   void showNotification(RemoteMessage payload) async {
// //     await _initFCM();
// //     var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
// //       'channel id 3',
// //       'CRChannelName',
// //       channelDescription: 'CRChanelDescription',
// //       importance: Importance.max,
// //       priority: Priority.high,
// //       icon: '@mipmap/ic_launcher',
// //       ticker: 'ticker',
// //     );
// //     var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
// //     var platformChannelSpecifics = NotificationDetails(
// //       android: androidPlatformChannelSpecifics,
// //       iOS: iOSPlatformChannelSpecifics,
// //     );
// //     await _localNotify.show(
// //       Random().nextInt(999),
// //       payload.notification!.title ?? '',
// //       payload.notification!.body ?? '',
// //       platformChannelSpecifics,
// //       payload: json.encode(payload.data),
// //     );
// //   }
//
// //   Future<void> _onTokenRefresh() async {
// //     _fcmNotify.onTokenRefresh.listen((String token) async {
// //       // DioClient.instance.updateToken(token);
// //     });
// //   }
// // }
// // import 'dart:convert';
// // import 'dart:math';
// // import 'package:pharmacy/app_features/home/presentation/controller/home_cubit.dart';
// // import 'package:pharmacy/config/routes/app_routes.dart';
// // import 'package:pharmacy/main.dart';
// // import 'package:firebase_messaging/firebase_messaging.dart';
// // import 'package:flutter/foundation.dart' show kDebugMode;
// // import 'package:flutter/material.dart';
// // import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   NotificationHelper.onBgNotificationOpen(json.encode(message.data));
// }
//
// class NotificationHelper {
//   // Constructor
//   NotificationHelper({this.fcmOnMessage}) {
//     _initFCM();
//   }
//
//   // Clients
//   static final _fcmNotify = FirebaseMessaging.instance;
//   static final _localNotify = FlutterLocalNotificationsPlugin();
//
//   // Functions
//   final Function? fcmOnMessage;
//
//   // Vars
//   String? currentUserTopic; // Track the current user-specific topic
//
//   // Public Methods
//
//   // This method will ensure that the "all" topic is always subscribed,
//   // and switch between "owner" and "customer" topics.
//   Future<void> switchToUserTopic(String newUserTopic) async {
//     // Ensure the user is always subscribed to the "all" topic
//     await _fcmNotify.subscribeToTopic('all');
//
//     // If there is a current user-specific topic and it differs from the new one, unsubscribe from it
//     if (currentUserTopic != null && currentUserTopic != newUserTopic) {
//       await _fcmNotify.unsubscribeFromTopic(currentUserTopic!);
//     }
//
//     // Subscribe to the new user-specific topic
//     await _fcmNotify.subscribeToTopic(newUserTopic);
//     currentUserTopic = newUserTopic;
//     debugPrint("Switched to $newUserTopic topic");
//   }
//
//   // Initializes the subscription based on user role
//   Future<void> initializeTopics() async {
//     // Always subscribe to the "all" topic
//     await _fcmNotify.subscribeToTopic('all');
//
//     // Handle user-specific topic subscription
//     String userRole = await getUserRole();
//     if (userRole == 'owner') {
//       await switchToUserTopic('owner');
//     } else if (userRole == 'customer') {
//       await switchToUserTopic('customer');
//     } else {
//       await switchToUserTopic('all'); // Default case for non-specific roles
//     }
//   }
//
//   // Method to determine the user role
//   Future<String> getUserRole() async {
//     // Replace with actual logic to get the user's role
//     if (isOwner == true) {
//       return 'owner';
//     } else {
//       return 'customer';
//     }
//   }
//
//   // Private Methods
//   Future<void> _initFCM() async {
//     await _fcmNotify.setAutoInitEnabled(true);
//
//     // Subscribe to the correct initial topics
//     await initializeTopics();
//
//     // Handle token refresh and notifications
//     FirebaseMessaging.onMessage.listen((RemoteMessage message) {
//       if (kDebugMode) {
//         debugPrint(
//           "methodName: 'FirebaseMessaging@onMessage',\n"
//           "fileName: 'fcm_manager.dart',\n"
//           "response: ${message.data},\n",
//           wrapWidth: 512,
//         );
//       }
//       if (fcmOnMessage != null) fcmOnMessage!(message);
//
//       // Trigger notification display and any logic needed
//       final BuildContext context = navigatorKey.currentState!.context;
//       HomeCubit.get(context).GetNotificationsData().then((value) => showNotification(message));
//     });
//
//     // Request permissions for iOS
//     await _fcmNotify.requestPermission(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//
//     await _saveFCMToken();
//     _onTokenRefresh();
//
//     // Initialize local notifications
//     var initializationSettingsAndroid = const AndroidInitializationSettings('@mipmap/ic_launcher');
//     var initializationSettingsIOS = const DarwinInitializationSettings();
//     var initializationSettings = InitializationSettings(
//       android: initializationSettingsAndroid,
//       iOS: initializationSettingsIOS,
//     );
//     await _localNotify.initialize(initializationSettings,
//         onDidReceiveBackgroundNotificationResponse: onNotificationOpen);
//   }
//
//   // Save the FCM token
//   Future<void> _saveFCMToken() async {
//     fcmtoken = (await _fcmNotify.getToken())!;
//     if (kDebugMode) debugPrint("_fcmToken: $fcmtoken");
//   }
//
//   // Handle token refresh
//   Future<void> _onTokenRefresh() async {
//     _fcmNotify.onTokenRefresh.listen((String token) async {
//       // Handle token update logic here
//     });
//   }
//
//   // Display the notification locally
//   void showNotification(RemoteMessage payload) async {
//     await _initFCM();
//     var androidPlatformChannelSpecifics = const AndroidNotificationDetails(
//       'channel id 3',
//       'CRChannelName',
//       channelDescription: 'CRChanelDescription',
//       importance: Importance.max,
//       priority: Priority.high,
//       icon: '@mipmap/ic_launcher',
//       ticker: 'ticker',
//     );
//     var iOSPlatformChannelSpecifics = const DarwinNotificationDetails();
//     var platformChannelSpecifics = NotificationDetails(
//       android: androidPlatformChannelSpecifics,
//       iOS: iOSPlatformChannelSpecifics,
//     );
//     await _localNotify.show(
//       Random().nextInt(999),
//       payload.notification?.title ?? '',
//       payload.notification?.body ?? '',
//       platformChannelSpecifics,
//       payload: json.encode(payload.data),
//     );
//   }
//
//   // Static methods for background notifications
//   static Future<void> onBgNotificationOpen(String? x) async {
//     try {
//       final BuildContext context = navigatorKey.currentState!.context;
//       HomeCubit.get(context)
//           .MarkNotificationAsRead(
//               notificationsId: HomeCubit.get(context).getAllNotificationsModel!.data!.data!.first.id!)
//           .then((value) => navigatorKey.currentState?.pushReplacementNamed(Routes.NotificationsScreenRoute));
//     } catch (e) {
//       // Handle error
//     }
//   }
//
//   static Future<void> onNotificationOpen(NotificationResponse? x) async {
//     try {
//       final BuildContext context = navigatorKey.currentState!.context;
//       HomeCubit.get(context)
//           .MarkNotificationAsRead(
//               notificationsId: HomeCubit.get(context).getAllNotificationsModel!.data!.data!.first.id!)
//           .then((value) => navigatorKey.currentState?.pushReplacementNamed(Routes.NotificationsScreenRoute));
//     } catch (e) {
//       // Handle error
//     }
//   }
// }
