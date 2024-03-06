import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:mobile_kamus/models/model_kosakata.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {

  Future<List<Datum>?> getKosakata() async{
    try{
      http.Response res = await http.get(Uri.parse('http://192.168.1.112/kosakataDb/getKosakata.php'));
      return modelKosakataFromJson(res.body).data;
    }catch(e){
      setState(() {
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text(e.toString()))
        );
      });
    }
  }

  //proses do in background
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getKosakata();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vocabulary '),
        backgroundColor: Colors.cyan,
      ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(

          child: FutureBuilder(
            future: getKosakata(),
            builder: (BuildContext context, AsyncSnapshot<List<Datum>?> snapshot){
              if(snapshot.hasData){
                return ListView.builder(
                  itemCount: snapshot.data?.length,
                  itemBuilder: (context, index){
                    Datum? data = snapshot.data?[index];
                    return Padding(
                      padding: EdgeInsets.all(8),
                      child: GestureDetector(
                        // onTap: (){
                        //   Navigator.push(context, MaterialPageRoute(builder: (context)
                        //   => PageDetailBerita(data)
                        //   ));
                        // },
                        child: Card(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              ListTile(
                                title: Text("${data?.kosa_kata}",
                                  style: TextStyle(
                                      color: Colors.green,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                subtitle: Text("${data?.arti}",
                                  maxLines: 2,
                                  style: TextStyle(
                                      fontSize: 10,
                                      color: Colors.black54
                                  ),
                                ),

                              )
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                );
              }else if (snapshot.hasError){
                return Center(
                  child: Text(snapshot.error.toString()),
                );
              }else{
                return const Center(
                  child: CircularProgressIndicator(
                    color: Colors.orange,
                  ),
                );
              }
            },
          ),
        ),
      ),
    );
  }

}

