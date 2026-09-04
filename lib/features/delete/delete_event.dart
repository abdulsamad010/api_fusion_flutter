abstract class DeleteEvent {
}

class DeleteApi0Data extends DeleteEvent{
  final int index;
  DeleteApi0Data({required this.index});
}

class DeleteApi1Data extends DeleteEvent{
  final int index;
  DeleteApi1Data({required this.index});
}

class DeleteApi2Data extends DeleteEvent{
  final int index;
  DeleteApi2Data({required this.index});
}

class DeleteReset extends DeleteEvent {
}
