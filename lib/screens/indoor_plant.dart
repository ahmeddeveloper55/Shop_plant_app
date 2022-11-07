import 'package:flutter/material.dart';
import 'package:plant_app_ui/Provider/greenProvider.dart';
import 'package:plant_app_ui/Provider/indoorProvider.dart';
import 'package:plant_app_ui/model/greenModel.dart';
import 'package:plant_app_ui/model/indoormodel.dart';
import 'package:plant_app_ui/screens/detail.dart';
import 'package:plant_app_ui/screens/indoor_Details.dart';
import 'package:provider/provider.dart';

class indoor_plant extends StatefulWidget {
  final Title;

  const indoor_plant({this.Title});
  @override
  State<indoor_plant> createState() => _indoor_plantState();
}

class _indoor_plantState extends State<indoor_plant> {
  static List<indoormodel> _list1 = [];
  @override
  void initState() {
    super.initState();
    final providermodel = Provider.of<indoorProvider>(context, listen: false);
    providermodel.getAllIndoorPlants(_list1);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              IconButton(
                icon: Icon(Icons.search, size: 30),
                onPressed: () {},
              )
            ],
          ),
          Text(widget.Title,
              style: TextStyle(color: Colors.grey, fontSize: 17)),
          SizedBox(height: 7),
          Text(
            'Plants',
            style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: _list1.length,
                itemBuilder: (_, index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => indoor_Details(
                            plant1: _list1[index],
                          ),
                        ),
                      );
                    },
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Hero(
                            tag: _list1[index].title,
                            child: Image.network(_list1[index].image),
                          ),
                          SizedBox(height: 10),
                          Text(
                            _list1[index].title,
                            style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            _list1[index].discription,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 16,
                            ),
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Text(
                                "\$${_list1[index].price}",
                                style: TextStyle(
                                  fontSize: 35,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextButton(
                                child: Text(
                                  "+",
                                  style: TextStyle(fontSize: 22),
                                ),
                                onPressed: () {},
                              )
                            ],
                          ),
                          SizedBox(height: 30),
                          Divider(),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
