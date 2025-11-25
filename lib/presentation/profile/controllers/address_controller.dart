import 'package:hooks_riverpod/hooks_riverpod.dart';

final addressListProvider = StateProvider<List<Map<String, String>>>(
  (ref) => [
    {'name': '집', 'address': '광주광역시 광산구 상무대로 312\n광주소프트웨어마이스터고등학교'},
    {'name': '가게', 'address': '광주광역시 광산구 상무대로 312\n광주소프트웨어마이스터고등학교 504호'},
  ],
);
