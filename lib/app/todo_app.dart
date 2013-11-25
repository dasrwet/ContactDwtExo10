part of contact_mvc_app;

/**
 * Todo Application entry point.
 */
class TodoApp {
  ContactModels domain;
  DomainSession session;
  Contacts contacts;
  /*ui.CaptionPanel panelP = new ui.CaptionPanel("Gestion de contact");
  ui.CaptionPanel panelL = new ui.CaptionPanel("List");
  ui.CaptionPanel panelF = new ui.CaptionPanel("Formulaire");
  
 

  //Header header;
  //Footer footer;

  **
   * Create new instance of [TodoApp].
   */
 
  TodoApp(this.domain) {
    session = domain.newSession();
    MvcEntries model = domain.getModelEntries('mvc');
    contacts = model.contacts;
    
    var rootPanel = ui.RootLayoutPanel.get();
    var vPanel = new ui.VerticalPanel();
    vPanel.spacing = 10;
    rootPanel.add(vPanel);
    var title = new ui.Label('Todos');
    vPanel.add(title);
<<<<<<< HEAD
<<<<<<< HEAD
    var todos = new Todos(contacts,model);
=======
    var todos = new Todos(contacts);
>>>>>>> 89de64cc7d9e87b6f6957c78eb708f6832cccdd5
=======
    var todos = new Todos(contacts);
>>>>>>> 1c3095a2814918660d82107a3b2bb1b3dfe7613e
    vPanel.add(todos);

    //header = new Header(this);
    //Todos todos = new Todos(this);
    //footer = new Footer(this, todos);

    //updateDisplay();
  }

  /**
   * Save list of task to local storage.
   */
  save() { 
    window.localStorage['todos-dartling-dwt'] = JSON.encode(contacts.toJson());
  }

  /**
   * Update header and footer components on page.
   */
  updateDisplay() {
    //header.updateDisplay();
    //footer.updateDisplay();
    
   /*  panelP.getElement().style.border = "3px solid #00c";
     panelP.getContentWidget().getElement().style.margin = "5px 10px 10px 10px";
     panelP.getContentWidget().getElement().style.padding = "10px 10px 10px 10px";
     panelP.getContentWidget().getElement().style.border = "1px solid #ccf";

    
    panelP.add(panelL);
    panelP.add(panelF);
    ui.RootPanel.get().add(panelP);*/
  }
}

