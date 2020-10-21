import 'dart:async';

import 'dart:svg';

final StreamController streamController = StreamController();
final myStream = NumberCreator().stream;

add() async {
  for (int i = 1; i <= 10; i++) {
    await Future.delayed(Duration(seconds: 1));
    streamController.sink.add(i);
    print(i);
  }
}

NumberCreator().stream.map((i)=> 'number $i').listen(print));


main(List<String> args) {
  add();
}
