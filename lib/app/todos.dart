part of contact_mvc_app;

class Todos extends ui.VerticalPanel {
  var _listPanel = new ui.VerticalPanel();
  TodoApp _todoApp;
  Contact contc;
  var cles = new ui.TextBox();
  var nom = new ui.TextBox();
  var prenom = new ui.TextBox();
  var phone = new ui.TextBox();
  var email = new ui.TextBox();
  var adresse = new ui.TextArea();
  var btnAjout= new ui.Button("Ajouter");
  var btnAnnuler= new ui.Button("Annuler");
  
  ui.CaptionPanel dePanel = new ui.CaptionPanel("LISTE DES CONTACTS");
  
  Todos(Contacts contacts, MvcEntries mvcentries) {
    spacing = 10;
    ui.FlexTable layout = new ui.FlexTable();
    layout.setCellSpacing(6);
    ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();
   
    //horizontal panel
    ui.HorizontalPanel hpanel = new ui.HorizontalPanel();
    hpanel.spacing = 10;
// Add a title to the form
    layout.setHtml(0, 0, "Enter one contact");
    cellFormatter.setColSpan(0, 0, 2);
    cellFormatter.setHorizontalAlignment(0, 0, i18n.HasHorizontalAlignment.ALIGN_CENTER);

// Add some standard form options
    layout.setHtml(1, 0, "Cles:");
    layout.setWidget(1, 1, cles);
    layout.setHtml(2, 0, "Nom:");
    layout.setWidget(2, 1, nom);
    layout.setHtml(3, 0, "Prenom:");
    layout.setWidget(3, 1,prenom);
    layout.setHtml(4, 0, "Phone:");
    layout.setWidget(4, 1, phone);
    layout.setHtml(5, 0, "email:");
    layout.setWidget(5, 1, email);
    layout.setHtml(6, 0, "Adresse:");
    layout.setWidget(6, 1, adresse);
    layout.setWidget(7, 0, btnAjout);
    layout.setWidget(7, 1, btnAnnuler);
    
// Wrap the content in a DecoratorPanel
    ui.DecoratorPanel decPanel = new ui.DecoratorPanel();
    decPanel.setWidget(layout);
    
    
    ui.DecoratorPanel  dePanels = new ui.DecoratorPanel();
    dePanels.setSize("100%", "100%");
    
    
    //panel.setContentWidget(new ui.Label("The main, wrapped widget goes here."));

    
    /*dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
    dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
    dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";*/

    
    btnAjout.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
      if (cles.text.trim() != '') {
      var contact = new Contact(contacts.concept);
      contact.cles = cles.text.trim();
      contact.nom = nom.text.trim();
      contact.prenom = prenom.text.trim();
      contact.phone = phone.text.trim();
      contact.email = email.text.trim();
      contact.adresse = adresse.text.trim();
          if(btnAjout.text=='Ajouter'){
          if(contacts.add(contact)){
            save(contacts);
            window.alert("Enregistrement effectuee avec succes");
            dePanel.clear();
            dePanel.setContentWidget(_listAffDir(contacts));
            dePanel.getElement().style.border = "2px solid #CC88CF";
            dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
            dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
            dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";
          }else{window.alert("Ce contact existe deja");}
          //window.location.reload();
          
          }else{
           
            contacts.update(contc, contact);
            save(contacts);
            //window.location.reload();
            window.alert("Modification effectuee avec succes");
            cles.enabled=true;
            cles.setValue("");
            nom.setValue("");
            prenom.setValue("");
            phone.setValue("");
            email.setValue("");
            adresse.setValue("");
            btnAjout.text='Ajouter';
            dePanel.clear();
            dePanel.setContentWidget(_listAffDir(contacts));
            dePanel.getElement().style.border = "2px solid #CC88CF";
            dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
            dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
            dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";
            
          }
      //dePanel.clear();
      //dePanel.setCaptionHtml(_listAff(contacts));
      //_add(contact);
      }else {
            window.alert("Merci de saisir la cle"); 
              //cles.focus;
            }
    })); 
    
    btnAnnuler.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
      cles.enabled=true;
      cles.setValue("");
      nom.setValue("");
      prenom.setValue("");
      phone.setValue("");
      email.setValue("");
      adresse.setValue("");
      btnAjout.text='Ajouter';
    })); 
    hpanel.add(decPanel);
    
    //add(decPanel);
    dePanel.setContentWidget(_listAff(contacts,mvcentries));
    dePanel.getElement().style.border = "2px solid #CC88CF";
    dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
    dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
    dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";
    
    hpanel.add(dePanel);
    add(hpanel);
    
    //_AttribOnClik(contacts);
    //add(_listPanel);
  }
  
  
 
  //----------------------fonction de sauvegarde------------------
  save(Contacts contacts) { 
    window.localStorage['todos-dartling-dwt'] = JSON.encode(contacts.toJson());
  }
  
  
  
 
  //---------------------Fonction pour afficher les contacts-------
  ui.FlexTable _listAff(Contacts contacts, MvcEntries mvcentries){
   String json = window.localStorage['todos-dartling-dwt'];
   ui.FlexTable layout = new ui.FlexTable();
   if (json != null && json.length>3) {
     try {
        contacts.fromJson(JSON.decode(json));
        
          
          layout.setCellSpacing(6);
          ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
          layout.setBorderWidth(2);
        layout.setHtml(0, 0, "Num");
        layout.setHtml(0, 1, "Nom");
        layout.setHtml(0, 2, "Prenom");
        layout.setHtml(0, 3, "Phone");
        layout.setHtml(0, 4, "email");
        layout.setHtml(0, 5, "adresse");
        layout.setHtml(0, 6, "Modif");
        layout.setHtml(0, 7, "Supp");

        
      var clor="#c8bfe7";
      int i=1;
        for (var contact in contacts) {
          var btnAjouM = new ui.Button("Modif");
          var btnAjouS = new ui.Button("Supp");
   
          if(clor=="#c8bfe7")
          {clor="#FFC2A6";}else{clor="#c8bfe7";}
          layout.setHtml(i, 0, contact.cles);
          layout.setHtml(i, 1, contact.nom);
          layout.setHtml(i, 2, contact.prenom);
          layout.setHtml(i, 3, contact.phone);
          layout.setHtml(i, 4, contact.email);
          layout.setHtml(i, 5, contact.adresse);
          layout.setWidget(i, 6, btnAjouM);
          layout.setWidget(i, 7, btnAjouS);
          
          btnAjouS.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
            if (window.confirm("Confirmez la suppression?"))
            {
              contacts.remove(contact);
              save(contacts);
              //window.location.reload();
              window.alert("Suppression effectuee avec succes");
              dePanel.clear();
              dePanel.setContentWidget(_listAffDir(contacts));
              dePanel.getElement().style.border = "2px solid #CC88CF";
              dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
              dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
              dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";
              
            }
          })); 
          
          
          btnAjouM.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
            cles.setValue(contact.cles); 
            cles.enabled=false;
            nom.setValue(contact.nom);
            prenom.setValue(contact.prenom);
            phone.setValue(contact.phone);
            email.setValue(contact.email);
            adresse.setValue(contact.adresse);
            btnAjout.text="Modifier";
            contc=contact;
          
          })); 
          i++;
        }
   
    
    } on Exception catch(e) {
      print(e);
    }
   }else{ 
     initContactMvc(mvcentries);
     save(mvcentries.contacts);
     contacts=mvcentries.contacts;
     //window.location.reload();
     layout=_listAffDir(contacts);
     }
   return layout;
   } 
  
  ui.FlexTable _listAffDir(Contacts contacts){
        
          ui.FlexTable layout = new ui.FlexTable();
          layout.setCellSpacing(6);
          ui.FlexCellFormatter cellFormatter = layout.getFlexCellFormatter();

// Add a title to the form
          layout.setBorderWidth(2);
        layout.setHtml(0, 0, "Num");
        layout.setHtml(0, 1, "Nom");
        layout.setHtml(0, 2, "Prenom");
        layout.setHtml(0, 3, "Phone");
        layout.setHtml(0, 4, "email");
        layout.setHtml(0, 5, "adresse");
        layout.setHtml(0, 6, "Modif");
        layout.setHtml(0, 7, "Supp");

      var clor="#c8bfe7";
      int i=1;
        for (var contact in contacts) {
          var btnAjouM = new ui.Button("Modif");
          var btnAjouS = new ui.Button("Supp");
          if(clor=="#c8bfe7")
          {clor="#FFC2A6";}else{clor="#c8bfe7";}
          layout.setHtml(i, 0, contact.cles);
          layout.setHtml(i, 1, contact.nom);
          layout.setHtml(i, 2, contact.prenom);
          layout.setHtml(i, 3, contact.phone);
          layout.setHtml(i, 4, contact.email);
          layout.setHtml(i, 5, contact.adresse);
          layout.setWidget(i, 6, btnAjouM);
          layout.setWidget(i, 7, btnAjouS);
          
          btnAjouS.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
            if (window.confirm("Confirmez la suppression?"))
            {
              contacts.remove(contact);
              save(contacts);
              //window.location.reload();
              window.alert("Suppression effectuee avec succes");
              dePanel.clear();
              dePanel.setContentWidget(_listAffDir(contacts));
              dePanel.getElement().style.border = "2px solid #CC88CF";
              dePanel.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
              dePanel.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
              dePanel.getContentWidget().getElement().style.border = "1px solid #ccf";
              
            }
          })); 
          
          
          btnAjouM.addClickHandler(new event.ClickHandlerAdapter((event.ClickEvent e) {
            cles.setValue(contact.cles); 
            cles.enabled=false;
            nom.setValue(contact.nom);
            prenom.setValue(contact.prenom);
            phone.setValue(contact.phone);
            email.setValue(contact.email);
            adresse.setValue(contact.adresse);
            btnAjout.text="Modifier";
            contc=contact;
          
          })); 
          i++;
        }
        return layout;
    } 
}
