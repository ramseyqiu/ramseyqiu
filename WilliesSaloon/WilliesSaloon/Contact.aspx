<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="WilliesSaloon.Contact" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Welcome to contact us!</h1>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
<p>Your Name:</p>
<p>
    <asp:TextBox ID="NameTextBox" runat="server" Height="30px" Width="302px" OnTextChanged="NameTextBox_TextChanged"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="NameTextBox" ErrorMessage="please enter your name">*</asp:RequiredFieldValidator>
</p>
<p>Your Email</p>
<p>
    <asp:TextBox ID="EmailTextBox" runat="server" Height="26px" Width="300px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="Please tell us your Email address">*</asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="EmailTextBox" ErrorMessage="enter a valid email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
</p>
<p>What you want to tell us</p>
<p>
    <asp:TextBox ID="MessageTextBox" runat="server" Height="109px" Width="302px"></asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="MessageTextBox" ErrorMessage="please tell us somethings">*</asp:RequiredFieldValidator>
</p>
<p>
    <asp:Button ID="SubmitButton" runat="server" Height="72px" OnClick="SubmitButton_Click" Text="Submit" Width="148px" />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" InsertCommand="INSERT INTO Contact(Name, Email, Message) VALUES (@name, @email, @message)" SelectCommand="SELECT * FROM [Contact]">
        <InsertParameters>
            <asp:ControlParameter ControlID="NameTextBox" Name="name" PropertyName="Text" />
            <asp:ControlParameter ControlID="EmailTextBox" Name="email" PropertyName="Text" />
            <asp:ControlParameter ControlID="MessageTextBox" Name="message" PropertyName="Text" />
        </InsertParameters>
    </asp:SqlDataSource>
</p>
</asp:Content>
