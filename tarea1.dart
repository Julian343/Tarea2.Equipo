import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(){
  runApp(Rombo());{
  }
}
class Rombo extends StatelessWidget {
  const Rombo({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
        children: [
            Circulo(),Tarea(key: key,)
            ],
          ),),));
  }
}

class Circulo extends StatelessWidget {
  const Circulo({Key? key}) : super(key: key);

  get borderRadius => null;

  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: Alignment.center,
        children: <Widget>[Tarea(),
          Container(transformAlignment: Alignment.center, 
          decoration: BoxDecoration(gradient: LinearGradient(colors:[
            Colors.red.shade200,Colors.red.shade500,Colors.red.shade900,
          ] )),
             height: 400, width: 400,
          alignment: AlignmentDirectional.centerEnd,
          transform: Matrix4.rotationZ(0.75),
          ),
          CircleAvatar (backgroundColor: Colors.lightGreen, maxRadius: 180,foregroundColor: Colors.blue,
          child: Text('Equipo 6: \n -- America Abigail Lomeli Xicotencat--\n --Huerta Gomez Carlos Emiliano-- \n --Perez Rizada Jose Santiago-- \n --Campos Gonzales Diana-- \n --Julian Luis Juan Carlos--',
          style: TextStyle( color: Colors.white, fontSize: 18),),
          ),
      ],
      
     );
      
  }
}

class Tarea extends StatelessWidget {
  const Tarea({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      elevation: (10), color: Colors.black,
      child: Column(mainAxisAlignment: MainAxisAlignment.end, 
      children: [Text('Actividad 1',style: TextStyle(fontSize: 50, color: Colors.amber),)

      ]));
  }
}
