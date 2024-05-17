<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ViewProductPradeep.aspx.cs" Inherits="RevalsysCrudOperation.ViewProductPradeep" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style2 {
            width: 100px;
            margin: auto;
        }

        table {
            margin: auto;
            width: 540px;
        }

        .auto-style3 {
            text-align: center;
            font-size: larger;
            width: 180px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table cellpadding="2" cellspacing="3">
                <tr>
                    <td class="auto-style3">ProductDetails</td>
                </tr>
                <tr>
                    <td class="auto-style2">ProductName<asp:Label runat="server" ForeColor="Red">*</asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtProductName" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtProductName" runat="server" ErrorMessage="Enter ProductName" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Category<asp:Label runat="server" ForeColor="Red">*</asp:Label></td>
                    <td>
                        <asp:DropDownList ID="ddlCategory" runat="server">
                            <asp:ListItem>Select Item</asp:ListItem>
                            <asp:ListItem>Electronics</asp:ListItem>
                            <asp:ListItem>Clothing</asp:ListItem>
                            <asp:ListItem>Books</asp:ListItem>
                        </asp:DropDownList>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="ddlCategory" runat="server" ErrorMessage="Select Item" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">ProductDescription</td>
                    <td>
                        <asp:TextBox ID="txtProductDescription" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtProductDescription" runat="server" ErrorMessage="Enter ProductDescription" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">MRP
                        <asp:Label runat="server" ForeColor="Red">*</asp:Label></td>
                    <td>
                        <asp:TextBox ID="txtMRP" runat="server"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtMRP" runat="server" ErrorMessage="Enter MRP" ForeColor="Red" SetFocusOnError="True" ValidationGroup="vg"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="btnSubmit" runat="server" BackColor="#009933" Text="Submit" OnClick="btnSubmit_Click" ValidationGroup="vg" />
                    </td>
                    <td>&nbsp;</td>
                </tr>

            </table>
            <asp:Label runat="server" ID="IblMsg" ForeColor="Green"></asp:Label>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" Caption="Product Editing" HorizontalAlign="Center"
                OnRowDeleting="GridView1_RowDeleting" DataKeyNames="ProductID" 
                OnRowEditing="GridView1_RowEditing" OnRowCancelingEdit="GridView1_RowCancelingEdit"
                OnRowUpdating="GridView1_RowUpdating">
                <HeaderStyle BackColor="Yellow" ForeColor="Red" />
                <RowStyle ForeColor="Tomato" BackColor="YellowGreen" />
                <AlternatingRowStyle ForeColor="SlateGray" BackColor="Wheat" />
                <EditRowStyle BackColor="LightCoral" ForeColor="WindowFrame" />
                <Columns>
                    <asp:TemplateField HeaderText="ProductID">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductID" runat="server" Text='<%# Bind("ProductID") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("ProductID") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProductName">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductName" runat="server" Text='<%# Bind("ProductName") %>'></asp:TextBox>

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("ProductName") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Category">
                        <EditItemTemplate>
                            <asp:DropDownList ID="ddlCategory" runat="server">

                                <asp:ListItem>Electronics</asp:ListItem>
                                <asp:ListItem>Clothing</asp:ListItem>
                                <asp:ListItem>Books</asp:ListItem>
                            </asp:DropDownList>

                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label3" runat="server" Text='<%# Bind("Category") %>'></asp:Label>
                        </ItemTemplate>
                        <ItemStyle HorizontalAlign="Right" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="ProductDescription">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtProductDescription" runat="server" Text='<%# Bind("ProductDescription") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label4" runat="server" Text='<%# Bind("ProductDescription") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="MRP">
                        <EditItemTemplate>
                            <asp:TextBox ID="txtMRP" runat="server" Text='<%# Bind("MRP") %>'></asp:TextBox>
                        </EditItemTemplate>
                        <ItemTemplate>
                            <asp:Label ID="Label5" runat="server" Text='<%# Bind("MRP") %>'></asp:Label>
                        </ItemTemplate>
                    </asp:TemplateField>

                    <asp:TemplateField HeaderText="Actions" ItemStyle-BackColor="White" ItemStyle-ForeColor="Blue">
                        <ItemTemplate>
                            <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit"/>
                            <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete"
                                OnClientClick="return confirm('Are you sure of deleting the current record?')" />
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                            <asp:LinkButton ID="LinkCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                        </EditItemTemplate>

                        <ItemStyle BackColor="White" ForeColor="Blue"></ItemStyle>
                    </asp:TemplateField>

                </Columns>
            </asp:GridView>

        </div>
        <div>
        </div>
    </form>
</body>
</html>
