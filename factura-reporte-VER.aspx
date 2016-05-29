﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="factura-reporte-VER.aspx.vb" Inherits="factura_reporte_VER" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/leaf.png" type="image/x-icon">
    <title>Leaf :: Ver Reportes</title>

    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/shop-item.css" rel="stylesheet">

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body>

    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html"><span class="glyphicon glyphicon-leaf green"></span>&nbsp &nbspLeaf Facturacion</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="acerca.html">Acerca</a>
                    </li>

                    <li class="dropdown">
                        <a href="clientes-administrar.html" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-user"></span>&nbsp&nbsp Clientes <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="clientes-administrar.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Clientes</a></li>
                            <li><a href="clientes-listado.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Clientes</a></li>
                            <li class="divider"></li>
                            <li><a href="clientes-empresas-adm.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Empresas</a></li>
                            <li><a href="clientes-empresas-lis.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Empresas</a></li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="productos-administrar.html" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp&nbsp Productos <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="productos-administrar.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Productos</a></li>
                            <li><a href="productos-listado.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Productos</a></li>
                            <li class="divider"></li>
                            <li><a href="productos-categorias-adm.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Categorias</a></li>
                            <li><a href="productos-categorias-lis.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Categorias</a></li>
                        </ul>
                    </li>   

                    <li class="active">
                        <a href="factura.html"><span class="glyphicon glyphicon-save-file"></span>&nbsp&nbsp Facturas</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Page Content -->
    <div class="container sect">

        <div class="row">

            <div class="col-md-3">
                <p class="lead">Facturas</p>
                <div class="list-group">
                    <a href="factura.html" class="list-group-item"><span class="glyphicon glyphicon-pencil"></span>&nbsp &nbsp Nueva Factura</a>
                    <a href="detalle_factura.html" class="list-group-item"><span class="glyphicon glyphicon-info-sign"></span>&nbsp &nbsp Detalle de Facturas</a>

                </div>
                <div class="list-group">
                    <a href="factura-reporte.html" class="list-group-item active"><span class="glyphicon glyphicon-flag"></span>&nbsp &nbsp Reporte de Facturas</a>
                </div>
            </div>
            
            <div class="col-md-9">
            <div>
                <div class="thumbnail">
                    <div class="caption-full">
                        
                        <form id="form1" runat="server" class="form-horizontal">
                            <h3 style="text-align: right" class="gray">Reportes Factura</h3>
                            <a href="factura-reporte.html" class="btn btn-primary btn-sm" role="button"><span class="glyphicon glyphicon-triangle-left"></span>&nbsp &nbsp Regresar</a>

                            <!-- Formulario -->
                        
                            <br />
                            <br />
                            <asp:GridView ID="GV3" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="Clave Factura" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" AllowSorting="True">
                                <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                <Columns>
                                    <asp:BoundField DataField="Clave Factura" HeaderText="Clave Factura" ReadOnly="True" SortExpression="Clave Factura" />
                                    <asp:BoundField DataField="Nombre Cliente" HeaderText="Nombre Cliente" ReadOnly="True" SortExpression="Nombre Cliente" />
                                    <asp:BoundField DataField="Empresa" HeaderText="Empresa" SortExpression="Empresa" />
                                    <asp:BoundField DataField="Categoria" HeaderText="Categoria" SortExpression="Categoria" />
                                    <asp:BoundField DataField="Producto" HeaderText="Producto" SortExpression="Producto" />
                                    <asp:BoundField DataField="Cantidad" HeaderText="Cantidad" SortExpression="Cantidad" />
                                    <asp:BoundField DataField="Precio" HeaderText="Precio" SortExpression="Precio" />
                                    <asp:BoundField DataField="Fecha Facturacion" HeaderText="Fecha Facturacion" SortExpression="Fecha Facturacion" />
                                </Columns>
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
                        
                        
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacturacionConnectionString %>" SelectCommand="BUSCAR_REPORTE_TODOS" SelectCommandType="StoredProcedure"></asp:SqlDataSource>
                        
                        
                        </div>
                        </form>
                      
                    </div>
                </div>
            </div>

            


        </div>

    </div>
    <!-- /.container -->

    <div class="container">

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p><strong>LEAF</strong>: Sistema Facturacion <span class="glyphicon glyphicon-leaf"></span> 2016</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

</body>

</html>
