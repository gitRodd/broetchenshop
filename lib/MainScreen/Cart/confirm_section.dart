import 'package:flutter/material.dart';

class ConfirmSection extends StatefulWidget {
  const ConfirmSection({Key? key}) : super(key: key);

  @override
  State<ConfirmSection> createState() => _ConfirmSectionState();
}

class _ConfirmSectionState extends State<ConfirmSection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        children: [
          const SizedBox(height: 180.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget> [
              Text('Sub-total', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.grey)),
              Text('\$280.00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w400, color: Colors.black)),
            ],
          ),
          const SizedBox(height: 15.0),
          Container(width: size.width, height: 1.0, color: Colors.grey),
          const SizedBox(height: 15.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const <Widget> [
              Text('Total Payment', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w500, color: Colors.black)),
              Text('\$280.00', style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.w700, color: Colors.black)),
            ],
          ),
          const SizedBox(height: 70.0),
          GestureDetector(
            onTap: (){},
            child: Container(
                height: 45.0,
                width: size.width,
                decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(10.0))
                ),
                child: Center(
                  child: TextButton(
                      onPressed: (){

                      },
                      child: const Text("Check out", style: TextStyle(color: Colors.white, fontWeight: FontWeight.w500, fontSize: 15.0)),
                  ),

                )
            ),
          ),
        ],
      ),
    );
  }
}
