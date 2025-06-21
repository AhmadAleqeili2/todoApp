  import 'package:APP2323/feature/todo/presentation/widgets/add_todo/text_form_field.dart';
import 'package:flutter/material.dart';

Widget buildBody(BuildContext context,_formKey,_task) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: textFormField(_task),
            ),
          ],
        ),
      ),
    );
  }