<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Brazzifier</title>
    <style>
        body {
            font-family: Arial;
        }
        #output {
            width:50%;
        }
    </style>
    <script type="text/javascript">
        window.onunload = function (e) {
            PageMethods.Closing_2(onSuccess,onFailure);
        };
        function onSuccess(e) {

        }
        function onFailure(e) {

        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        
    <asp:ScriptManager ID="scriptman" runat="server" EnablePageMethods="true">
    </asp:ScriptManager>
        <div>
            <h1>Brazzifier</h1>
            <h2>Brazzifiy your images with this simple Website!</h2>
            <div id="legal">Brazzer is a Logo by the Brazzer company. This site isn't built to generate profit for me or anyone else, just for fun!</div><br />
            <asp:FileUpload ID="image" runat="server" /><br />
            <asp:Button ID="start" runat="server" Text="Start!" /><br />
            <asp:Image ID="output" runat="server" />

        </div>
    </form>
</body>
</html>
