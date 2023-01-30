// You can use this for SPLASH SCREEN
 

void initState() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersiveSticky, overlays: []);
    Future.delayed(Duration(seconds: 1), () async{
      bool _isOnline = await hasNetwork();
      _isOnline?doSomething():showOfflineAlert();  // CALL doSomething() IF USER HAVE A INTERNET CONNECTION 
    });
    super.initState();
  }
  void doSomething() {
  
  //SHOW TOAST MESSAGE IF INTERNET CONNECTION IS SLOW
    int i =0;
    Timer _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      i++;
      if(i==8){
        Fluttertoast.showToast(
            msg: "Check your internet connection!",
            toastLength: Toast.LENGTH_LONG,
            gravity: ToastGravity.TOP,
            timeInSecForIosWeb: 1,
            backgroundColor: Color(0xFF50647E),
            textColor: Colors.white,
            fontSize: MediaQuery.of(context).size.width*0.024
        );
      }
    });
    
    //WHEN COMPLETE
     Function().whenComplete(() async {
       _timer.cancel();
       await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WidgetTree()));
     });
  }
