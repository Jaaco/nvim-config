void main() {
  final x = [1, 3, 5, 5, 5, 5]
    ..sort((a, b) {
      return a.compareTo(b);
    })
    ..toString().split('this is a long pattern');
  print(x);
}
