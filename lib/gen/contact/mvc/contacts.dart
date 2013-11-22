part of contact_mvc; 
 
// lib/gen/contact/mvc/contacts.dart 
 
abstract class ContactGen extends ConceptEntity<Contact> { 
 
  ContactGen(Concept concept) : super.of(concept); 
 
  ContactGen.withId(Concept concept, String cles) : super.of(concept) { 
    setAttribute("cles", cles); 
  } 
 
  String get cles => getAttribute("cles"); 
  set cles(String a) => setAttribute("cles", a); 
  
  String get nom => getAttribute("nom"); 
  set nom(String a) => setAttribute("nom", a); 
  
  String get prenom => getAttribute("prenom"); 
  set prenom(String a) => setAttribute("prenom", a); 
  
  String get phone => getAttribute("phone"); 
  set phone(String a) => setAttribute("phone", a); 
  
  String get email => getAttribute("email"); 
  set email(String a) => setAttribute("email", a); 
  
  String get adresse => getAttribute("adresse"); 
  set adresse(String a) => setAttribute("adresse", a); 
  
  Contact newEntity() => new Contact(concept); 
  Contacts newEntities() => new Contacts(concept); 
  
  int clesCompareTo(Contact other) { 
    return cles.compareTo(other.cles); 
  } 
 
} 
 
abstract class ContactsGen extends Entities<Contact> { 
 
  ContactsGen(Concept concept) : super.of(concept); 
 
  Contacts newEntities() => new Contacts(concept); 
  Contact newEntity() => new Contact(concept); 
  
} 
 
