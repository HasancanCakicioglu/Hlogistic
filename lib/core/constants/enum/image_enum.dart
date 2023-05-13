enum FileFormat {
  svg(".svg"),
  png(".png"),
  jpg(".jpg"),
  gif(".gif"),
  webp(".webp"),
  tiff(".tiff"),
  bmp(".bmp");

  const FileFormat(this.format);
  final String format;
}