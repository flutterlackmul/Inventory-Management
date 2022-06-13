import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
class DealerDetail extends StatefulWidget {
  final  Dealer DealersDetail;
  final int? DealerId;
  const DealerDetail({Key? key, required this.DealersDetail, required this.DealerId}) : super(key: key);

  @override
  State<DealerDetail> createState() => _DealerDetailState();
}

class _DealerDetailState extends State<DealerDetail> {

  @override
  Widget build(BuildContext context) {
    var dealerDetailInfo = widget.DealersDetail;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Dealer Details"),
      ),
      body: SingleChildScrollView(
        child:
          Column(
            children: [
              Card(
                child: ListTile(
                  title:  Text("Dealer Information of ID No ${widget.DealerId}"),
                ),
              ),
              Card(
                child: ListTile(
                  title: const Text("Dealer Id"),
                  subtitle: Text(dealerDetailInfo.dealerId.toString()),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Dealer Code"),
                  subtitle: Text(dealerDetailInfo.dealerCode.toString()),
                ),
              ),
              Card(
                child: ListTile(
                  title: Text("Dealer Name"),
                  subtitle: Text(dealerDetailInfo.dealerName.toString()),
                ),
              ),
              ListTile(
                title: Text("Dealer Address"),
                subtitle: Text(dealerDetailInfo.dealerAddress.toString()),
                isThreeLine: true,
              ),
              ListTile(
                title: Text("Dealer Mobile No"),
                subtitle: Text(dealerDetailInfo.mobileNo.toString()),
              ),
              ListTile(
                title: Text("Region Id"),
                subtitle: Text(dealerDetailInfo.regionId.toString()),
              ),
              ListTile(
                title: Text("Region Name"),
                subtitle: Text(dealerDetailInfo.regionName.toString()),
              ),
              ListTile(
                title: Text("Base Id"),
                subtitle: Text(dealerDetailInfo.baseId.toString()),
              ),
              ListTile(
                title: Text("Base Name"),
                subtitle: Text(dealerDetailInfo.baseName.toString()),

              ),
            ],
          )

      ),
    );
  }
}
