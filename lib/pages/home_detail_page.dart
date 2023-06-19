import 'package:demo/models/catalog.dart';
import 'package:demo/widgets/home_widgets/add_to_cart.dart';
import 'package:demo/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: context.canvasColor,
      ),
      backgroundColor: context.canvasColor,
      bottomNavigationBar: Container(
        color: context.cardColor,
        child: ButtonBar(
          alignment: MainAxisAlignment.spaceBetween,
          buttonPadding: EdgeInsets.zero,
          children: [
            "\$${catalog.price}".text.bold.xl4.red800.make(),
            AddToCart(catalog: catalog,).wh(140, 50),
          ],
        ).p32(),
      ),
      body: SafeArea(
        bottom: false,
        child: Column(children: [
          Hero(
                  tag: Key(catalog.id.toString()),
                  child: Image.network(catalog.image))
              .h32(context),
          Expanded(
              child: VxArc(
            height: 10.0,
            arcType: VxArcType.convey,
            edge: VxEdge.top,
            child: Container(
              color: context.cardColor,
              width: context.screenWidth,
              child: Column(children: [
                catalog.name.text.xl4
                    .color(MyTheme.darkBluishColor)
                    .bold
                    .make(),
                catalog.desc.text.xl.textStyle(context.captionStyle).make(),
                10.heightBox,
                "Eos accusam dolor kasd amet amet lorem et amet justo vero, aliquyam sed ipsum diam sadipscing erat, rebum amet sit dolore amet eirmod, stet amet lorem at sit ipsum, tempor nonumy kasd dolore sed, eos at ut invidunt diam tempor et. Dolor stet elitr magna nonumy sit lorem clita ut.".text.textStyle(context.captionStyle).make().p16()
              ]).p32(),
            ),
          ))
        ]),
      ),
    );
  }
}
