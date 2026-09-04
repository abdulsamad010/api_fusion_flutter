abstract class PutEvent {
}

class PutApi0Data extends PutEvent{
  final int index;
  final String id,title,price;
  PutApi0Data({required this.index,required this.id,required this.title,required this.price});
}

class PutApi1Data extends PutEvent{
  final int index;
  final String lastName;
  PutApi1Data({required this.index,required this.lastName});
}

class PutApi2Data extends PutEvent{
  final int index;
  final String title,body;
  PutApi2Data({required this.index,required this.title,required this.body});
}

class PutApi3Data extends PutEvent{
  final int index;
  final String title,body;
  PutApi3Data({required this.index,required this.title,required this.body});
}