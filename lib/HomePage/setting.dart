import 'package:flutter/material.dart';
import 'package:mrcp/Constant.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _mcqDisplay = false;
  bool _darkTheme = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Settings"),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Mcq display", style: Colour().title),
            subtitle: Text(
              "Enable or disable scrolling mcq display",
              style: Colour().subTitle,
            ),
            trailing: Switch(
              value: _mcqDisplay,
              onChanged: (bool value) {
                setState(() {
                  _mcqDisplay = value;
                });
              },
            ),
          ),
          ListTile(
            title: Text("Dark Theme", style: Colour().title),
            subtitle: Text(
              "Enable or disable dark theme(if supported)",
              style: Colour().subTitle,
            ),
            trailing: Switch(
              value: _darkTheme ,
              onChanged: (bool value) {
               setState(() {
                 _darkTheme  = value;
               });
              },

            ),
          )
        ],
      ),
    );
  }
}
