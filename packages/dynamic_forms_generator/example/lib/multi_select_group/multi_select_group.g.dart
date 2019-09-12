// GENERATED CODE - DO NOT MODIFY BY HAND

import '../components.dart';
import 'package:meta/meta.dart';

class MultiSelectGroup<TMultiSelectChoice extends MultiSelectChoice> extends FormElement {
  static const String choicesPropertyName = "choices";

  List<TMultiSelectChoice> get choices => properties[choicesPropertyName].value;
  Stream<List<TMultiSelectChoice>> get choicesChanged => properties[choicesPropertyName].valueChanged;

  void fillMultiSelectGroup({
    @required String id,
    @required ElementValue<FormElement> parent,
    @required ElementValue<bool> isVisible,
    @required ElementValue<List<TMultiSelectChoice>> choices,
  }) {
    fillFormElement(
      id: id,
      parent: parent,
      isVisible: isVisible,
    );
    registerElementValue(choicesPropertyName, choices);
  }

  @override
  FormElement getInstance() {
    return MultiSelectGroup();
  }
}