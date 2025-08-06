import 'package:di/data_module_injection.dart';
import 'package:di/domain_module_injection.dart';

Future<void> initDi() async {
  initData();
  initDomain();
}
