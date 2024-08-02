class GlobalState {
  Map<String, int> answers = {};

  static final GlobalState _instance = GlobalState._internal();

  factory GlobalState() {
    return _instance;
  }

  GlobalState._internal();
}

final globalState = GlobalState();
