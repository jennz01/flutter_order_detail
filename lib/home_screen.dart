import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEDF2F7),
      appBar: AppBar(
        backgroundColor: Color(0xFFEDF2F7),
        leading: Container(
            child: Icon(
          Icons.close,
          color: Colors.black,
        )),
        title: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'PO-12345678',
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Spacer(),
              Container(
                padding: EdgeInsets.all(3),
                child: Text(
                  'Awaiting delivery',
                  style: TextStyle(
                    color: Color(0xFF0E605C),
                    fontSize: 14,
                  ),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Color(0xFF02C2BD)),
                  color: Color(0xFFE5FAF9),
                ),
              )
            ],
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            padding: EdgeInsets.zero,
            icon: Icon(
              Icons.more_vert,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(32),
            child: CardWidget(),
          ),
          Spacer(),
          BottomCalculationWidget(),
        ],
      ),
    );
  }
}

class BottomCalculationWidget extends StatelessWidget {
  const BottomCalculationWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 107,
      color: Colors.white,
      child: Center(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: TextButton(
                    style: TextButton.styleFrom(),
                    onPressed: () {
                      print('Pressed');
                    },
                    child: Text(
                      "Show details",
                      style: TextStyle(
                        color: Color(0xFF1F72C4),
                        decoration: TextDecoration.underline,
                        fontSize: 10,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'Estimated grand total',
                  style: TextStyle(
                      color: Color(0xFF718096),
                      fontSize: 18,
                      fontWeight: FontWeight.w400),
                ),
                Spacer(),
                Text(
                  '1279.00',
                  style: TextStyle(
                      color: Color(0xFF4A5568),
                      fontSize: 24,
                      fontWeight: FontWeight.w700),
                )
              ],
            ),
            Row(
              children: [
                Text(
                  'including tax & discount',
                  style: TextStyle(
                      color: Color(0xFFA0AEC0),
                      fontSize: 9,
                      fontWeight: FontWeight.w600),
                ),
                Spacer(),
                Text(
                  'Malaysian Ringgit (MYR)',
                  style: TextStyle(
                      color: Color(0xFFA0AEC0),
                      fontSize: 9,
                      fontWeight: FontWeight.w400),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class CardWidget extends StatelessWidget {
  const CardWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
                color: Colors.black12,
                offset: Offset(0, 2),
                blurRadius: 6.0,
                spreadRadius: 0)
          ],
          border: Border.all(color: Colors.black26, width: 1)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text('Chicken Thigh'),
          SizedBox(
            height: 4,
          ),
          Text('SKU-123123123'),
          SizedBox(
            height: 16,
          ),
          Row(
            children: [
              Column(
                children: [Text("Ordered Qty"), Text("500")],
              ),
              Column(
                children: [Text("UOM"), Text("PCS")],
              ),
              Column(
                children: [Text("Est Unit Price (RM)"), Text("1.2500")],
              ),
              Column(
                children: [
                  Text("Est Total (RM)"),
                  Text("625.00"),
                  Text("including tax & discount")
                ],
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            'This is an order remark. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla efficitur malesuada dapibus.',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(
            height: 16,
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              "Show details",
              style: TextStyle(decoration: TextDecoration.underline),
            ),
          )
        ],
      ),
    );
  }
}
