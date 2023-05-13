import 'package:hlogistic/core/constants/enum/image_enum.dart';

class ImageConstants {
  static ImageConstants? _instace;

  static ImageConstants get instance => _instace ??= ImageConstants._init();

  ImageConstants._init();

  String get logo => toPng('veli',FileFormat.png);

  String get hotDog => toPng('hotdogs',FileFormat.png);
  String get projeIcon => toPng('cirlce_hwa',FileFormat.png);

  String toPng(String name,FileFormat fileFormat) => 'assets/image/$name${fileFormat.format}';
  
}

