import 'package:flutter/material.dart';
import 'package:booking_app/widgets/thickview_container.dart';
import 'package:booking_app/widgets/ticket_container.dart';
import 'package:gap/gap.dart';
import 'package:booking_app/util/app_styles.dart';
import 'package:booking_app/util/app_layout.dart';

class Tickettabs extends StatelessWidget {
  const Tickettabs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 20),
          children: [
          const Gap(40),
      Text("Tickets " ,style: Styles.headLineStyle.copyWith(fontSize: 35)),
      const Gap(25),
      FittedBox(
        child: Container(
          padding: const EdgeInsets.all(3.5),
          child:
          Row(
            children: [
              Container(

                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(left:Radius.circular(AppLayout.getHeight(50)),),
                  color: Colors.white,
                ),
                child:Center(child: Text("Upcoming")),),
              //airline ticket

              //hotel
              Container(

                width: size.width*.44,
                padding: EdgeInsets.symmetric(vertical:AppLayout.getHeight(7),),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.horizontal(right:Radius.circular(AppLayout.getHeight(50)),),
                  color: Colors.transparent,
                ),
                child:Center(child: Text("Previous")),),



            ],


          )
          ,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xFFF4F6FD)
          ),
        ),

      ),
            const Gap(15),
            Container(

              child: Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(21),
                            topRight: Radius.circular(21))),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Text(
                              "ABJ",
                              style:
                              Styles.headLineStyle3.copyWith(color: Colors.black87),
                            ),
                            const Spacer(),
                            ThickView(),
                            Expanded(
                                child: Stack(
                                  children: [
                                    SizedBox(
                                      height: 24,
                                      child: LayoutBuilder(builder: (BuildContext context,
                                          BoxConstraints constraints) {
                                        print(
                                            "the width is ${constraints.constrainWidth()}");
                                        return Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          mainAxisSize: MainAxisSize.max,
                                          children: List.generate(
                                              (constraints.constrainWidth() / 6).floor(),
                                                  (index) => const SizedBox(
                                                width: 3,
                                                height: 1,
                                                child: DecoratedBox(
                                                  decoration: BoxDecoration(
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              )),
                                        );
                                      }),
                                    ),
                                    Center(
                                      child: Transform.rotate(
                                        angle: 1.55,
                                        child: const Icon(Icons.local_airport_rounded,
                                            color: Colors.black87),
                                      ),
                                    ),
                                  ],
                                )),
                            const ThickView(),
                            const Spacer(),
                            Text("LAG",
                                style: Styles.headLineStyle3.copyWith(color: Colors.black87)),
                          ],
                        ),
                        const Gap(3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SizedBox(
                              width: 100,child: Text('ABUJA', style: Styles.headLineStyle4.copyWith(color:Colors.black87),),

                            ) ,
                            Text("8H 3BMH",style: Styles.headLineStyle4.copyWith(color: Colors.black87),),
                            SizedBox(
                              width: 100,child: Text('LAGOS', textAlign:TextAlign.end,style:  Styles.headLineStyle4.copyWith(color:Colors.black87) ),
                            ),
                          ],
                        ),
                      ],  ) ,
                  ),
                  //blue part of the card


                  //red part of the container



                  Container(
                    height: AppLayout.getHeight(400),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(21),
                            bottomRight: Radius.circular(21))),
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      children: [
                        Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(  crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("1 MAY", style: Styles.headLineStyle3.copyWith(color:Colors.black87),),
                                const Gap(5),
                                Text("Date" ,style: Styles.headLineStyle4.copyWith(color:Colors.black87),),
                              ],
                            ) ,
                            Column(  crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color:Colors.black87),),
                                const Gap(5),
                                Text("Departure Time" ,style: Styles.headLineStyle4.copyWith(color:Colors.black87),),
                              ],
                            ) ,
                            Column(  crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Text("23", style: Styles.headLineStyle3.copyWith(color:Colors.black87),),
                                const Gap(5),
                                Text("Number" ,style: Styles.headLineStyle4.copyWith(color:Colors.black87),),
                              ],

                            )



                          ],
                        ),
                        const Gap (35),
                        TicketContainer()
                      ],
                    ),
      ),
    ],
              ),
            ),
    ]

    ),


    );
  }
}
