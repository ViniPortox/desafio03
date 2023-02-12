import 'package:app/src/controller/controller.dart';
import 'package:flutter/material.dart';

class NewTaskWidget extends StatefulWidget {
  final Controller controller;

  const NewTaskWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  @override
  State<NewTaskWidget> createState() => _NewTaskWidgetState();
}

class _NewTaskWidgetState extends State<NewTaskWidget> {
  final formKey = GlobalKey<FormState>();
  TextEditingController titleTaskController = TextEditingController();
  TextEditingController descriptionTaskController = TextEditingController();
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
                      widget.controller.newDate = await showDatePicker(
                        context: context,
                        initialDate: DateTime.now(),
                        firstDate: DateTime(2006),
                        lastDate: DateTime(2026),
                      );
                      if (widget.controller.newDate != null) {
                        setState(() {
                          widget.controller.dateTime =
                              widget.controller.newDate!;
                        });
                      }
                    },
                    child: const Text('escolha a data'),
                  ),
                  const SizedBox(width: 20),
                  ElevatedButton(
                    onPressed: () async {
                      widget.controller.newTime = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (widget.controller.newTime != null) {
                        setState(() {
                          widget.controller.timeOfDay =
                              widget.controller.newTime!;
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
                  if (widget.controller.formKey.currentState!.validate()) {
                    setState(() {
                      widget.controller.saveTask();
                    });
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Adicionando tarefa...'),
                        duration: Duration(seconds: 2),
                      ),
                    );
                    Navigator.pop(context);
                  }
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
