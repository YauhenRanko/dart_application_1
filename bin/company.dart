
//first class

class Company {
  String companyName;
  int companyVatNumber;
  String companyEmail;

  Company(this.companyName, this.companyVatNumber, this.companyEmail,);

  @override
  String toString() {
    return '$companyName $companyVatNumber $companyEmail';
  }
}


