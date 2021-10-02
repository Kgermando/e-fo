import 'package:flutter/material.dart';
import 'package:focad/constants/app_theme.dart';
import 'package:focad/constants/responsive.dart';

class FormsContact extends StatefulWidget {
  const FormsContact({Key? key}) : super(key: key);

  @override
  State<FormsContact> createState() => _FormsContactState();
}

class _FormsContactState extends State<FormsContact> {
  final _form = GlobalKey<FormState>();

  String? firstname;
  String? lastname;
  String? subject;
  String? message;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Card(
        margin: const EdgeInsets.all(16),
        elevation: 10.0,
        child: Form(
          key: _form,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 10.0),
                  child: Text(
                    'Envoyez votre message ici...',
                    textAlign: TextAlign.start,
                    overflow: TextOverflow.visible,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                firstNameField(),
                emailField(),
                sujetField(),
                messageField(),
                const SizedBox(
                  width: 20.0,
                ),
                saveForm()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget firstNameField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.phone,
        decoration: InputDecoration(
          labelText: 'Nom complet',
          labelStyle: const TextStyle(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Ce champs est obligatoire' : null,
        onChanged: (value) => setState(() => firstname = value.trim()),
      ),
    );
  }

  Widget emailField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          labelText: 'Email',
          labelStyle: const TextStyle(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Ce champs est obligatoire' : null,
        onChanged: (value) => setState(() => subject = value.trim()),
      ),
    );
  }

  Widget sujetField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          labelText: 'Objet',
          labelStyle: const TextStyle(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Ce champs est obligatoire' : null,
        onChanged: (value) => setState(() => subject = value.trim()),
      ),
    );
  }

  Widget messageField() {
    return Container(
      margin: const EdgeInsets.only(bottom: 20.0),
      child: TextFormField(
        keyboardType: TextInputType.text,
        maxLines: 5,
        decoration: InputDecoration(
          labelText: 'Message...',
          labelStyle: const TextStyle(),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
        ),
        validator: (value) =>
            value != null && value.isEmpty ? 'Ce champs est obligatoire' : null,
        onChanged: (value) => setState(() => message = value.trim()),
      ),
    );
  }

  Widget saveForm() {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 1.4 * (MediaQuery.of(context).size.height / 30),
          width: 5 * (MediaQuery.of(context).size.width / 10),
          margin: const EdgeInsets.only(bottom: 5),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 10),
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30.0),
                ),
              ),
              onPressed: () {
                final form = _form.currentState!;
                if (form.validate()) {
                  form.save();
                  form.reset();
                  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content:
                        const Text("Votre message a été envoyé avec succès"),
                    backgroundColor: Colors.green[700],
                  ));
                }
              },
              child: Text(
                'Soumettre',
                style: TextStyle(
                  color: Colors.white,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.height / 50,
                ),
              ))),
    ]);
  }
}
