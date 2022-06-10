import 'package:flutter/material.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({Key? key}) : super(key: key);

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: const Icon(Icons.arrow_back_ios),
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(

                ),
                SizedBox(
                  child: Row(
                    children: [
                      const Expanded(
                          child: SizedBox(
                            child: Text(""),
                          )
                      ),
                      Column(
                        children: [
                          const Text("Price for one"),
                          Text("price", style: Theme.of(context).textTheme.headline5,
                          )
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Expanded(
                          child: Text("")
                      ),
                      /*DropdownButton(
                          items: items,
                          onChanged: onChanged
                      ),*/
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
    );
  }
}
