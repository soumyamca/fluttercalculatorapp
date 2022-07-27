import 'package:flutter/material.dart';

class Mul extends StatefulWidget {
  const Mul({Key? key}) : super(key: key);

  @override
  State<Mul> createState() => _MulState();
}

class _MulState extends State<Mul> {
  TextEditingController num1=TextEditingController();
  TextEditingController num2=TextEditingController();
  int _sum=0;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      child:Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num1,

            decoration: InputDecoration(
                hintText: "1st number",
                labelText: "1st number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          TextField(
            controller: num2,
            decoration: InputDecoration(
                hintText: "2nd number",
                labelText: "2nd number",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20)
                )
            ),
          ),
          SizedBox(
            height: 20,
          ),
          SizedBox(
            height: 50,
            width: double.infinity,
            child:RaisedButton(
                color: Colors.greenAccent,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)
                ),
                child: Text("MUL",style: TextStyle(
                    fontSize: 20
                ),),
                onPressed:(){
                  var getNum1=int.parse(num1.text);
                  var  getNum2=int.parse(num2.text);
                  setState(() {
                    _sum=getNum1*getNum2;
                  });
                  print(_sum);


                }) ,
          ),
          Text(_sum.toString(),style: TextStyle(
            fontSize: 30
          ),),
        ],
      ) ,
    );
  }
}
