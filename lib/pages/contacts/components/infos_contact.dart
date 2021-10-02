import 'dart:async';

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:focad/pages/contacts/components/map_contact.dart';

class InfosContact extends StatefulWidget {
  const InfosContact({ Key? key }) : super(key: key);

  @override
  State<InfosContact> createState() => _InfosContactState();
}

class _InfosContactState extends State<InfosContact> {

   // ignore: unused_field
   Future<void>? _launched;
  final String _phone = '+243813530838';

  Future<void> _makePhoneCall(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.location_city, size: 40, color: Colors.amber,),
            title: Text(
              'Adresse',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'Boulvard 30juin N° 4521, Kinshasa, RD Congo',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              maxLines: 4,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          const ListTile(
            leading: Icon(
              Icons.email,
              size: 40,
              color: Colors.amber,
            ),
            title: Text(
              'Email',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: Text(
              'contact@fokad.com',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              maxLines: 4,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),
          ListTile(
            leading: IconButton(
              icon: const Icon(Icons.phone),
              iconSize: 40,
              color: Colors.amber,
              onPressed: () => setState(() {
                _launched = _makePhoneCall('tel:$_phone');
              }),
            ),
            title: const Text(
              'Téléphone',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            subtitle: const Text(
              '+243 81 000 00 00',
              textAlign: TextAlign.start,
              overflow: TextOverflow.visible,
              maxLines: 4,
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ),

          const SizedBox(height: 30.0,),
          const Expanded(
            child: MapContact(),
          )
        ],
      ),
    );
  }
}
