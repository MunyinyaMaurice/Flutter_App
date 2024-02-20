import 'package:fluttertoast/fluttertoast.dart';

class NotificationService {
  static void showInternetConnectedNotification() {
    Fluttertoast.showToast(
      msg: "Connected to the Internet",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
    );
  }

  static void showInternetDisconnectedNotification() {
    Fluttertoast.showToast(
      msg: "No Internet Connection",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.TOP,
    );
  }
}