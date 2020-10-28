import 'dart:async';

StreamController<String> _controller = StreamController<String>.broadcast();
// Broadcast is used to listen multiple stream
Stream<String> get out => _controller.stream;

void main(List<String> args) {
  out.listen((event) {
    print(event);
  });
  // _controller.sink.add('somedata');
  // add();

  out.listen((data) {
    print(data.replaceAll('hi', 'hello'));
  });
  add();
}

void add() {
  _controller.sink.add('hi');
}
