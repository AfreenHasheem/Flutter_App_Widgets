import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(top: 30, left: 10),
      color: Colors.deepOrangeAccent,
      child: Column(children: <Widget>[
        Row(children: <Widget>[
          Expanded(child: Text("Marghertia",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              color: Colors.white,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.bold,
            ),
          ),),
          Expanded(child:Text("Tomato, Cheese, Basil",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),)
        ],
        ),
        Row(children: <Widget>[
          Expanded(child: Text("Marinara",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 30.0,
              decoration: TextDecoration.none,
              fontFamily: 'Oxygen',
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),),
          Expanded(child:Text("Tomato, Garlic",
            textDirection: TextDirection.ltr,
            style: TextStyle(
              fontSize: 20.0,
              decoration: TextDecoration.none,
              color: Colors.white,
              fontFamily: 'Oxygen',
              fontWeight: FontWeight.bold,
            ),
          ),)
        ],
        ),
        PizzaImageWidget(),
        OrderButton(),
      ],)
    ));
  }
}

class PizzaImageWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    AssetImage pizzaAsset = AssetImage('assets/pizza.png');
    Image image = Image(image: pizzaAsset, width: 400.0,height: 400.0,);
    return Container(child: image);
  }
}

class OrderButton extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    var button = Container(
      margin: EdgeInsets.only(top: 50.0),
      child: RaisedButton(
        child: Text("Order your pizza!"),
        color: Colors.white,
        elevation: 5.0,
        onPressed: (){
          order(context);
        },
      ),
    );
    return button;
  }

  void order(BuildContext context){
    var alert = AlertDialog(
      title: Text("Order completed!"),
      content: Text("Thanks for your order"),
    );
    showDialog(
        context: context,
        builder: (BuildContext context) => alert,
    );
  }
}