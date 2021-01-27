import 'package:flutter/material.dart';

class HomePage extends StatefulWidget{
  @override
  State<StatefulWidget> createState()=>new HomePageState();
}

class HomePageState extends State<HomePage>{

  var num1=0,num2=0,sum=0;
  final TextEditingController t1=new TextEditingController(text: "0");
  final TextEditingController t2=new TextEditingController(text: "0");


  void doAdd(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }

  void doSub(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }

  void doMul(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }

  void doDivide(){
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1~/num2;
    });
  }

  void doClear(){
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }
  @override
  Widget build(BuildContext context) {
      return new Scaffold(
        appBar: new AppBar(
          title: Text("Calculator"),
        ),
        body: Container(
          padding: const EdgeInsets.all(40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                keyboardType: TextInputType.number,
                controller: t1,
                decoration: InputDecoration(
                  hintText: "Enter Number 1"
                ),
              ), TextField(
                keyboardType: TextInputType.number,
                controller: t2,
                decoration: InputDecoration(
                    hintText: "Enter Number 2"
                ),
              ),
              Padding(padding:const EdgeInsets.only(top:20.0) ),
              Text("Output: $sum",
              style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.red,
              fontWeight: FontWeight.bold),
              ),
              Padding(padding:const EdgeInsets.only(top:20.0) ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    child: Text("+"),
                    color: Colors.orange,
                    onPressed: doAdd
                  ),
                  new MaterialButton(
                    child: Text("-"),
                    color: Colors.orange,
                    onPressed: doSub,
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  new MaterialButton(
                    child: Text("*"),
                    color: Colors.orange,
                    onPressed: doMul,
                  ),
                  new MaterialButton(
                    child: Text("/"),
                    color: Colors.orange,
                    onPressed: doDivide,
                  )
                ],
              ),
              MaterialButton(onPressed: doClear,child: Text("Clear"),color: Colors.red,)
            ],
      )
        ),
      );
  }

}