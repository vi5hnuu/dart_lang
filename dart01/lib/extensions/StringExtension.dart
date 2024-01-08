extension StringSecret on String {
  String get encoded => _code(1);

  String get decoded => _code(-1);

  String _code(int by) {
    StringBuffer sb = StringBuffer();
    for (final codePoint in runes) {
      sb.writeCharCode(codePoint + by);
    }
    return sb.toString();
  }
}
