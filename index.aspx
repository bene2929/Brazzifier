<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Brazzifier</title>
    <script src="./jquery_ui/external/jquery/jquery.js" type="text/javascript"></script>
    <script src="./jquery_ui/jquery-ui.js" type="text/javascript"></script>
    <link href="./jquery_ui/jquery-ui.css" rel="stylesheet" />
    <style>
        body {
            font-family: Arial;
            z-index: 0;
        }

        #output {
            width: 50%;
        }

        #error {
            color: darkred;
        }

        .bottom_top {
            position: fixed;
            bottom: 1%;
            z-index: 99;
        }
    </style>
    <script type="text/javascript">
        window.onunload = function (e) {
            PageMethods.Closing_2(onSuccess, onFailure);
        };
        function onSuccess(e) {

        }
        function onFailure(e) {

        }
        $("body").ready(function () {
            $("input").button();
        });

    </script>
</head>
<body>
    <form id="form1" runat="server">

        <asp:ScriptManager ID="scriptman" runat="server" EnablePageMethods="true">
        </asp:ScriptManager>
        <div>
            <h1>Brazzifier</h1>
            <h2>Brazzifiy your images with this simple Website!</h2>
            <div id="legal">Brazzer is a Logo by the Brazzer company. This site isn't built to generate profit for me or anyone else, just for fun!</div>
            <div class="bottom_top">
                Created by: <a href="https://twitter.com/bene2929">@bene2929</a>
            </div>
            <br />
            <asp:FileUpload ID="image" runat="server" /><br />
            <asp:Button ID="start" runat="server" Text="Start!" /><br />
            <asp:Image ID="output" runat="server" /><br />
            <asp:Label ID="error" runat="server" Text=""></asp:Label>
        </div>

    </form>
</body>
</html>
