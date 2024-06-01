import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

final dio = Dio();

class dioApi extends StatefulWidget {
  const dioApi({super.key});

  @override
  State<dioApi> createState() => _dioApiState();
}

class _dioApiState extends State<dioApi> {
  List data = [];

  dioGet() async {
    final response = await dio.get('https://dummyjson.com/products');
    // print(response);
    data = response.data['products'];
    setState(() {});
  }

  dioAdd() async {
    final response = await dio.post('https://dummyjson.com/products/add',
        data: {'title': 'BMW Pencil'},
        options: Options(contentType: Headers.jsonContentType));
    print(response.data);
  }

  dioDelete() async {
    final response = await dio.delete('https://dummyjson.com/products/1');
    print(response.data);
  }

  dioPut() async {
    final response = await dio.put('https://dummyjson.com/products/1',
        data: {'title': 'BMW Pencil'},
        options: Options(contentType: Headers.jsonContentType));
    print(response.data);
  }

  @override
  void initState() {
    dioGet();
    // dioAdd();
    // dioDelete();
    // dioPut();
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dio API'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  padding: const EdgeInsets.all(8),
                  itemCount: data.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      padding: EdgeInsets.all(15),
                      color: Colors.white,
                      child: Center(
                          child: Column(
                        children: [
                          Text(data[index]['title']),
                          Text(data[index]['description'])
                        ],
                      )),
                    );
                  })
            ],
          ),
        ));
  }
}
