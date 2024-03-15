import 'dart:io';
main() {
  var fruits = [
    {'Name': 'Apple',
      'Color': 'Red',
      'Price': 2.5,
    },
    {'Name': 'Banana',
      'Color': 'Yellow',
      'Price': 1.0,
    },
    {'Name': 'Grapes',
      'Color': 'Purple',
      'Price': 3.0,
    }
  ];
  displayFruitDetails(fruits);
  print('Enter Percentage');
  var p=double.parse(stdin.readLineSync()!);
  print('Fruit Details After $p % Discounts');
  applyPriceDiscount(fruits,p);
}
void displayFruitDetails(fruit){
  for( var fru in fruit){
    print("Name: ${fru['Name']}, Color: ${fru['Color']}, Price: \$${fru['Price']}");
  }
}
void applyPriceDiscount(fruits,p){
  for(var fruit in fruits){
    double fruitPrice=fruit['Price'];
    double discountedPrice = fruitPrice - (fruitPrice * (p/100));
    print("Name: ${fruit['Name']}, Color: ${fruit['Color']}, Price: \$$discountedPrice");
  }

}
