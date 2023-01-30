void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    Future.delayed(Duration(seconds: 1), () async{
      bool _isOnline = await hasNetwork();
      _isOnline?goHome():showOfflineAlert();    // go Home If user online else show offline alert
    });
    super.initState();
  }


Future<bool> hasNetwork() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
    } on SocketException catch (_) {
      return false;
    }
  }
