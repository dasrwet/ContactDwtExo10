part of contact_mvc; 
 
// lib/gen/contact/models.dart 
 
class ContactModels extends DomainModels { 
 
  ContactModels(Domain domain) : super(domain) { 
    add(fromJsonToMvcEntries()); 
  } 
 
  MvcEntries fromJsonToMvcEntries() { 
    return new MvcEntries(fromJsonToModel( 
      contactMvcModelJson, 
      domain, 
      ContactRepo.contactMvcModelCode)); 
  } 
 
} 
 
