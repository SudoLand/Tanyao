int tryParseInt(String target) {
  try {
    final int result = int.parse(target);
    return result;
  } on FormatException {
    return null;
  }
}
