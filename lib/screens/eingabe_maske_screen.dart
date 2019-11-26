import 'package:flutter/material.dart';
import 'package:flutter_auto_verbrauchs_app/widgets/daten_form_widget.dart';

class EingabeMaskeScreen extends StatefulWidget {
  @override
  _EingabeMaskeScreenState createState() => _EingabeMaskeScreenState();
}

class _EingabeMaskeScreenState extends State<EingabeMaskeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Eingabemaske"),
      ),
      body: DatenFormWidget(),
    );
  }
}
