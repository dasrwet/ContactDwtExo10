part of contact_mvc; 
 
// lib/gen/contact/repository.dart 
 
class ContactRepo extends Repo { 
 
  static final contactDomainCode = "contact"; 
  static final contactMvcModelCode = "mvc"; 
 
  ContactRepo([String   code="ContactRepo"]) : super(code) { 
    _initContactDomain(); 
  } 
 
  _initContactDomain() { 
    var contactDomain = new Domain(contactDomainCode); 
    domains.add(contactDomain); 
    add(new ContactModels(contactDomain)); 
  } 
 
} 
 
