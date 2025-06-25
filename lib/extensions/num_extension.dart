extension NumExtension on num {
  String printSize({int decimals = 2}) {
    if (this <= 0) return "0 B";
    const suffixes = ["B", "KB", "MB", "GB", "TB"];

    int i = 0;
    double size = toDouble();

    // Loop to divide by 1024 and increase suffix index until size is below 1024
    while (size >= 1024 && i < suffixes.length - 1) {
      size /= 1024;
      i++;
    }

    return "${size.toStringAsFixed(decimals)} ${suffixes[i]}";
  }

  String toTime() {
    if (this >= 3600) {
      int hours = (this ~/ 3600).toInt();
      int minutes = ((this % 3600) ~/ 60).toInt();
      int secs = (this % 60).toInt();
      return "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
    } else if (this >= 60) {
      int minutes = (this ~/ 60).toInt();
      int secs = (this % 60).toInt();
      return "${minutes.toString().padLeft(2, '0')}:${secs.toString().padLeft(2, '0')}";
    } else {
      return "00:${this.toInt().toString().padLeft(2, '0')}";
    }
  }
}
