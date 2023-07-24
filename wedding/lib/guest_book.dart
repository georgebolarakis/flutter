import 'package:flutter/material.dart';
import 'dart:async';

import 'package:wedding/guest_book_message.dart';

class GuestBook extends StatefulWidget {
  const GuestBook({required this.addMessage, required this.messages, super.key});

  final FutureOr<void> Function(String message) addMessage;
  final List<GuestBookMessage> messages;

  @override
  State<GuestBook> createState() => _GuestBookState();
}

class _GuestBookState extends State<GuestBook> {
  final _formKey = GlobalKey<FormState>(debugLabel: '_GuestBookState');
  final _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
        padding: const EdgeInsets.all(8),
        child: Form(
          key: _formKey,
          child: Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: _controller,
                  decoration: const InputDecoration(hintText: 'Leave a message'),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Enter your message to continue';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      await widget.addMessage(_controller.text);
                      _controller.clear();
                    }
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.send,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text('Save'),
                    ],
                  )),
            ],
          ),
        ),
      ),
      const SizedBox(
        height: 8,
      ),
      for (var mess in widget.messages) Text('${mess.name}: ${mess.message}'),
      const SizedBox(
        height: 8,
      ),
    ]);
  }
}
