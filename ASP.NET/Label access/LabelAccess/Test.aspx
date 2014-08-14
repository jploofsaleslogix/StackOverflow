<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Test.aspx.cs" Inherits="LabelAccess.Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <script type="text/C#" runat="server">
        protected void btnTest_Click(object sender, EventArgs e)
        {
            System.Web.UI.WebControls.Label lblTest = FindControl("lblTest") as System.Web.UI.WebControls.Label;
            lblTest.Text = "Test";
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label runat="server" ID="lblTest"></asp:Label>
        <asp:Button runat="server" ID="btnTest" OnClick="btnTest_Click" Text="test" />
    </div>
    </form>
</body>
</html>


