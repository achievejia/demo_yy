import 'package:yy_demo/models/lib_resource.dart';
import 'package:yy_demo/models/resource_category.dart';
import 'package:yy_demo/redux/actions/main.dart';

class UpdateLibResources extends ActionType {
  final List<LibResource> payload;
  UpdateLibResources({this.payload}) : super(payload: payload);
}

class UpdateFiltedResources extends ActionType {
  final List<LibResource> payload;
  UpdateFiltedResources({this.payload}) : super(payload: payload);
}

class UpdateResourceCategory extends ActionType {
  final ResourceCategory payload;
  UpdateResourceCategory({this.payload}) : super(payload: payload);
}
