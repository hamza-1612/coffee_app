# Coffee App

A coffee shop app UI built with Flutter, using a warm brown color palette and the Poppins font.

## Features

- **Home screen**: greeting header, a discount banner, and a two-column grid of coffee products with an **Add to Cart** button on each card.
- **Cart screen**: a "My Order" list of the items you added, swipe-to-dismiss on each item, a coupon code field, and a price summary (sub-total, shipping, total).
- **Bottom navigation**: a curved bottom bar (`convex_bottom_bar`) for switching between Home and Cart.
- **Login & Register screens**: form validation and social sign-in buttons.

## Tech Stack

- [Flutter](https://flutter.dev) / Dart
- [`convex_bottom_bar`](https://pub.dev/packages/convex_bottom_bar) for the bottom navigation bar
- [`flutter_svg`](https://pub.dev/packages/flutter_svg) for SVG icons

## Project Structure

```
lib/
├── main.dart          # App entry point
├── data/              # Product model and cart data
├── screens/           # Home, Cart, Login, Register
└── widgets/           # Reusable widgets (fields, buttons, price rows, icons)
```

## Getting Started

1. Install the [Flutter SDK](https://docs.flutter.dev/get-started/install).
2. Clone the repository:
   ```bash
   git clone https://github.com/hamza-1612/coffee_app.git
   cd coffee_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```
4. Run the app:
   ```bash
   flutter run
   ```
