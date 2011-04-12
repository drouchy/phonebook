$(function() {
  $("#company_contact_tokens").tokenInput("/contacts.json", {
    crossDomain: false,
    prePopulate: $("#company_contact_tokens").data("pre"),
    theme: "facebook"
  });
  
  $(function() {
    $("#contact_company_id").tokenInput("/companies.json", {
      crossDomain: false,
      prePopulate: [$("#contact_company_id").data("pre")],
      theme: "facebook",
      tokenLimit: 1
    });
  });
  
});

