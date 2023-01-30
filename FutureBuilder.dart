/*This code demonstrates how to use a Future to retrieve data once and update the screen. 
The FutureBuilder listens to the updates from the future and updates the screen accordingly. 
The future is created using the _getDataFromFuture function. The FutureBuilder displays a circular
progress indicator until the data is available from the future.*/

class _MyHomePageState extends State<MyHomePage> {
  Future<int> _future;

  // Function to get data from future
  Future<int> _getDataFromFuture() {
    return Future.delayed(Duration(seconds: 1), () => 42);
  }

  @override
  void initState() {
    _future = _getDataFromFuture();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Future Builder Example'),
      ),
      body: Center(
        child: FutureBuilder<int>(
          future: _future,
          builder: (context, snapshot) {
            // No data in the future (also loaded for the first time)
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            // Data is available in the future
            return Text(snapshot.data.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _future = _getDataFromFuture();
          });
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
