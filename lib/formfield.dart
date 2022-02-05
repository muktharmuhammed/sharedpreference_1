import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
class FormKey extends StatefulWidget {
  const FormKey({Key? key}) : super(key: key);

  @override
  _FormKeyState createState() => _FormKeyState();
}
final formKey=GlobalKey<FormState>();
final controller_a=TextEditingController();
final controller_b=TextEditingController();
setData(String msg) async{
  final a= await SharedPreferences.getInstance();
  a.setInt('', )
}


class _FormKeyState extends State<FormKey> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Form'),),
      body: Form(key: formKey,child:
      Column(
        children: [
        TextFormField(controller: controller_a,),
        TextFormField(controller: controller_b,),
          ElevatedButton(
              onPressed: (){setData(controller_a.text);}, child: Text('save'))],),),
    );
  }
}
