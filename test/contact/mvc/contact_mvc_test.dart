 
// test/contact/mvc/contact_mvc_test.dart 
 
import "package:unittest/unittest.dart"; 
 
import "package:dartling/dartling.dart"; 
 
import "package:contact_mvc/contact_mvc.dart"; 
 
testContactMvc(Repo repo, String domainCode, String modelCode) { 
  var models; 
  var session; 
  var entries; 
  group("Testing ${domainCode}.${modelCode}", () { 
    setUp(() { 
      models = repo.getDomainModels(domainCode); 
      session = models.newSession(); 
      entries = models.getModelEntries(modelCode); 
      expect(entries, isNotNull); 
 
 
    }); 
    tearDown(() { 
      entries.clear(); 
    }); 
    test("Empty Entries Test", () { 
      expect(entries.isEmpty, isTrue); 
    }); 
 
  }); 
} 
 
testContactData(ContactRepo contactRepo) { 
  testContactMvc(contactRepo, ContactRepo.contactDomainCode, 
      ContactRepo.contactMvcModelCode); 
} 
 
void main() { 
  var contactRepo = new ContactRepo(); 
  testContactData(contactRepo); 
} 
 
