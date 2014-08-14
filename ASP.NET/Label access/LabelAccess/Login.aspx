<%@ Page Language="C#" MasterPageFile="~/Masters/Login.master" AutoEventWireup="true" Culture="auto" UICulture="auto" EnableEventValidation="false" %>

<%--<%@ Import Namespace="Internal.Platform.Diagnostics" %>
<%@ Import Namespace="Internal.Web" %>
<%@ Import Namespace="Internal.Trial" %>--%>

<%--<%@ Register Assembly="Internal.Web.Controls" Namespace="Internal.Web.Controls" TagPrefix="Internal" %>
<%@ Register Assembly="Internal.Web.Controls" Namespace="Internal.Web.Controls.ScriptResourceProvider" TagPrefix="Internal" %>--%>
<%--<%@ Register Assembly="Internal.Trial" Namespace="Internal.Trial" TagPrefix="InternalTrial" %>--%>

<asp:Content ID="Content1" runat="server" ContentPlaceHolderID="ContentPlaceHolderArea">
    <script type="text/javascript">
    </script>
    <asp:Label ID="lblTest" runat="server"></asp:Label>
    <asp:Login ID="intLogin" runat="server" DestinationPageUrl="Default.aspx"
        OnPreRender="PreRender" Font-Names="Arial,Verdana,Sans-sarif" Font-Size="0.8em"
        ForeColor="#000000">
        <LayoutTemplate>
            <div id="logoContainer">
                <div class="logo">
                    <img src="images/icons/logo.png" width="680" height="100"></div>
            </div>
            <div id="logonContainer">
                <div>
                    <div class="LoginBtn1" onclick="lgnUser('pam')">Admin - Pam</div>
                    <div class="User1">
                        <img src="images/icons/user1.png" width="80" height="80"></div>
                    <div class="LoginBtn2" onclick="lgnUser('lee')">Sales - Lee</div>
                    <div class="User2">
                        <img src="images/icons/user2.png" width="80" height="80"></div>
                </div>
                <div>
                    <div class="LoginBtn1" onclick="lgnUser('samantha')">Support - Samantha</div>
                    <div class="User1">
                        <img src="images/icons/user3.png" width="80" height="80"></div>
                    <div class="LoginBtn2" onclick="lgnUser('larry')">Marketing - Larry</div>
                    <div class="User2">
                        <img src="images/icons/user4.png" width="80" height="80"></div>
                </div>
            </div>

            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>

            <asp:Label runat="server" ID="lblTest"></asp:Label>

            <%--<asp:CustomValidator ID="CustomValidator1" ControlToValidate="TextBox1"
                OnServerValidate="ValidateEmail" ValidationGroup="ValidateGp"
                ErrorMessage="This is a custom error validator" runat="server" />--%>

            <asp:Button ID="Button1" runat="server" Text="Button" ValidationGroup="ValidateGp" />

            <%-- These are hidden controls used for the login process --%>
            <asp:TextBox ID="UserName" runat="server" Style="display: none;"></asp:TextBox>
            <%--<asp:CustomValidator ID="UserNameRequired" ValidateEmptyText="True" OnServerValidate="ValidateUserName"
                ClientValidationFunction="" runat="server" ControlToValidate="UserName" ErrorMessage="<%$ resources: UserNameRequired %>"
                ToolTip="<%$ resources: UserNameRequired %>" ValidationGroup="intLogin" Text="<%$ resources: asterisk %>"></asp:CustomValidator>--%>
            <asp:TextBox ID="Password" runat="server" TextMode="Password" Style="display: none;"></asp:TextBox>
            <asp:Button ID="btnLogin" runat="server" CommandName="Login" Style="display: none;" ValidationGroup="intLogin" />
            <asp:Literal ID="FailureText" runat="server" EnableViewState="False"></asp:Literal>

        </LayoutTemplate>
    </asp:Login>
</asp:Content>
<script type="text/C#" runat="server">
    private const string AuthError = "AuthError";

    protected override void OnInit(EventArgs e)
    {
        base.OnInit(e);
        EnsureChildControls();
    }


    protected new void PreRender(object sender, EventArgs e)
    {
        Literal FailureText = (Literal)intLogin.FindControl("FailureText");
        FailureText.Text = "test666";
        //object msg = Internal.Platform.Application.ApplicationContext.Current.State[AuthError];
        //if (msg == null)
        //{
        //    //var pageId = Internal.Platform.Application.ApplicationContext.Current.State["CurrentPageID"];
        //    //var key = pageId + ":" + AuthError;
        //    //msg = Internal.Platform.Application.ApplicationContext.Current.State[key];
        //}
        //if (msg != null)
        //{
        //    //Internal.Platform.Application.ApplicationContext.Current.State.Remove(AuthError);

        //    Literal FailureText = (Literal)intLogin.FindControl("FailureText");
        //    FailureText.Text = msg.ToString();
        //}
    }

</script>
