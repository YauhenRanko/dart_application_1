
import 'dart:convert';
import 'dart:io';

var allCompany = [];

void listAllComapny(object){
  var i = 0;
  for (var element in object) {
    print('$i: $element');
  }
}
void main() {

  while(true){

    var newComapny = {};
    print('Greetings! You are in a test program for generating invoices for your counterparties');
    print('''You take the following action:
    1. Enter a new counterparty into the database
    2. View all counterparties in the database
    0. Exit the program
    ''');

    var user_choice = stdin.readLineSync(encoding: utf8);
    if (int.tryParse(user_choice!) == 0) break;
    else if (int.tryParse(user_choice) == 1){
      print('Enter name company');
      var nameCompany = stdin.readLineSync(encoding: utf8);
      newComapny['name'] = nameCompany;

      print('Enter VAT number company');
      var vatCompany = stdin.readLineSync(encoding: utf8);
      newComapny['vat'] = vatCompany;

      print('Enter Email company');
      var emailCompany = stdin.readLineSync(encoding: utf8);
      newComapny['email'] = emailCompany;
      allCompany.add(newComapny);

    }
    else if (int.tryParse(user_choice!) == 2){
      if (allCompany.isEmpty) {
        print('Список контрагентов пуст');
        sleep(Duration(seconds: 1));
      } else{
        listAllComapny(allCompany);
      }
    }
    else{
      false;
    };

    }

  }
