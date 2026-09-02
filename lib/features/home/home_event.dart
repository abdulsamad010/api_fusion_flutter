abstract class HomeEvent {
}

class ChangeScreen extends HomeEvent{
  final index;
  ChangeScreen({required this.index});
}