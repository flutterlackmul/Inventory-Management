import 'package:flutter/material.dart';
import 'package:flutter_api_application/Model/products_model.dart';
import 'package:flutter_api_application/util/mydropdown.dart';
import 'package:get/get.dart';
import 'package:flutter_api_application/util/common_util.dart';
import 'package:flutter_api_application/Model/dealer_info.dart';
import 'package:get_storage/get_storage.dart';
class NewPrimaryOrderUi extends StatefulWidget {
final DealersInfo dealersInfo;
final ProductsModel productInfo;
  const NewPrimaryOrderUi({Key? key, required this.dealersInfo,required this.productInfo}) : super(key: key);

  @override
  State<NewPrimaryOrderUi> createState() => _NewPrimaryOrderUiState();
}

class _NewPrimaryOrderUiState extends State<NewPrimaryOrderUi> {

  @override
  Widget build(BuildContext context) {

    Rx<Dealer> selectedDealer = Dealer().obs;
    Rx<AllPrimaryProduct> selectedProduct = AllPrimaryProduct().obs;

    String hint = "Click to Select Dealer";
    String productHint = "Click to Select Product";
    print(widget.dealersInfo.allDealer);

    return Scaffold(
      appBar: CommonUtil().customAppbar("New Primary Order"),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
            flex: 1,
            child: Container(
              height: 100,
              width: 600,
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Select Dealer",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Obx(()=>MyDropdown().dropDownDealer(widget.dealersInfo.allDealer, selectedDealer.value, hint, (value) {
                        selectedDealer.value = value;
                      }),
                      ),

                    ],
                  )

                ],
              ),
            ),
            ),//Dealer Section
            Expanded(
              flex: 6,
              child: Container(
                height: 600,
                width: 600,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Obx(()=>MyDropdown().dropDownProduct(widget.productInfo.allPrimaryProduct, selectedProduct.value, productHint, (productValue) {
                      selectedProduct.value = productValue;
                    }),
                    ),
                    Card(
                      child: ListTile(
                        title: Text("Product Name"),
                        leading: Text("Product Quantity"),
                        subtitle: Text("Product Code"),
                        trailing: Text("Dealer price"),
                      )
                    ),
                    ElevatedButton(
                        onPressed: (){

                        },
                        child: const Text(
                          "Add Product",
                          style: TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        )
                    ),
                  ],

                )
              ),
            ),//Product Section
            Expanded(
              flex: 3,
              child: Container(
                height: 300,
                width: 600,
                color: Colors.green,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Bottom Widget"),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Stack(
                          children: <Widget>[
                            Positioned.fill(
                              child: Container(
                                decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                    colors: <Color>[
                                      Color(0xFF0D47A1),
                                      Color(0xFF1976D2),
                                      Color(0xFF42A5F5),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            TextButton(
                              style: TextButton.styleFrom(
                                padding: const EdgeInsets.all(16.0),
                                primary: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                              ),
                              onPressed: ()  {
                                 // CommonUtil().showToast(context,'No Dealer Found!');
                                   CommonUtil().showToast(context, "Dealer Id is ${selectedDealer.value.dealerId}");
                              },
                              child: const Text('Place Order'),
                            ),

                          ],
                        ),
                      ),
                    ),
                  ],
                )
              ),
            ),//Bottom Section
          ],
        ),
      ),
    );
  }
}
