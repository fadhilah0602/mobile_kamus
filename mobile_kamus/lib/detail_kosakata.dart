import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mobile_kamus/models/model_kosakata.dart';

class PageDetailKosakata extends StatelessWidget {
  final Datum? data;

  const PageDetailKosakata(this.data, {super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(data!.kosa_kata),
        backgroundColor: Colors.cyan,
      ),

      body: ListView(
        children: [

          ListTile(
            title: Text(data?.kosa_kata ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16
              ),
            ),
            subtitle: Text(DateFormat().format(data?.created_at ?? DateTime.now())),
            trailing: Icon(Icons.star, color: Colors.orange,),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: Text(
              data?.arti ?? "",
              style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold
              ),
            ),
          )
        ],
      ),
    );
  }
}
