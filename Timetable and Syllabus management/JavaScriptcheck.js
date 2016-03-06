
         function ValidateCheckBox(sender, args) {
             if (document.getElementById("<%=CheckBoxList3.ClientID %>").checked == true) {
                 args.IsValid = true;
             } else {
                 args.IsValid = false;
             }
         }
        