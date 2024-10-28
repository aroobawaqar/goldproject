import 'package:flutter/material.dart';

class Goldappscreen extends StatefulWidget {
  const Goldappscreen({super.key});

  @override
  State<Goldappscreen> createState() => _GoldappscreenState();
}

class _GoldappscreenState extends State<Goldappscreen> {
  TextEditingController TolaPriceController = TextEditingController();
  TextEditingController TolaQuantityController = TextEditingController();
  TextEditingController mashaQuantityController = TextEditingController();
  TextEditingController ratiQuantityController = TextEditingController();
  TextEditingController pointsController = TextEditingController();
  double totalPrice = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Gold App', style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,),),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 20, bottom: 20),
              height: 20,
              width: 120,
              color:Colors.white,
              child:Text('Arooba Waqar', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20,
              ),
              ),
            ),
            // Tola Price Input
            Padding(
              padding: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 20),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Tola Price', style: TextStyle(color: Colors.lightGreen),),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    margin: EdgeInsets.only(left: 20),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: TolaPriceController,
                        style: TextStyle(color: Colors.lightGreen),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.lightGreen),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Tola Quantity Input
            Padding(
              padding:
              EdgeInsets.only(left: 40, right: 40, top:5, bottom:5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Tola Quantity', style: TextStyle(color: Colors.green),),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: TolaQuantityController,
                        style: TextStyle(color: Colors.lightGreen),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.lightGreen),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Masha Quantity Input
            Padding(
              padding:
              EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Masha Quantity', style: TextStyle(color: Colors.green),),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: mashaQuantityController,
                        style: TextStyle(color: Colors.green),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.lightGreen),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Rati Quantity Input
            Padding(
              padding:
              EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Rati Quantity', style: TextStyle(color: Colors.green),),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: ratiQuantityController,
                        style: TextStyle(color: Colors.lightGreen),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.lightGreen),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Points Input
            Padding(
              padding:
              EdgeInsets.only(left: 40, right: 40, top: 5, bottom: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Enter Points', style: TextStyle(color: Colors.green),),
                  SizedBox(height: 10),
                  Container(
                    height: 40,
                    width: 250,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.green),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: TextFormField(
                        controller: pointsController,
                        style: TextStyle(color: Colors.lightGreen),
                        keyboardType: TextInputType.number,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintStyle: TextStyle(color: Colors.green),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // Total Price Display
            Text('Total Price = $totalPrice', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontSize: 18),),
            // Calculate Button
            GestureDetector(
              onTap: () {
                if (TolaPriceController.text == '') {
                  TolaPriceController.text = '0';
                }
                if (TolaQuantityController.text == '') {
                  TolaQuantityController.text = '0';
                }
                if (mashaQuantityController.text == '') {
                  mashaQuantityController.text = '0';
                }
                if (ratiQuantityController.text == '') {
                  ratiQuantityController.text = '0';
                }
                if (pointsController.text == '') {
                  pointsController.text = '0';
                }

                double TolaPrice = double.parse(TolaPriceController.text);
                double TolaQuantity = double.parse(TolaQuantityController.text);
                double mashaQuantity =
                double.parse(mashaQuantityController.text);
                double ratiQuantity =
                double.parse(ratiQuantityController.text);
                double points = double.parse(pointsController.text);

                double totalPriceTola = TolaPrice * TolaQuantity;
                double pricePerMasha = totalPriceTola / 12;
                double totalPriceMasha = pricePerMasha * mashaQuantity;
                double pricePerRati = totalPriceTola / 96;
                double totalPriceRati = pricePerRati * ratiQuantity;
                double pointsPerTola = totalPriceTola / 320;
                double totalPoints = pointsPerTola * points;

                totalPrice = totalPriceTola +
                    totalPriceMasha +
                    totalPriceRati +
                    totalPoints;

                setState(() {});
              },
              child: Container(
                margin: EdgeInsets.only(top: 20, bottom: 20),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.green,
                ),
                child: Center(
                  child: Text('Calculate', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),),),
              ),
            ),
            // Footer Text: Your name
       Container(
         margin: EdgeInsets.only(top: 20, bottom: 20),
         height: 20,
         width: 120,
         color:Colors.white,
         child:Text('Arooba Waqar', style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic, fontSize: 20,
         ),
         ),
       ),
  ]),
    ),
    );
  }
}
