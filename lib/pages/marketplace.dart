// ignore_for_file: sort_child_properties_last

import 'package:faacebook_lite/models/marketplace_model.dart';
import 'package:flutter/material.dart';

class MarketplacePage extends StatefulWidget {
  const MarketplacePage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MarketplacePageState createState() => _MarketplacePageState();
}

class _MarketplacePageState extends State<MarketplacePage> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Market Place',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Container(
                child: IconButton(
                    icon: const Icon(Icons.search_outlined),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onPressed: () {
                      print('Search button is clicked');
                    }),
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey),
              ),
            ],
          ),
        ),
        const Divider(
          thickness: 1,
          color: Colors.black,
        ),
        Expanded(
            child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: (2 / 3),
          children: [
            for (int i = 0; i < marketplacedata.length; i++) ...[
              InkWell(
                child: Card(
                  child: Column(
                    children: [
                      Expanded(
                        child: Image(
                          image: AssetImage(marketplacedata[i].photo),
                        ),
                      ),
                      Text(
                        marketplacedata[i].title,
                        style: const TextStyle(
                            fontSize: 18.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        marketplacedata[i].price.toString(),
                        style: const TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                onTap: () => {print('clicked on iphone')},
              ),
            ]
          ],
        ))
      ],
    );
  }
}
