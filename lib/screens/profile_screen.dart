import 'package:booking_app/util/app_layout.dart';
import 'package:booking_app/util/app_styles.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getWidth(20)),
        children: [
          const Gap(40),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: AppLayout.getHeight(86),
                width: AppLayout.getWidth(86),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(10)),
                      image: DecorationImage(
                        image:AssetImage("assets/images/img_1.png")

                ),
                ),
              ),
              const Gap(10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Book Tickets" ,style:Styles.headLineStyle),
                  Text("New York" ,style:TextStyle(
                    fontSize: 14,fontWeight: FontWeight.w500, color: Colors.grey.shade500
                  )),
                  const Gap(10),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:const Color(0xFFEF4F4),
                      ), padding: EdgeInsets.symmetric(horizontal: 3,vertical: 3),
                      child: Row(
                        children: [
                          Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:const Color(0xFF526799),),
                              child:Icon(FluentSystemIcons.ic_fluent_shield_filled, color:Colors.white, size: 15,)


                          ), const Gap(5)
                          ,Text("Premuim Status",style:TextStyle(color: Color(0xFF526799),fontWeight:FontWeight.w600),),
                          const Gap(5)
                        ],
                      )

                  ),],
              ),
              const Gap(10),

            const Spacer(),
            Column(

              children: [
                InkWell(onTap: (){
                  print("You are tapped");
                },
                    child: Text("Edit", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w300),))
              ],
            )

            ],
          ),
          const Gap(8),
          Divider(color: Colors.grey.shade300,),
          const Gap(8),
          Stack(
            children: [
              Container(
                height: AppLayout.getHeight(90),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Styles.primaryColor,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                ),
              ),
             Positioned(
               top: -40,
                 right: -45,
                 child:  Container(
                 padding: EdgeInsets.all(AppLayout.getHeight(30)),
                 decoration:BoxDecoration(
                   color: Colors.transparent,
                     shape: BoxShape.circle,
                     border: Border.all(width: 18, color: Color(0xFF264CD2))
                 )


             )),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 25,vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(FluentSystemIcons.ic_fluent_lightbulb_filament_filled,
                      color: Styles.primaryColor, size: 27,),
                      maxRadius: 25,
                      backgroundColor: Colors.white,
                    ),
                    const Gap(12),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("You\'v got a new award",
                        style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.bold, color: Colors.white),),
                        Text("You have 95 flights in a year",
                          style: Styles.headLineStyle2.copyWith(fontWeight: FontWeight.w500, color: Colors.white,fontSize: 16))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          const Gap(25),
          Text("Accumulated miles", style: Styles.headLineStyle2,),
          Container(

            child: Column(
              children: [
                const Gap(8),
                Text("198202" ,style: TextStyle(fontSize: 55 ,color: Styles.textColor, fontWeight: FontWeight.w900),),
                const Gap(28),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Miles accrued", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                    Text("05 August 2022", style: Styles.headLineStyle4.copyWith(fontSize: 16),),
                  ],
                ),
                Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(15),
                        Text("23 042", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Miles" ,style: Styles.headLineStyle4.copyWith(color:Colors.black87),),
                      ],
                    ) ,

                    Column(  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(15),
                        Text("Airline CO", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Recieved From" ,style: Styles.headLineStyle4.copyWith(color:Colors.black87),),
                      ],

                    )



                  ],
                ),
                const Gap(30),
                Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(15),
                        Text("24", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Mc Donald's" ,style: Styles.headLineStyle4.copyWith(color:Colors.grey,),),

                 ],
                ),
                    Column(  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(15),
                        Text("Mc Donald's ", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Received From" ,style: Styles.headLineStyle4.copyWith(color:Colors.grey),),
                      ],

                    ),
                ],

          ),
                const Gap(30),
                Row(  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(  crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(15),
                        Text("52 340", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Miles" ,style: Styles.headLineStyle4.copyWith(color:Colors.grey,),),

                      ],
                    ),
                    Column(  crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        const Gap(15),
                        Text("Franko  ", style: Styles.headLineStyle2.copyWith(color:Colors.black87),),
                        const Gap(5),
                        Text("Received From" ,style: Styles.headLineStyle4.copyWith(color:Colors.grey),),
                      ],

                    ),
                  ],

                ),

        ],
      ),
    ),
          const Gap(45),
          Center(child: Text("How to get more miles ?", style: Styles.textStyle.copyWith(color: Styles.primaryColor, fontWeight: FontWeight.w500),))
    ]));
  }
}
