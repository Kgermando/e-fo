import 'package:flutter/material.dart';
import 'package:focad/pages/homes/components/mecanisme_dev.dart';
import 'package:focad/pages/homes/components/team_home.dart';
import 'package:focad/pages/homes/components/text_home_header.dart';
import 'package:focad/pages/homes/components/mission.dart';
import 'package:focad/pages/homes/components/youtube_api_home.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: const [
            TextHomeHeader(),
            SizedBox(
              height: 20.0,
            ),
            Mission(),
            // SizedBox(height: 20.0,),
            MecanismeDev(),
            // SizedBox(
            //   height: 20.0,
            // ),
            // YoutubeApiHome(),
            TeamHome(),
            SizedBox(
              height: 20.0,
            ),
          ],
        ),
      ),
    );
  }
}
