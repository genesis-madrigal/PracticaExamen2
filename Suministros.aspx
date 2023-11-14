<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suministros.aspx.cs" Inherits="PracticaExamen2.Suministros" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <meta charset="UTF-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous"/>
    <link href="CSS/botones.css" rel="stylesheet" />
    <link href="CSS/gridviewcss.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="container text-center" > 
                <h1>&nbsp;</h1>
                <h1><strong>Suministros</strong></h1>
                <p>&nbsp;</p>
                <p>&nbsp;</p>
            </div>

                <AlternatingRowStyle BackColor="White" ForeColor="#284775">
                <EditRowStyle BackColor="#999999" />
                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                <SortedAscendingCellStyle BackColor="#E9E7E2" />
                <SortedAscendingHeaderStyle BackColor="#506C8C" />
                <SortedDescendingCellStyle BackColor="#FFFDF8" />
                <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
            </asp:GridView>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="sqlSuministros" PageSize="10" HorizontalAlign="Center"  CssClass="mydatagrid" PagerStyle-CssClass="pager" HeaderStyle-CssClass="header" RowStyle-CssClass="rows" AllowPaging="True">
                <Columns>
                    <asp:BoundField DataField="codigoPieza" HeaderText="Código de Pieza" SortExpression="codigoPieza" />
                    <asp:BoundField DataField="idProveedor" HeaderText="ID del Proveedor" SortExpression="idProveedor" />
                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sqlSuministros" runat="server" ConnectionString="<%$ ConnectionStrings:conexion %>" InsertCommand="INSERT INTO SUMINISTRO (codigoPieza, idProveedor, Precio) VALUES (@codigo, @ID, @precio)" SelectCommand="SELECT * FROM [SUMINISTRO]" DeleteCommand="DELETE SUMINISTRO WHERE codigoPieza = @codigo">
                <DeleteParameters>
                    <asp:ControlParameter ControlID="tbCodigoPieza" Name="codigo" PropertyName="Text" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:ControlParameter ControlID="tbCodigoPieza" Name="codigo" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tbIdProveedor" Name="ID" PropertyName="Text" />
                    <asp:ControlParameter ControlID="tbPrecio" Name="precio" PropertyName="Text" />
                </InsertParameters>
            </asp:SqlDataSource>
            <br />
            <br />
            <h4>
            <asp:Label ID="lblCodigoPieza" runat="server" Text="Código de pieza:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbCodigoPieza" runat="server"></asp:TextBox>
            </h4>
            <br />
            <h4>
            <asp:Label ID="lblIdProveedor" runat="server" Text="ID del Proveedor:"></asp:Label>
&nbsp;&nbsp;&nbsp; <asp:TextBox ID="tbIdProveedor" runat="server"></asp:TextBox>
            </h4>
            <br />
            <h4>
            <asp:Label ID="lblPrecio" runat="server" Text="Precio:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="tbPrecio" runat="server"></asp:TextBox>
            </h4>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
            <br />
            <br />
            <br />
            <asp:Button ID="btnAgregar" CSSClass="button button-hover" runat="server" Text="Agregar" OnClick="btnAgregar_Click" />
&nbsp;
            <asp:Button ID="btnConsultar" CSSClass="button button-hover" runat="server" Text="Consultar" />
&nbsp;
            <asp:Button ID="btnEliminar" CSSClass="button button-hover" runat="server" Text="Eliminar" OnClick="btnEliminar_Click" />
        </div>
    </form>
</body>
</html>
