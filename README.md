# Union Shop

Union Shop is an online shop that serves the university community. It aims to provide an easy way to purchase university merchandise and goods.


# Installation and Setup

Install Flutter SDK from [flutter.dev](https://flutter.dev/docs/get-started/install).

Use preferred IDE to clone the git repository

You may need to install a Flutter and Dart Extension/Plugin for your IDE.

If dependencies are not automatically installed, run the following commands in the terminal:
```
flutter pub get
flutter pub upgrade
flutter doctor
```


# Website Layout
## Pages
- Home (homepage)
- Product Collections page
- Product pages for each collection
- Cart
- Sign In / Account
- About Us (planned / linked from header)


## Standard Page layout
### Breakdown
- Sale banner at top for promotions. (persistent across site).
- Header / Navigation bar. (persistent across site).
- Main content area (varies by page).
- Footer. (persistent across site).
### Navigation bar
- Left: 
  brand logo (clickable, returns to Home).
- Right:
  Utility Icons that take you to Sign-in page and your cart.
- Center: 
  text navigation buttons (Home, About us and Collections).
  Buttons collapse down into dropdown burger menu on smaller screens/phones.
### Footer
- Opening hours, Help and info, Latest Offers.

## Homepage — what it shows / should show
- Standard page layout.
- Banner
  Title message with an image background.
- Featured Collections section
  Showcases a few product collections with images and links to their respective collection pages.

## About Us page
- Standard page layout.
- Title and a breif message about the shop.

## Product Collections page
- Standard page layout.
- Grid of all product collections with images and links to their respective collection pages.

## Product Collection page
- Standard page layout.
- Title of the collection backed by an image.
- Grid of products in that collection with images, names, prices and links to their respective product pages.

## Product page
- Standard page layout.
- Product image.
- Product name.
- Variable option dropdowns for each customisable field of the item(if applicable).
- Quantity selector.
- Add to cart button.
- Current Item Price which changed based on customisations and quantity.
- Product description.

## Cart page
- Standard page layout.
- List of items in the cart with their customisations, quantity, individual price and total price
- Adjustable quantities and remove item button for each cart item.
- Total price of all items in the cart which updates on change.
- Checkout button.
- Checkout completion toast/snack bar message appears on checkout.

## Sign In page
- Blank page layout.
- Logo that returns to Home on click.
- Multiple sign in options.


# Project Structure
- `lib/`
  - `models/` - Data models
  - `views/` - UI screens
  - `dependancies/` - Dependancies.
  - `presets/` - Hard coded data presets.
  - `styles/` - Reused Styles and Themes.
  - `main.dart` - App entry point.

Main.dart initializes the app and sets up routing between different screens.
It also stores the cart reference to be passed down to screens that need it.
Furthermore, it contains the screen specifications for the homepage.

styles/ui_constructor.dart contains the constructor for the standard page layout.
The constructor takes a List of widgets which it will insert into the main content area of the page layout.
It also contains some useful routing functions for navigating between screens.
Info used in the footer can be found here as well.

presets/ contains hard coded data for products, collections and customisation options.
New Items can be added here.
The presets contain all the data about items and collections, eg. names, prices, descriptions, images, customisation options and customisation prices, ect.

# Limitations and Future Improvements
- Currently, there is no backend integration. All data is hard coded in the presets folder. Future improvements could include integrating a backend service to fetch product data and handle user accounts.
- The sign-in page is currently a dummy page. Authentication Functionality is Missing.
- The checkout process is not fully implemented. A summary of the order is generated but there is no backend to process it. Furthermore, since there are no accounts, the customer is not logged in the order summary.
- The app does not currently support persistent cart storage. The cart is reset when the app is closed. Future improvements could include saving the cart state locally or in the cloud.
- Some products are missing.
- No searching/filtering functionality is currently present.
- Testing coverage is limited/nonexistent.

# Contact me at: [please don't]
