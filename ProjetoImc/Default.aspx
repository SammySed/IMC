<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ProjetoImc.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>IMC</title>
    <link  rel="shortcut icon" href="img/icon.ico" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <style type="text/css">
            body {
                background: #05183d !important;
            }
        </style>
        <br />
        <div class="container">
            <div class ="row">
                <div class="col-md-12 text-center text-warning">
                    <h2>Calculo do Índice de Massa Corpórea(IMC)</h2>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-4 text-warning">
                    <label>Digite seu Peso</label>
                    <asp:RequiredFieldValidator ID="rfvPeso" ControlToValidate="txtPeso" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtPeso" runat="server" placeholder="Digite aqui..." CssClass="form-control"></asp:TextBox>
                </div>
                <div class="col-md-4 text-warning">
                    <label>Digite sua Altura</label>
                    <asp:RequiredFieldValidator ID="rfvAlt" ControlToValidate="txtAlt" ErrorMessage="*" ForeColor="Red" runat="server"></asp:RequiredFieldValidator>
                    <asp:TextBox ID="txtAlt" runat="server" placeholder="Digite aqui..." CssClass="form-control"></asp:TextBox>
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-3">
                    <asp:Button ID="btnCalcular" runat="server" Text="Calcular" CssClass="btn btn-secondary form-control" OnClick="btnCalcular_Click" />
                </div>
            </div>
            <br />
            <div class="row">
                <div class="col-md-12">
                    <asp:Label ID="lblResult" runat="server"></asp:Label>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
