import 'package:app/src/controller/home_controller.dart';
import 'package:flutter/material.dart';

class ShowEditTaskWidget extends StatefulWidget {
  final HomeController controller;

  const ShowEditTaskWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<ShowEditTaskWidget> createState() => _ShowEditTaskWidgetState();
}

class _ShowEditTaskWidgetState extends State<ShowEditTaskWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.width * 0.9,
      child: Form(
        key: widget.controller.formKey,
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
                controller: widget.controller.titleTaskController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira um titulo válido';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 16),
              const Text('Descrição:'),
              const SizedBox(height: 8),
              TextFormField(
                controller: widget.controller.descriptionTaskController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor insira uma descrição válida';
                  }
                  return null;
                },
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
                          widget.controller.dateTime = newDate;
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
                          widget.controller.timeOfDay = newTime;
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
                    visible: widget.controller
                        .showInitialDate(widget.controller.dateTime),
                    child: Text(
                      widget.controller.formatedDate(),
                    ),
                  ),
                  const SizedBox(width: 12),
                  Visibility(
                    visible: widget.controller
                        .showInitialTime(widget.controller.timeOfDay),
                    child: Text(widget.controller.formatedTime()),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    widget.controller.saveTask();
                    Navigator.pop(context);
                  });
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
