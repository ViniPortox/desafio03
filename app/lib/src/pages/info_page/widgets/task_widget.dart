import 'package:app/src/controller/home_controller.dart';
import 'package:flutter/material.dart';


class ShowEditTaskWidget extends StatefulWidget {
  const ShowEditTaskWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<ShowEditTaskWidget> createState() => _ShowEditTaskWidgetState();
}

class _ShowEditTaskWidgetState extends State<ShowEditTaskWidget> {
  final controller = HomeController();
  TimeOfDay timeOfDay = const TimeOfDay(hour: 25, minute: 59);
  DateTime dateTime = DateTime(2025);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.width * 0.9,
      child: Form(
        key: controller.formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Titulo:'),
              const SizedBox(height: 8),
              TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Por favor insira um titulo válido';
                    }
                    return null;
                  },
                  controller: controller.titleTaskController,),
              const SizedBox(height: 16),
              const Text('Descrição:'),
              const SizedBox(height: 8),
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira uma descrição válida';
                  }
                  return null;
                },
                controller: controller.descriptionTaskController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(16),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () async {
                      final newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2006),
                        lastDate: DateTime(2026),
                      );
                      if (newDate != null) {
                        setState(() {
                          dateTime = newDate;
                        });
                      }
                    },
                    child: const Text('escolha a data'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      final newTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (newTime != null) {
                        setState(() {
                          timeOfDay = newTime;
                        });
                      }
                    },
                    child: const Text('escolha as horas'),
                  )
                ],
              ),
              const SizedBox(height: 24),
              Row(
                children: [
                  Visibility(
                      visible: controller.showInitialDate(dateTime),
                      child: Text(
                          '${dateTime.day}/${dateTime.month}/${dateTime.year}',),),
                  const SizedBox(width: 12),
                  Visibility(
                      visible: controller.showInitialTime(timeOfDay),
                      child: Text('${timeOfDay.hour}:${timeOfDay.minute}'),),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  setState(controller.saveTask);
                  Navigator.pop(context);
                },
                child: const Text('Salvar'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
