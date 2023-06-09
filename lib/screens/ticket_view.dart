import 'package:booking_app/widgets/thick_container.dart';
import 'package:flutter/material.dart';
import 'package:booking_app/util/app_layout.dart';
import 'package:booking_app/util/app_styles.dart';
import 'package:gap/gap.dart';

class TicketView extends StatelessWidget {
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width*0.85,
      height: AppLayout.getHeight(200),
      child: Container(
        margin: const EdgeInsets.only(right: 16,),
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                  color: Color(0xFF526799),
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
                            Styles.headLineStyle3.copyWith(color: Colors.white),
                      ),
                      const Spacer(),
                      ThickContainer(),
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
                                              color: Colors.white,
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
                                  color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                      const ThickContainer(),
                      const Spacer(),
                      Text("LAG",
                          style: Styles.headLineStyle3.copyWith(
                            color: Colors.white,
                          )),
                    ],
                  ),
                  const Gap(3),
                  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,child: Text('ABUJA', style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        
                      ) ,
                  Text("8H 3BMH",style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                     SizedBox(
                       width: 100,child: Text('LAGOS', textAlign:TextAlign.end,style:  Styles.headLineStyle4.copyWith(color: Colors.white),),
                     ),
                    ],
                  ),
                ],  ) ,
              ),
            //blue part of the card


            //red part of the container

            Container(  color: Styles.orangeColor,
              child: Row(
                children: [
                    const SizedBox(
                      height: 20,
                      width: 10,
                      child: DecoratedBox(decoration:BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        )
                      ),),
                    ),



                  Expanded(child: Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: LayoutBuilder(
                      builder:(BuildContext context, BoxConstraints constraits){
                          return  Flex(
                                          direction: Axis.horizontal,
                                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                          mainAxisSize:  MainAxisSize.max,
                                          children:
                                               List.generate((constraits.constrainWidth()/15).floor(), (index) => const SizedBox(
                                                 width:5, height: 1,child: DecoratedBox(
                                                 decoration: BoxDecoration(
                                                   color: Colors.white
                                                 ),
                                               ),
                                               ),),

                          ); }
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                    width: 10,
                    child: DecoratedBox(decoration:BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      )
                    ),),
                  )
                ],
              ),
            ) ,

               Container(
                 decoration: BoxDecoration(
                     color: Styles.orangeColor,
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
                          Text("1 MAY", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                          const Gap(5),
                          Text("Date" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                        ],
                      ) ,
                    Column(  crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("08:00 AM", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                        const Gap(5),
                        Text("Departure Time" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                      ],
                    ) ,
              Column(  crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text("23", style: Styles.headLineStyle3.copyWith(color: Colors.white),),
                  const Gap(5),
                  Text("Number" ,style: Styles.headLineStyle4.copyWith(color: Colors.white),),
                ],
              )



                        ],
                     )
                   ],
                 ),


               )


          ],
        ),
      ),
    );
  }
}
