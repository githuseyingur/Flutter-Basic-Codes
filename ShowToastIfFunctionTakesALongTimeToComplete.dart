void Function() {
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
     OtherFunction.whenComplete(() async {
       _timer.cancel();
       await Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WidgetTree()));
     });
  }
