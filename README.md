# broetchenshop

Flutter App um Brötchen zu verkaufen mit Schnittstellen zu einer Datenbank

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

Quellen:

Login - https://github.com/TheAlphamerc/flutter_login_signup/blob/master/lib/src/loginPage.dart
Profile - https://github.com/abuanwar072/E-commerce-Complete-Flutter-UI/tree/master/lib
SearchBar - https://github.com/aravind-b-dev/search-bar/blob/master/lib/main.dart

https://kochwiki.org/wiki/Kategorie:Backwaren



CodeExample:
    new Row(
        children: <Widget>[
        Expanded(
            child: SizedBox(
                height: 200.0,
                child: new ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (BuildContext ctxt, int index) {
                return new Text(products[index]);
                },
            ),
        ),
    ),
    new IconButton(
        icon: Icon(Icons.remove_circle),
        onPressed: () {},
            ),
        ],
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
    )