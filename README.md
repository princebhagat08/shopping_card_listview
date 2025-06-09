# 🛍️ Flutter Shopping Card

A customizable and visually appealing **shopping card UI** component for Flutter.  
This package helps you display product cards in vertical or horizontal lists with built-in features like image caching, shimmer loading, favorite toggling, and gesture detection for product navigation.

## ✨ Features

- 📦 Customizable product card layout
- 🔄 Vertical and horizontal scroll support
- ⚡ Shimmer loading placeholder
- 📷 Image caching using `cached_network_image`
- 👆 Built-in gesture handling for taps

## 📸 Preview


<p align="center">
  <img src="https://github.com/princebhagat08/shopping_card_listview/blob/main/screenshots/vertical-scrolling.jpg?raw=true" width="250" alt="Favorite Toggle">
  <img src="https://github.com/princebhagat08/shopping_card_listview/blob/main/screenshots/shimmer-effect.jpg?raw=true" width="250" alt="Shimmer Effect" style="margin-right: 10px;">
  <img src="https://github.com/princebhagat08/shopping_card_listview/blob/main/screenshots/horizontal-scrolling.png?raw=true" width="250" alt="Card UI" style="margin-right: 10px;">
</p>



## 🚀 Getting Started

### 1. Install

Add the package to your `pubspec.yaml`:

```yaml
dependencies:
  shopping_card: ^1.0.0
=======
This package is perfect for e-commerce or catalog-style apps, featuring image caching, shimmer loading, and gesture navigation.

---

## ✨ Features

- 📦 Customizable product card layout
- 🔄 Vertical and horizontal list view support
- ⚡ Built-in shimmer loading effect
- 📷 Image caching using `cached_network_image`
- 👆 Tap detection for product navigation

---

## 📸 Preview


---

## 🚀 Getting Started

### 1. Install

Add this to your `pubspec.yaml`:

```yaml
dependencies:
  shopping_card_listview: ^0.0.1

```
Then run:
```
flutter pub get
```
```Import the package
import 'package:shopping_card_listview/shopping_card.dart_listview';
```


##Example
```
import 'package:flutter/material.dart';
import 'package:shopping_card_listview/shopping_card.dart_listview';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    List<ShoppingCardData> products = [
      ShoppingCardData(
          imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/red-lipstick/1.webp',
          title: 'Demo Product1',
          price: '\$10.00',
          totalItems: 15,
          
        ),
      ShoppingCardData(
          imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp',
          title: 'Demo Product2',
          price: '\$10.00',
          totalItems: 15,
        ),
      ShoppingCardData(
          imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp',
          title: 'Demo Product3',
          price: '\$10.00',
          totalItems: 15,
        
        ),
      ShoppingCardData(
          imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp',
          title: 'Demo Product4',
          price: '\$10.00', totalItems: 15,
        ),
      ShoppingCardData(
          imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/eyeshadow-palette-with-mirror/thumbnail.webp',
          title: 'Demo Product5',
          price: '\$10.00',
          totalItems: 15,
        ),];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shopping Card Demo',
      home: Scaffold(
        appBar: AppBar(title: const Text('Shopping Card UI')),
        body: CardListView(
          scrollDirection: Axis.vertical,
          onClick: (product){
          //   Write your code here
          },
          isLoading: false,
          products: products

        ),
      ),
    );
  }
}

```


