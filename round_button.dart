import 'package:flutter/material.dart';
class RoundButton extends StatelessWidget {
  final String title ;
  final VoidCallback ontap ;
   final bool loading ;
  const RoundButton({Key? key, required this.title, required this.ontap,this.loading=false}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        height: 50,
        width: 150,
        decoration: BoxDecoration(
          color: Colors.blueGrey,
          borderRadius: BorderRadius.circular(20),

        ),
        child: Center(
          child:loading ? CircularProgressIndicator(strokeWidth: 1,color: Colors.white38,) : Text(title,style:TextStyle(
            color: Colors.white,
          ),),
        ),
      ),
    );
  }
}
