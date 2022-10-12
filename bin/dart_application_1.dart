
import 'dart:convert';
import 'dart:io';
import 'company.dart';
import 'package:sqlite3/sqlite3.dart';


final db = sqlite3.open('db.db');

  // db.execute('''
  //   CREATE TABLE companies (
  //     id INTEGER NOT NULL PRIMARY KEY,
  //     name TEXT NOT NULL
  //   );
  // ''');

void main() {

  while(true){

    // var newComapny = {};
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

      print('Enter VAT number company');
      var vatCompany = stdin.readLineSync(encoding: utf8);
      var vat = int.tryParse(vatCompany!);

      print('Enter Email company');
      var emailCompany = stdin.readLineSync(encoding: utf8);

      db.execute('INSERT INTO companies(name, vat, email) VALUES("$nameCompany", $vat, "$emailCompany" )' );

    }
    else if (int.tryParse(user_choice!) == 2){
      final ResultSet resultSet = db.select('SELECT * FROM companies');
      if (resultSet.isEmpty) {
        print('Список контрагентов пуст');
        sleep(Duration(seconds: 1));
      } else{
          resultSet.forEach((element) {
          print(element);
          });
        }   
      }
      else{
      false;
      };
    }
  }
