import 'package:flutter/material.dart';

class StarbucksSecondPage extends StatelessWidget {
  const StarbucksSecondPage({Key? key}) : super(key: key);

  /// 카드 이미지
  final String cardImgUrl = "https://i.ibb.co/BgfYHg4/2021-12-16-1-49-51.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Pay",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.white,
        actions: [
          IconButton(
            onPressed: () => print("Pay 우측 상단 아이콘 클릭 됨"),
            icon: Icon(Icons.list_rounded, color: Colors.grey),
          ),
        ],
      ),
      body: Column(
        children: [
          // Card
          Expanded(
            // 스크롤 하는데 스냅이 걸려서 해당 항목이 화면 중앙에 보이는 경우 PageView 위젯을 사용함.
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.85,
              ), // 옆에 항목 살짝 보이게
              itemCount: 10,
              itemBuilder: (context, index) {
                return Container(
                  child: Image.network(cardImgUrl),
                  margin: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(2),
                    // 그림자
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.05),
                        // 광원의 위치를 중심(0, 0)보다 위쪽(0, 5)
                        offset: Offset(0, 5),
                        spreadRadius: 1,
                        blurRadius: 6,
                      ),
                    ],
                  ),
                );
              },
            ),
          ),

          // Coupon & e-Gift Item
          Container(
            height: 72,
            color: Colors.white,
            child: Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: () => print("Coupon 선택 됨"),
                    child: Text(
                      "Coupon",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: 12,
                  width: 1,
                  color: Colors.brown,
                ),
                Expanded(
                  child: TextButton(
                    onPressed: () => print("e-Gift Item 선택 됨"),
                    child: Text(
                      "e-Gift Item",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
