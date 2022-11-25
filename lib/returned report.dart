
import 'package:flutter/material.dart';
import 'package:shamsi_date/shamsi_date.dart';

class returned_report extends StatefulWidget {
  const returned_report({Key? key}) : super(key: key);

  @override
  State<returned_report> createState() => _returned_reportState();
}

class _returned_reportState extends State<returned_report> {
  Jalali jalali = Jalali.now();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery. of(context). size. width;
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        // appBar: AppBar(
        //   centerTitle: true,
        //   title: Text('لیست مرجوعی ها'),
        //   leading: Directionality(textDirection: TextDirection.ltr,child: IconButton(icon: Icon(Icons.add),onPressed: (){},)),
        //   actions: [
        //     Directionality(textDirection: TextDirection.ltr,child: BackButton())
        //   ],
        // ),
        body: Column(
          children: [
            Container(
              height: 60,
              width: width,
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      IconButton(
                        icon: Icon(Icons.add,color: Colors.white,size: 35,),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.refresh,color: Colors.white,size: 30,),
                        onPressed: () {
                          setState(() {});
                        },
                      ),
                    ],
                  ),
                  Center(child: Text('لیست مرجوعی ها',style: TextStyle(color: Colors.white,fontSize: 20),),),
                  Row(
                    children: [
                      SizedBox(width: 30,),
                      Directionality(
                          textDirection: TextDirection.ltr, child: IconButton(onPressed: (){
                        Navigator.pop(context);
                      },icon: Icon(Icons.arrow_back,color: Colors.white,size: 30,),)),
                    ],
                  ),
                ],
              ),
            ),
            //SizedBox(height: 8,),
            TextButton(child: Text('${jalali.year}/${jalali.month}/${jalali.day}',style: TextStyle(fontSize: 22,color: Colors.black),),onPressed: (){}),
            //SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 12,
                itemBuilder: (context, index){
                  return late(Text('data'),Text((index+1).toString()));
                },
              ),)
          ],
        ),
      ),
    );
  }
  Widget late(Text text,Text ldng){
    return Column(
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Text('data'),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('data'),
                  Text('data'),
                ],),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('data'),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Text('data'),
                ],
              ),
            ],
          ),
        ),

      ],
    );
  }
}