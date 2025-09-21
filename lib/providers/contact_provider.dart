import 'package:flutter/cupertino.dart';
import 'package:imessage/models/contact.dart';

class ContactProvider extends ChangeNotifier {
  final List<Contact> _contacts = [];

  ContactProvider(){
    _populateData();
  }

  void _populateData(){
    List<Contact> contacts = [
      Contact(
          id: 1, firstName: "Yasmin", image: const AssetImage('images/yasmin.jpg')),
      Contact(id: 2, firstName: "Eilia"),
      Contact(id: 3, firstName: "Maede"),
      Contact(id: 4, firstName: "Aliz"),
      Contact(id: 5, firstName: "Mom"),
      Contact(id: 6, firstName: "Dad"),
      Contact(id: 7, firstName: "+98 1009000900700"),
      Contact(id: 8, firstName: "danielfarajio1999@gmail.com"),
      Contact(id: 9, firstName: "+98 9000 0451"),
      Contact(id: 10, firstName: "+98 5000 333"),
      Contact(id: 11, firstName: "HamraheMan"),
      Contact(id: 12, firstName: "GYROFOOD"),
      Contact(id: 13, firstName: "DIGIPAY"),
      Contact(id: 14, firstName: "JABAMA"),
    ];
    addContacts(contacts);
  }

  List<Contact> getContacts() {
    return _contacts..sort((a, b) => a.firstName.compareTo(b.firstName));
  }

  void addContact(Contact c){
    _contacts.add(c);
    notifyListeners();
  }

  void addContacts(List<Contact> c){
    _contacts.addAll(c);
    notifyListeners();
  }

  void deleteContactById(int id){
    _contacts.removeWhere((c) => c.id == id,);
    notifyListeners();
  }

  void deleteContact(Contact c) {
    _contacts.remove(c);
    notifyListeners();
  }
}
