<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPages/Master.Master" AutoEventWireup="true" CodeBehind="all.aspx.cs" Inherits="hamburgers.admin.all" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" runat="server" DataKeyNames="IdProduto" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            IdProduto:
            <asp:Label ID="IdProdutoLabel1" runat="server" Text='<%# Eval("IdProduto") %>' />
            <br />
            nome:
            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            preco:
            <asp:TextBox ID="precoTextBox" runat="server" Text='<%# Bind("preco") %>' />
            <br />
            desc:
            <asp:TextBox ID="descTextBox" runat="server" Text='<%# Bind("desc") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
        <InsertItemTemplate>
            IdProduto:
            <asp:TextBox ID="IdProdutoTextBox" runat="server" Text='<%# Bind("IdProduto") %>' />
            <br />
            nome:
            <asp:TextBox ID="nomeTextBox" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            preco:
            <asp:TextBox ID="precoTextBox" runat="server" Text='<%# Bind("preco") %>' />
            <br />
            desc:
            <asp:TextBox ID="descTextBox" runat="server" Text='<%# Bind("desc") %>' />
            <br />
            <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
            &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </InsertItemTemplate>
        <ItemTemplate>
            IdProduto:
            <asp:Label ID="IdProdutoLabel" runat="server" Text='<%# Eval("IdProduto") %>' />
            <br />
            nome:
            <asp:Label ID="nomeLabel" runat="server" Text='<%# Bind("nome") %>' />
            <br />
            preco:
            <asp:Label ID="precoLabel" runat="server" Text='<%# Bind("preco") %>' />
            <br />
            desc:
            <asp:Label ID="descLabel" runat="server" Text='<%# Bind("desc") %>' />
            <br />
            <asp:LinkButton ID="EditButton" runat="server" CausesValidation="False" CommandName="Edit" Text="Edit" />
            &nbsp;<asp:LinkButton ID="DeleteButton" runat="server" CausesValidation="False" CommandName="Delete" Text="Delete" />
            &nbsp;<asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
        </ItemTemplate>
    </asp:FormView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectHamburgers %>" DeleteCommand="DELETE FROM [produtos] WHERE [IdProduto] = @original_IdProduto AND [nome] = @original_nome AND [preco] = @original_preco AND [desc] = @original_desc" InsertCommand="INSERT INTO [produtos] ([IdProduto], [nome], [preco], [desc]) VALUES (@IdProduto, @nome, @preco, @desc)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [produtos]" UpdateCommand="UPDATE [produtos] SET [nome] = @nome, [preco] = @preco, [desc] = @desc WHERE [IdProduto] = @original_IdProduto AND [nome] = @original_nome AND [preco] = @original_preco AND [desc] = @original_desc">
        <DeleteParameters>
            <asp:Parameter Name="original_IdProduto" Type="Int32" />
            <asp:Parameter Name="original_nome" Type="String" />
            <asp:Parameter Name="original_preco" Type="Decimal" />
            <asp:Parameter Name="original_desc" Type="String" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="IdProduto" Type="Int32" />
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="preco" Type="Decimal" />
            <asp:Parameter Name="desc" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="nome" Type="String" />
            <asp:Parameter Name="preco" Type="Decimal" />
            <asp:Parameter Name="desc" Type="String" />
            <asp:Parameter Name="original_IdProduto" Type="Int32" />
            <asp:Parameter Name="original_nome" Type="String" />
            <asp:Parameter Name="original_preco" Type="Decimal" />
            <asp:Parameter Name="original_desc" Type="String" />
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
