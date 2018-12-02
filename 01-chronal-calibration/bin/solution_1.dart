import 'dart:io';
import 'dart:async';
import 'dart:convert';

void main() async {
  final file = new File('inputs.txt');

  Stream lines =
      file.openRead().transform(utf8.decoder).transform(const LineSplitter());

  print('Total is ${await getNetFrequency(lines)}');
}

Future<int> getNetFrequency(Stream lines) async {
  int total = 0;

  await for (var line in lines) {
    total += int.parse(line);
  }
  return total;
}
