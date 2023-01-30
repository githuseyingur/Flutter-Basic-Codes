/*The StreamBuilder listens to the updates on the stream and updates the screen accordingly. 
The StreamController is used to manage the stream. The _addDataToStream function adds data to
the stream and the StreamBuilder displays the updated data in the screen. A circular progress
indicator is shown until the data is available in the stream.*/


class _MyHomePageState extends State<MyHomePage> {
  // StreamController to manage the stream
  StreamController<int> _streamController = StreamController<int>();

  // Function to add data to the stream
  void _addDataToStream() {
    for (int i = 0; i < 10; i++) {
      _streamController.sink.add(i);
      Future.delayed(Duration(seconds: 1));
    }
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stream Builder Example'),
      ),
      body: Center(
        child: StreamBuilder(
          stream: _streamController.stream,
          builder: (context, snapshot) {
            // No data in the stream (also loaded for the first time)
            if (!snapshot.hasData) {
              return CircularProgressIndicator();
            }

            // Data is present in the stream
            return Text(snapshot.data.toString());
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addDataToStream,
        child: Icon(Icons.refresh),
      ),
    );
  }
}
