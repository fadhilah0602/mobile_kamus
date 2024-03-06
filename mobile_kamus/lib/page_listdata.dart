import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'models/model_kosakata.dart';

class PageSearchListData extends StatefulWidget {
  const PageSearchListData({super.key});

  @override
  State<PageSearchListData> createState() => _PageSearchListDataState();
}

class _PageSearchListDataState extends State<PageSearchListData> {

  List<ModelKosakata> listKosakata = [];
  bool isCari = true;
  bool isLoading = false;
  TextEditingController txtCari = TextEditingController();

  //bikin method untuk get kosakata
  Future getUser() async{
    try{
      setState(() {
        isLoading = true;
      });
      http.Response res = await http.get(Uri.parse('http://localhost/kosakataDb/getKosakata.php'));
      var data = jsonDecode(res.body);
      setState(() {
        for(Map<String, dynamic> i in data){
          listKosakata.add(ModelKosakata.fromJson(i));
        }
      });

    }catch (e){
      setState(() {
        isLoading = false;
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString()))
        );
      });
    }
  }

  _PageSearchListDataState(){
    txtCari.addListener(() {
      if(txtCari.text.isEmpty){
        setState(() {
          isCari = true;
          txtCari.text = "";
        });
      }else{
        setState(() {
          isCari = false;
          txtCari.text != "";
        });
      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Vocabulary'),
      ),


      body: ListView.builder(
        itemCount: listKosakata.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: txtCari,
                  decoration: InputDecoration(
                      hintText: "Search Data",
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none
                      ),
                      filled: true,
                      fillColor: Colors.green.withOpacity(0.1)
                  ),
                ),
                //kondisi
                isCari ?
                Expanded(child: ListView.builder(
                    itemCount: listKosakata.length,
                    itemBuilder: (context, index){
                      return ListTile(
                        title: Text(listKosakata[index] as String),
                      );

                    })) : CreateFilterList()
              ],
            ),
          );
        },
      )


    );
  }

  Widget CreateFilterList(){
    // listKosakata = [];
    // for(int i =0; i<listKosakata.length; i++){
    //   var item = listKosakata[i];
    //   if(item.toLowerCase().contains(txtCari.text.toLowerCase())){
    //     listKosakata.add(item);
    //   }
    // }
    return HasilSearch();
  }

  Widget HasilSearch(){
    return Expanded(
      child: ListView.builder(
        itemCount: listKosakata.length,
        itemBuilder: (context, index){
          return ListTile(
            title: Text(listKosakata[index] as String),
          );
        },
      ),
    );
  }
}
