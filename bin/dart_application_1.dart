
import 'dart:convert';
import 'dart:io';

var allCompany = [];
void main() {

  while(true){

    var newComapny = {};
    print('Приветствую! Вы находитесь в тестовой программе по формированию счетов вашим контрагентам');
    print('''Вы берите следующее действие:
    1. Ввести нового контрагента в базу
    2. Просмотреть всех контрагентов в базе
    0. Выйти из программы
    ''');

    var user_choice = stdin.readLineSync(encoding: utf8);
    if (int.tryParse(user_choice!) == 0) break;
    else if (int.tryParse(user_choice) == 1){
      print('Введите название компании');
      var nameCompany = stdin.readLineSync(encoding: utf8);
      newComapny['name'] = nameCompany;
      allCompany.add(newComapny);

    }
    else if (int.tryParse(user_choice!) == 2){
      if (allCompany.isEmpty) {
        print('Список контрагентов пуст');
        sleep(Duration(seconds: 1));
      } else{
        print(allCompany);
      }
    }
    else{
      false;
    };

    }

  }
