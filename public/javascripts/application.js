$(function() {
  $("#company_contact_tokens").tokenInput("/contacts.json", {
    crossDomain: false,
    prePopulate: $("#company_contact_tokens").data("pre"),
    theme: "facebook"
  });
});

