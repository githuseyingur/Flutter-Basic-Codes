// double price = 2981462.28;        
// Text(moneyFormat(price.toStringAsFixed(2)))  --> 2,981,462.28       !!! price must be double --> toStringAsFixed(0) throws an ERROR !!!

String moneyFormat(String price) {
    var value = price;
    if (price.length > 2) {
      value = value.replaceAll(RegExp(r'\D'), '');
      value = value.replaceAll(RegExp(r'\B(?=(\d{3})+(?!\d))'), ',');
      return value;
    } else {
      return value;
    }
  }
