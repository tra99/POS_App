import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: Color(0xFFCDD5E0),
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 10,right: 2,top: 20,bottom: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset("lib/images/basket.jpg",width: 80,),
                    const Column(
                      children: [
                        Text("ស្ថិតិការលក់"),
                        Text("220,846,500 ៛"),
                        Row(
                          children: [
                            Icon(Icons.control_point_rounded),
                            Text("35% កើនឡើងធៀបនឹងសប្តាហ៍មុន។"),
                          ],
                        ),
            
                      ],
                    ),
                    Expanded(
                      child: Container(                     
                        decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(6)
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Row(
                            children: [
                              Text("ថ្ងៃនេះ"),
                              Icon(Icons.calendar_month_outlined)
                            ],
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}