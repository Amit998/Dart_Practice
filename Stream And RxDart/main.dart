Stream<int> getNumbers() async* {
  // yield 1;
  for (int i = 1; i <= 10; i++) {
    yield i;

    await Future.delayed(Duration(seconds: 1));
  }
  // yield 2;
  // yield 22;
  // yield 1;
}

Stream<int> getNumbersDuplicate() async* {
  // yield 1;
  for (int i = 1; i <= 10; i++) {
    yield i;
    yield i;

    await Future.delayed(Duration(seconds: 1));
  }
  // yield 2;
  // yield 22;
  // yield 1;
}

Stream<int> getNumbersException() async* {
  for (int i = 1; i <= 3; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 1));
    if (i == 2) {
      throw Exception();
    }
  }
}

Stream<int> getNumbersTimeOut() async* {
  for (var i = 1; i <= 10; i++) {
    yield i;
    await Future.delayed(Duration(seconds: 4));
  }
}

void expand() {
  getNumbers().expand((element) => [element, element * 10]).listen((event) {
    print(event);
  });
}

void only() async {
  print(await getNumbers().single);
}

void single() async {
  print(await getNumbers().single);
}

void any() async {
  if (await getNumbers().any((int i) => i == 3)) {
    print('The number is 3');
  } else {
    print('There Is No 3');
  }
}

void elementAt() async {
  print(await getNumbers().elementAt(2));
}

void firstWhere() async {
  print(await getNumbers().firstWhere((i) => i > 2));
}

void contains() async {
  if (await getNumbers().contains(3)) {
    print('this Contain 3');
  } else {
    print('This Not Contain 3');
  }
}

void join() async {
  print(await getNumbers().join(', '));
}

void first() async {
  print(await getNumbers().first);
}

void last() async {
  print(await getNumbers().last);
}

void length() async {
  print(await getNumbers().length);
}

void awaitFor() async {
  var sum = 0;
  await for (var number in getNumbers()) {
    sum += number;
    print(sum);
  }
  print(sum);
}

void isEmpty() async {
  if (await getNumbers().isEmpty) {
    print('Stream is Empty');
  } else {
    print('Stream Is Not Empty');
  }
}

void listen() {
  // getNumbers().listen((data) {
  //   print(data);
  // });
  getNumbersException().listen((data) {
    print(data);
  }).onError((error) {
    print(error);
    print('An Error Occure');
  });
}

void map() {
  // getNumbers().map((event) => event * 10).listen((event) {
  //   print(event);
  // });
  getNumbers().map((event) {
    if (event % 2 == 0) {
      return event * 2;
    } else {
      return event - 2;
    }
  }).listen((item) {
    print(item);
  });
}

void skip() async {
  getNumbers().skip(2).listen((event) {
    print(event);
  });
}

void skipWhile() async {
  getNumbers().skipWhile((element) => element < 3).listen((event) {
    print(event);
  });
}

void take() async {
  getNumbers().take(2).listen((data) {
    print(data);
  });
}

void takeWhile() async {
  getNumbers().takeWhile((item) => item % 2 != 0).listen((event) {
    print(event);
  });
}

void where() async {
  getNumbers().where((event) => event % 2 != 0).listen((item) {
    print(item);
  });
}

void distinct() async {
  getNumbersDuplicate().distinct().listen((event) {
    print(event);
  });
}

void chaining() async {
  getNumbersDuplicate()
      .distinct()
      .map((item) => item * 10)
      .where((item) => item != 20)
      .listen((event) {
    print(event);
  });
}

void handleError() {
  getNumbersException().handleError((onError) {
    print(onError);
  }).listen((event) {
    print(event);
  });
}

void timeOut() {
  getNumbersTimeOut().timeout(Duration(seconds: 3)).listen((event) {
    print(event);
  });
}

void main(List<String> args) {
  // distinct();
  // timeOut();
  handleError();
  // chaining();
  // map();
  // skip();
  // take();
  // takeWhile();
  // where();
  // listen();
  // awaitFor();
  // isEmpty();
  // first();
  // last();
  // length();
  // single();
  // only();
  // any();
  // contains();
  // elementAt();
  // firstWhere();
  // join();
  // expand();
  // map();

  // listen();
  // getNumbers().listen((data) {
  //   listen();
  // });
  // var sum = 0;
  // getNumbers().listen((data) {
  //   sum += data;
  //   print(sum);
  // }).onDone(() {
  //   print('done');
  //   print(sum);
  // });
}
