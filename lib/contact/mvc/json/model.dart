part of contact_mvc;

// http://www.json.org/
// http://jsonformatter.curiousconcept.com/

// lib/contact/mvc/json/model.dart

var contactMvcModelJson = r'''
{
    "width":990,
    "height":580,
    "boxes":[
        {
            "name":"Contact",
            "entry":false,
            "x":240,
            "y":233,
            "width":120,
            "height":120,
            "items":[
                {
                    "sequence":10,
                    "name":"cles",
                    "category":"identifier",
                    "type":"String",
                    "init":"",
                    "essential":true,
                    "sensitive":false
                },
                {
                    "sequence":20,
                    "name":"nom",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                },
                {
                    "sequence":30,
                    "name":"prenom",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                },
                {
                    "sequence":40,
                    "name":"phone",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                },
                {
                    "sequence":50,
                    "name":"email",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                },
                {
                    "sequence":60,
                    "name":"adresse",
                    "category":"attribute",
                    "type":"String",
                    "init":"",
                    "essential":false,
                    "sensitive":false
                }
            ]
        }
    ],
    "lines":[
        
    ]
}
''';
  