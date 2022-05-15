import 'package:connectivity_plus/connectivity_plus.dart';

abstract class Network {
  Future<bool> isDeviceConnected();
}

class NetworkImp implements Network {
  final Connectivity checker;

  const NetworkImp({
    required this.checker,
  });

  @override
  Future<bool> isDeviceConnected() async {
    final dynamic state = checker.checkConnectivity;

    if (state == ConnectivityResult.none) {
      return false;
    } else {
      return true;
    }
  }
}
