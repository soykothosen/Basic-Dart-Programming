import 'dart:async';

Timer interval(Duration duration, func) {
  Timer function() {
    Timer timer = new Timer(duration, function);

    func(timer);

    return timer;
  }

  return new Timer(duration, function);
}

void main() {
  int i = 0;

  interval(new Duration(seconds: 1), (timer) {
    print(i++);

    if (i > 5) timer.cancel();
  });
}
