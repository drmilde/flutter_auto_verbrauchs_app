import 'package:flutter/material.dart';
import 'package:flutter_auto_verbrauchs_app/model/data_model.dart';
import 'package:flutter_auto_verbrauchs_app/model/verbrauch_rechner.dart';

class DatenFormWidget extends StatefulWidget {
  @override
  _DatenFormWidgetState createState() => _DatenFormWidgetState();
}

class _DatenFormWidgetState extends State<DatenFormWidget> {
  final TextEditingController _markeController = TextEditingController();
  final TextEditingController _verbrauchController = TextEditingController();
  final TextEditingController _jahresController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Form(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _markeController,
                      decoration: InputDecoration(
                          labelText: 'Automarke',
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _verbrauchController,
                      decoration: InputDecoration(
                          labelText: 'Verbrauch',
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _jahresController,
                      decoration: InputDecoration(
                          labelText: 'Jahreskilometer',
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                            borderSide: new BorderSide(),
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 200,
            ),
            RaisedButton(
              onPressed: () {
                DataModel.vr.verbrauch =
                    double.parse(_verbrauchController.text);
                DataModel.vr.kilometer = double.parse(_jahresController.text);
                DataModel.vr.calculate();
              },
              child: Text("ok"),
            ),
          ],
        ),
      ),
    );
  }
}
