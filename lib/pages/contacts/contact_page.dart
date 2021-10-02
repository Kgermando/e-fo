import 'package:flutter/material.dart';
import 'package:focad/constants/responsive.dart';
import 'package:focad/pages/contacts/components/forms._contact.dart';
import 'package:focad/pages/contacts/components/infos_contact.dart';

class ContactPage extends StatelessWidget {
  const ContactPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.only(bottom: 20.0, top: 20.0),
          decoration: const BoxDecoration(
            border: Border(
              bottom: BorderSide(width: 1.0, color: Color(0xFFffa302)),
            ),
          ),
          child: const Text(
            'CONTACT',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 20.0,
        ),
        Expanded(
          child: (Responsive.isDesktop(context))
              ? Row(
                  children: const [
                    Expanded(child: InfosContact()),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(child: FormsContact())
                  ],
                )
              : Column(
                children: const [
                  Expanded(child: FormsContact()),
                  SizedBox(
                    height: 20.0,
                  ),
                  // Expanded(child: InfosContact())
                ],
              ),
        ),
      ]),
    );
  }
}
