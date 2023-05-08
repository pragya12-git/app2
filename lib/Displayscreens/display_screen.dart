import 'package:app2/modelscreens/model_screens.dart';
import 'package:flutter/material.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key, required this.phoneshop});
  final Phoneshop phoneshop;

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Display "),
        ),
        body: Column(children: [
          Text("Id:   ${widget.phoneshop.id.toString()}"),
          Text("  Title:     ${widget.phoneshop.title!}"),
          Text("Description:${widget.phoneshop.description!}"),
          Text(" Price:      ${widget.phoneshop.price.toString()}"),
          Text(
              "DiscountPercentage:${widget.phoneshop.discountPercentage.toString()}"),
          Text("Rating:${widget.phoneshop.rating.toString()}"),
          Text("Stock:${widget.phoneshop.stock.toString()}"),
          Text("Category:${widget.phoneshop.brand!}"),
          Text("Thumbnail:${widget.phoneshop.category!}"),

          Row(children: [
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.thumbnail!,
                height: 80,
                width: 80,
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.images![0],
                height: 60,
                width: 60,
              ),
            ),
          ]),

          Row(children: [
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.images![1],
                height: 80,
                width: 80,
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.images![2],
                height: 80,
                width: 80,
              ),
            ),
          ]),
          Row(children: [
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.images![3],
                height: 80,
                width: 80,
              ),
            ),
            Expanded(
              flex: 3,
              child: Image.network(
                widget.phoneshop.images![4],
                height: 50,
                width: 50,
              ),
            ),
          ]),
          // Image.network(widget.phoneshop.images!.first),
          //  Image.network(widget.phoneshop.images!.last),
        ]));
  }
}
