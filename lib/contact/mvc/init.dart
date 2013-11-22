part of contact_mvc; 
 
// lib/contact/mvc/init.dart 
 
initContactMvc(var entries) { 
  _initContacts(entries);
} 
 


_initContacts(var entries) {
  Contact contact1 = new Contact(entries.contacts.concept);
  contact1.cles = 'CO1DO';
  contact1.nom = 'DOSSOU';
  contact1.prenom = 'Codjo';
  contact1.phone = '+22997719496';
  contact1.email = 'doscodj@hotmail.com';
  contact1.adresse = 'gbegamey carre 752 benin';
  
  Contact contact2 = new Contact(entries.contacts.concept);
  contact2.cles = 'HA2AG';
  contact2.nom = 'AGROI';
  contact2.prenom = 'Harmeet';
  contact2.phone = '+33671949556';
  contact2.email = 'agroha@yahoo.com';
  contact2.adresse = '29 rue prof joseph nicolas';
  
  entries.contacts.add(contact2);
  
  Contact contact3 = new Contact(entries.contacts.concept);
  contact3.cles = 'SE3TO';
  contact3.nom = 'TOUDJI';
  contact3.prenom = 'Sestane';
  contact3.phone = '+15817575739';
  contact3.email = 'sestanetj@yahoo.fr';
  contact3.adresse = '2592 rue de la vendee';
  
  entries.contacts.add(contact3);
}