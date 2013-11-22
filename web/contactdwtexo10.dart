import 'package:contact_mvc/contact_mvc_app.dart';
import 'package:contact_mvc/contact_mvc.dart';

void main() {
  var repo = new ContactRepo();
  var domain = repo.getDomainModels('contact');
  new TodoApp(domain);
}
