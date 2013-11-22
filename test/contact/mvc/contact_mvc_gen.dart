 
// test/contact/mvc/contact_mvc_gen.dart 
 
import "package:dartling/dartling.dart"; 
 
import "package:contact_mvc/contact_mvc.dart"; 
 
genCode() { 
  var repo = new Repo(); 
 
  var contactDomain = new Domain("Contact"); 
 
  Model contactMvcModel = 
      fromJsonToModel(contactMvcModelJson, contactDomain, "Mvc"); 
 
  repo.domains.add(contactDomain); 
 
  repo.gen("contact_mvc"); 
} 
 
initContactData(ContactRepo contactRepo) { 
   var contactModels = 
       contactRepo.getDomainModels(ContactRepo.contactDomainCode); 
 
   var contactMvcEntries = 
       contactModels.getModelEntries(ContactRepo.contactMvcModelCode); 
   initContactMvc(contactMvcEntries); 
   contactMvcEntries.display(); 
   contactMvcEntries.displayJson(); 
} 
 
void main() { 
  genCode(); 
 
  var contactRepo = new ContactRepo(); 
  initContactData(contactRepo); 
} 
 
