part of contact_mvc; 
 
// lib/contact/mvc/contacts.dart 
 
class Contact extends ContactGen { 
 
  Contact(Concept concept) : super(concept); 
 
  Contact.withId(Concept concept, String cles) : 
    super.withId(concept, cles); 
 
} 
 
class Contacts extends ContactsGen { 
 
  Contacts(Concept concept) : super(concept); 
 
} 
 
