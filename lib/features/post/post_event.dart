abstract class PostEvent {
}

class PostApi0Data extends PostEvent{
  final int index;
  final String pTitle,pPrice;
  PostApi0Data({required this.index,required this.pPrice,required this.pTitle});
}

class PostApi1Data extends PostEvent{
  final int index;
  final String pTitle,pBody;
  PostApi1Data({required this.index,required this.pTitle,required this.pBody});
}

class PostApi2Data extends PostEvent{
  final int index;
  final String recipe;
  PostApi2Data({required this.index,required this.recipe});
}

class PostApi3Data extends PostEvent{
  final int index;
  final String title,body;
  PostApi3Data({required this.index,required this.title,required this.body});
}

class PostApi4Data extends PostEvent{
  final int index;
  final String todo;
  PostApi4Data({required this.index,required this.todo});
}
