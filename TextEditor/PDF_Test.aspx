<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PDF_Test.aspx.cs" Inherits="TextEditor.PDF_Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script src="JS/jquery-1.10.2.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <button type="button" onclick=" OpenPdfPage();">Show PDF </button>
        </div>
         <div id="pdf" >
            <object width="100%" height="650" type="application/pdf" data="PDF_File/algorithms_4th_edition.pdf#zoom=85&scrollbar=0&toolbar=0&navpanes=0" id="pdf_content" style="pointer-events: none;">
                <p>Insert your  messageerror here, if the PDF cannot be displayed.</p>
            </object>
        </div>
     <%--   <div id="test" oncontextmenu="return false">
            <iframe src="PDF_File/algorithms_4th_edition.pdf#toolbar=0&navpanes=0" style="pointer-events: none;" width="1000" height="1000"></iframe>
        </div>--%>

    </form>
    <script>
        $(document).ready(function () {
            $(document).bind("contextmenu", function (e) {
                return false;
            });
         //   document.addEventListener('contextmenu', event => event.preventDefault());

        });
        function OpenPdfPage() {
            debugger;
            var OpenLink = document.createElement("a");
            OpenLink.href = "/Pdf_Page.aspx";
            window.open(OpenLink.href, '_blank');
        }
        //function ShowPDF() {
        //    debugger;
        //    var downloadLink = document.createElement("a");
        //    downloadLink.href = "/PDF_File/algorithms_4th_edition.pdf";
        //    window.open(downloadLink.href, '_blank');
        //}
    </script>
</body>

</html>
