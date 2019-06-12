import 'package:dynamic_forms/dynamic_forms.dart';
import 'package:dynamic_forms/src/form_elements/form_group.dart';
import 'package:expression_language/expression_language.dart';
import 'package:meta/meta.dart';

class Form extends FormGroup {
  void fillForm(
      {@required String id,
      @required ElementValue<bool> isVisible,
      @required ElementValue<List<ExpressionProviderElement>> children,
      @required ElementValue<String> name}) {
    fillFormGroup(
        id: id,
        parent: null,
        isVisible: isVisible,
        children: children,
        name: name);
  }
}