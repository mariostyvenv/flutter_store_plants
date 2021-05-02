import 'package:flutter/material.dart';
import 'package:store/constants.dart';
import 'package:store/screens/details/components/image_and_icon.dart';
import 'package:store/screens/details/components/title_and_price.dart';

class Body extends StatelessWidget {
  const Body({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
        child: Column(
      children: [
        ImageAndIconCard(),
        TitleAndPrice(
          country: 'Russia',
          title: 'Angelica',
          price: 400,
        ),
        SizedBox(
          height: kDefaultPadding,
        ),
        Row(
          children: [
            SizedBox(
              width: size.width / 2,
              height: 84,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Comprar',
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(kPrimaryColor),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.only(topRight: Radius.circular(20)),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextButton(
                onPressed: (){},
                child: Text('Descripcion'),
              ),
            )
          ],
        )
      ],
    ));
  }
}
