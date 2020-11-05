<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Editor.aspx.cs" Inherits="TextEditorWeb.Editor" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Text Editor With JQuery</title>
    <link href="CSS/demo.css" rel="stylesheet" type="text/css" />
    <link href="CSS/jquery-te-1.4.0.css" rel="stylesheet" type="text/css" />

   
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtEditor" TextMode="MultiLine" runat="server" CssClass="textEditor"
            onblur="Test()"></asp:TextBox>
   

        <button type="submit" id="Save">Save </button>

        <button type="submit" id="Get">Get </button>


    </div>
    </form>
</body>
<script src="JS/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="JS/jquery-te-1.4.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    $('.textEditor1').jqte();
    $(".textEditor").jqte({ blur: function () {
     
    }
    });
</script>


       <script>
           $(document).ready(function () {

               $('#Save').click(function () {
                   debugger;
                   var textEditor = { textEditor: $('#txtEditor').val() };
                   debugger;
                   $.ajax({
                       type: "POST",
                       url: $(location).attr('href') + "/Save",
                       data: JSON.stringify(textEditor),
                       contentType: "application/json",
                       dataType: "json",
                       async: false,
                       success: function (data) {
                           var result = data.d;
                           debugger;

                           if (result >= 0) {
                               alert('Data Saved');
                               $('#txtEditor').val("");
                           }
                           else {
                               alert('Data Not Saved');
                           }

                       }

                   });
               });

               $('#Get').click(function () {
                   debugger;
                   $.ajax({
                       type: "POST",
                       url: $(location).attr('href') + "/Get",
                       data: '',
                       contentType: "application/json",
                       dataType: "json",
                       async: false,
                       success: function (data) {
                           var result = data.d;
                           debugger;

                           if (result.ID > 0) {
                          
                               $('#txtEditor').val(data.d.Text);
                           }
                           else {
                               alert('Data Not Saved');
                           }

                       }

                   });

               });
               
           });




    </script>
</html>
