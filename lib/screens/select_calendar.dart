import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:datetime_picker_formfield/datetime_picker_formfield.dart';

// ...

// class BasicDateField extends StatelessWidget {
//   final format = DateFormat("yyyy-MM-dd");

//   BasicDateField({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return 
    
//     Material(
//     child: 
//       Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: <Widget>[
//       Text('Data (${format.pattern})'),
//       DateTimeField(
//         format: format,
//         onShowPicker: (context, currentValue) {
//           return showDatePicker(
//               context: context,
//               firstDate: DateTime(1900),
//               initialDate: currentValue ?? DateTime.now(),
//               lastDate: DateTime(2100));
//         },
//       ),
    
      
//     ]));
    
//   }
// }

// class BasicTimeField extends StatelessWidget {
//   final format = DateFormat("HH:mm");

//   BasicTimeField({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Column(children: <Widget>[
//       Text('Basic time field (${format.pattern})'),
//       DateTimeField(
//         format: format,
//         onShowPicker: (context, currentValue) async {
//           final time = await showTimePicker(
//             context: context,
//             initialTime: TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
//           );
//           return DateTimeField.convert(time);
//         },
//       ),
//     ]);
//   }
// }



class BasicDataTimeField extends StatefulWidget {
  const BasicDataTimeField({super.key});

  @override
  State<BasicDataTimeField> createState() => _BasicDataTimeFieldState();
}

class _BasicDataTimeFieldState extends State<BasicDataTimeField> {
    final format = DateFormat("dd-MM-yyyy HH:mm");

  @override
  Widget build(BuildContext context) {
    return Material(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
          
      Text('Data e horario (${format.pattern})'),
      SizedBox(
        width: 300,
      child: DateTimeField(
        decoration: InputDecoration(
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: const BorderSide(color: Colors.green)),
        icon: const Icon(Icons.calendar_today),
        ),
      
        format: format,
        onShowPicker: (context, currentValue) async {
          final date = await showDatePicker(
              context: context,
              firstDate: DateTime(1900),
              initialDate: currentValue ?? DateTime.now(),
              lastDate: DateTime(2100));
          if (date != null) {
            final time = await showTimePicker(
              context: context,
              initialTime:
                  TimeOfDay.fromDateTime(currentValue ?? DateTime.now()),
            );
            return DateTimeField.combine(date, time);
          } else {
            return currentValue;
          }
        },
      ),
      ),
    ]));
  }
}