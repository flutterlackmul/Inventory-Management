import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
class Dealers extends StatefulWidget {
  final  DealersInfo dealersInfo;
  const Dealers({Key? key, required this.dealersInfo}) : super(key: key);

  @override
  State<Dealers> createState() => _DealersState();
}

class _DealersState extends State<Dealers> {
  @override
  Widget build(BuildContext context) {
    // final arguments = (ModalRoute.of(context)?.settings.arguments ?? <String, dynamic>{}) as Map;
    //
     print(widget.dealersInfo.allDealer?[2].dealerName);
     var listDealers = widget.dealersInfo.allDealer?? [] ;
    return Scaffold(
      appBar: AppBar(title: Text("Dealer's List"),),
      body: Container(
        height: 500,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              child: SizedBox(
                height: 50,
                child: ListTile(
                  title: Text("Dealer Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  trailing: Text("Dealer Code",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                ),
              ),
            ),

               Expanded(
                 child: Container(
                   child: ListView.builder(
                    // the number of items in the list
                      itemCount: listDealers.length,
                      // display each item of the product list

                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text("${listDealers[index].dealerName}",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 16),) ,
                          trailing: Text("${listDealers[index].dealerCode}"),
                        );
                        // return Card(
                        //   // In many cases, the key isn't mandatory
                        //   key: UniqueKey(),
                        //   child: Padding(
                        //       padding: const EdgeInsets.all(10),
                        //       child: Text("Dealer Name :  ${listDealers[index].dealerName}")
                        //   ),
                        // );
                      }),
                 ),
               ),

          ],
        ),
      ),
    );
  }
}

