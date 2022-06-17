import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
import 'package:flutter_api_application/Model/products_model.dart';
import 'package:flutter_api_application/View/Screens/Getx/getx_ui.dart';
import 'package:flutter_api_application/View/Screens/new_primary_order_ui.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_api_application/Controller/Api_Controller.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_api_application/util/ui_components/ui_components.dart';

import '../../util/common_util.dart';
import 'dealers.dart';
import 'package:get/get.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var dealerData;
  var productData;

  Future<DealersInfo> getDealerData() async
  {
    dealerData = await ApiController().getDealerInfo();
    return dealerData ;
  }
Future<ProductsModel?>getProductInfo() async {
    productData = await ApiController().getProductInfo();
}

  @override
  void initState()
   {
    super.initState();
    getDealerData();
    getProductInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard"),),

body:  Stack(
  fit: StackFit.expand,
  children: [
    Image.asset("assets/img1.jpg",
      fit: BoxFit.cover,
      color: Colors.black.withOpacity(0.7),
      colorBlendMode: BlendMode.darken,
    ),
  Center(
    child: SizedBox(
      width: 400,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,

        children: [
          ElevatedButton(onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>UiComponents()));
          }, child: Text("UI Components",style: TextStyle(fontSize: 25,)),
            style: ElevatedButton.styleFrom(
              primary: Colors.deepOrange,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            )
            // ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(onPressed: (){
            if(dealerData == null)
            {
            CommonUtil().showToast(context,'No Dealer Found!');
            }
            else if(productData == null )
            {
              CommonUtil().showToast(context,'No Product Found!');
            }
            else {
              Get.to(NewPrimaryOrderUi(dealersInfo:dealerData,productInfo:productData));
            }
          }, child: Text("Primary Order",style: TextStyle(fontSize: 25,)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Secondary Order",style: TextStyle(fontSize: 25,)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(onPressed:() async{
            //print(GetStorage().read('locationId'));
           // DealersInfo? dealerInfo = await ApiController().getDealerInfo();
             if(dealerData == null)
               {
                  CommonUtil().showToast(context,'No Dealer Found!');
               }
             else
               {
                 var exampleArgument = 'example string';
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>Dealers(dealersInfo:dealerData ,)));
                 // Navigator.pushNamed(
                 //   context,
                 //   '/otherscreen',
                 //   arguments: {'exampleArgument': exampleArgument},
                 //);
               }
          }, child: Text("Dealer Info",style: TextStyle(fontSize: 25,)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(onPressed: (){}, child: Text("Retailer Info",style: TextStyle(fontSize: 25,)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
          ElevatedButton(onPressed: (){
            Get.to(GetxUi());
          }, child: Text("Getx Example",style: TextStyle(fontSize: 25,)),
            style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.green)),
          ),
        ],
      ),
    ),
  ),
    ],
)

    );
    CommonUtil().showToast(context, 'Login Success');
  }
}
