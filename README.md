

A new Flutter project. The project makes use of Box Constraints(i.e Rows and Columns) to display the name of a pizza and its ingredients.
The image and font property is added to the pubspec.yaml file:
flutter:
   uses-material-design: true
   assets:
    - assets/pizza.png
    
   fonts:
      - family: Oxygen
        fonts:
          - asset: lib/fonts/Oxygen-Regular.ttf
          - asset: lib/fonts/Oxygen-Bold.ttf
            weight: 700
          - asset: lib/fonts/Oxygen-Light.ttf
            weight: 300
            
  class PizzaImageWidget() : Returns a Container whose child is the image fetched from the Assets folder.
  class OrderButton() : Adds a floating button and the functionality for when the button is pressed. It also returns an alert dialog to display the alert.
      
## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://flutter.io/docs/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://flutter.io/docs/cookbook)

For help getting started with Flutter, view our 
[online documentation](https://flutter.io/docs), which offers tutorials, 
samples, guidance on mobile development, and a full API reference.
