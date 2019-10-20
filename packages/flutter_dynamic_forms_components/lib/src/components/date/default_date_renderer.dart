import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_dynamic_forms/flutter_dynamic_forms.dart';
import 'package:intl/intl.dart';

import 'date.g.dart' as model;

class DefaultDateRenderer extends FormElementRenderer<model.Date> {
  @override
  Widget render(
      model.Date element,
      BuildContext context,
      FormElementEventDispatcherFunction dispatcher,
      FormElementRendererFunction renderer) {
    final format = new DateFormat(element.format);
    final time = element.dateValue.length != 0
        ? DateTime.parse(element.dateValue)
        : DateTime.now();
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: TextField(
          decoration: InputDecoration(
            hintText: format.format(time),
          ),
          onTap: () async {
            FocusScope.of(context).requestFocus(FocusNode());

            final DateTime picked = await showDatePicker(
              context: context,
              firstDate: DateTime(2000),
              lastDate: DateTime(2100),
              initialDate: DateTime.now(),
            );

            if (picked != null) {
              dispatcher(
                ChangeValueEvent(
                  value: picked.toString(),
                  elementId: element.id,
                  propertyName: model.Date.dateValuePropertyName,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}