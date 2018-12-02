import 'dart:io';

void main() {
  var stopwatch = new Stopwatch()..start();

  final file = new File('inputs.txt');
  List<String> lines = file.readAsLinesSync();

  print('First duplicate frequency is ${getFirstDuplicateFrequency(lines)}');

  stopwatch.stop();
  print('Time elapsed (ms): ${stopwatch.elapsedMilliseconds}');
}

int getFirstDuplicateFrequency(List<String> lines) {
  int total = 0;
  Set past_totals = new Set.from([0]);

  while (true) {
    for (var line in lines) {
      total += int.parse(line);

      if (past_totals.contains(total)) {
        return total;
      }
      past_totals.add(total);
    }
  }
}
