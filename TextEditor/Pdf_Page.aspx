<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Pdf_Page.aspx.cs" Inherits="TextEditor.Pdf_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
              <div id="test" oncontextmenu="return false" style="overflow: auto">
            <iframe src="PDF_File/algorithms_4th_edition.pdf#toolbar=0&navpanes=0&scrollbar=1" style="pointer-events: none;overflow: auto" width="1000" height="1000"></iframe>
        </div>
        </div>
    </form>
</body>
</html>
