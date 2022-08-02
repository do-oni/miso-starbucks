import 'package:flutter/material.dart';
import 'package:miso_starbucks/miso/miso.dart';

class MisoSecondPage extends StatelessWidget {
  const MisoSecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 기기 높이의 %로 주어야 각 기기별로 적절한 위치에 배치할 수 있음.
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                  Text(
                    "예약내역",
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 32,
                    ),
                  ),
                  SizedBox(height: 64),
                  Row(
                    children: [
                      Icon(Icons.error, color: misoPrimaryColor),
                      SizedBox(width: 8),
                      // 폰의 폭과 관계없이 텍스트를 언제나 한 줄로 보여주기
                      Expanded(
                          child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          "예약된 서비스가 아직 없어요. 지금 예약해보세요!",
                          style: TextStyle(fontSize: 100 // 아무리 커도 한 줄로 보임.
                              ),
                        ),
                      )),
                    ],
                  ),
                  Divider(color: Colors.grey),
                ],
              ),
            ),
            Positioned(
              bottom: 18,
              left: 24,
              right: 24,
              child: GestureDetector(
                onTap: () {
                  print("예약하기 클릭됨");
                },
                child: Container(
                  width: double.infinity,
                  height: 58,
                  color: misoPrimaryColor,
                  alignment: Alignment.center,
                  child: Text(
                    "예약하기",
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    ));
  }
}
