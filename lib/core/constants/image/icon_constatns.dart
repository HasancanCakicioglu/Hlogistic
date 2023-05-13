import 'package:hlogistic/core/constants/enum/image_enum.dart';

class IconConstants {
  static IconConstants? _instace;

  static IconConstants get instance => _instace ??= IconConstants._init();

  IconConstants._init();



  static String toPng(String name,FileFormat fileFormat) => 'assets/icon/$name${fileFormat.format}';
  
}

