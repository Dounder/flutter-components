import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  void displayDialogIos(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
            title: const Text('Titulo'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Este el contenido de la alerta'),
                SizedBox(height: 10),
                FlutterLogo(size: 100),
              ],
            ),
            actions: [
              TextButton(
                child:
                    const Text('Cancelar', style: TextStyle(color: Colors.red)),
                onPressed: () => Navigator.pop(context),
              ),
              TextButton(
                child: const Text('Ok'),
                onPressed: () => Navigator.pop(context),
              ),
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return AlertDialog(
          elevation: 5,
          title: const Text('Titulo'),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Este el contenido de la alerta'),
              SizedBox(height: 10),
              FlutterLogo(size: 100),
            ],
          ),
          actions: [
            TextButton(
              child: const Text(
                'Cancelar',
                style: TextStyle(color: Colors.red),
              ),
              onPressed: () => Navigator.pop(context),
            ),
            TextButton(
              child: const Text('Ok'),
              onPressed: () => Navigator.pop(context),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Text('Mostrar alerta', style: TextStyle(fontSize: 16)),
          ),
          // onPressed: () => displayDialogAndroid(context),
          onPressed: () => Platform.isAndroid
              ? displayDialogAndroid(context)
              : displayDialogIos(context),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}
