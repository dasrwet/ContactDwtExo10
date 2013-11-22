 
// web/contact/mvc/contact_mvc_web.dart 
 
import "dart:html"; 
 
import "package:dartling/dartling.dart"; 
import "package:dartling_default_app/dartling_default_app.dart"; 
 
import "package:contact_mvc/contact_mvc.dart"; 
 
initContactData(ContactRepo contactRepo) { 
   var contactModels = 
       contactRepo.getDomainModels(ContactRepo.contactDomainCode); 
 
   var contactMvcEntries = 
       contactModels.getModelEntries(ContactRepo.contactMvcModelCode); 
   initContactMvc(contactMvcEntries); 
   contactMvcEntries.display(); 
   contactMvcEntries.displayJson(); 
} 
 
showContactData(ContactRepo contactRepo) { 
   var mainView = new View(document, "main"); 
   mainView.repo = contactRepo; 
   new RepoMainSection(mainView); 
} 
 
void main() { 
  var contactRepo = new ContactRepo(); 
  initContactData(contactRepo); 
  showContactData(contactRepo); 
} 
 
