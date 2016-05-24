<%@ Page Language="VB" AutoEventWireup="false" CodeFile="detalle_factura-MODIFICAR.aspx.vb" Inherits="detalle_factura_MODIFICAR" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="icon" href="img/leaf.png" type="image/x-icon">
    <title>Leaf :: Modificar Detalles Factura</title>

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
                        <a href="#">Acerca</a>
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
                    <a href="detalle_factura.html" class="list-group-item active"><span class="glyphicon glyphicon-info-sign"></span>&nbsp &nbsp Detalle de Facturas</a>

                </div>
                <div class="list-group">
                    <a href="factura-reporte.html" class="list-group-item"><span class="glyphicon glyphicon-flag"></span>&nbsp &nbsp Reporte de Facturas</a>
                </div>
            </div>

            

            <div class="col-md-9">

                <div class="thumbnail">
                    <div class="caption-full">

                        <h4>
                            <a href="#">Detalle de la Factura</a>
                        </h4>
                        <p><i><strong>Modifique </strong></i>los detalles de su factura, como lo son Productos y cantidades.</p>

                        </br>

                        <div align="right">
                            <a href="detalle_factura-INSERTAR.aspx" class="btn btn-primary" role="button"><span class="glyphicon glyphicon-plus-sign"></span>&nbsp Agregar Detalles</a>
                            <a href="detalle_factura-MODIFICAR.aspx" class="btn btn-info" role="button"><span class="glyphicon glyphicon-cog"></span>&nbsp Modificar Detalles</a>
                            <a href="detalle_factura-BORRAR.aspx" class="btn btn-danger" role="button"><span class="glyphicon glyphicon-remove-sign"></span>&nbsp Borrar Factura</a>
                        </div>
                    </div>
                </div>


                <div class="thumbnail">
                    <div class="caption-full">
                       
                        <form id="form1" runat="server" class="form-horizontal">

                            <h3 style="text-align: right" class="gray">Modificar Detalles</h3>
                        

                        <!-- Formulario -->
                        
                            <div>
                                    <label >Clave Factura:</label>
                                    <asp:TextBox ID="idfac" runat="server" CssClass="form-control" placeholder="Clave Factura"></asp:TextBox>
                            </div>

                            <br />
                            <div>
                                    <label >Clave Producto:</label>
                                    <asp:TextBox ID="id_prod" runat="server" CssClass="form-control" placeholder="Clave Producto"></asp:TextBox>
                            </div>
                                
                            <br />
                            <div>
                                    <label >Nueva Cantidad:</label>
                                    <asp:TextBox ID="nva_cantidad" runat="server" CssClass="form-control" placeholder="Cantidad a corregir"></asp:TextBox>
                            </div>

                            <br />
                            <div>
                                    <label >Cantidad Erronea:</label>
                                    <asp:TextBox ID="cantidad_e" runat="server" CssClass="form-control" placeholder="Nueva Cantidad"></asp:TextBox>
                            </div>

                            <br />
                            <div>
                                    <label >IVA:</label>
                                    <asp:TextBox ID="iva" runat="server" CssClass="form-control" placeholder="Impuesto al Valor Agregado"></asp:TextBox>
                            </div>

                            <br />
                            <div>
                                    <label >Precio Unitario:</label>
                                    <asp:TextBox ID="precio_u" runat="server" CssClass="form-control" placeholder="Precio Unitario Producto"></asp:TextBox>
                            </div>

                            

                            
                            <br />
                            <a href = "detalle_factura-MODIFICAR.aspx" class = "btn" role = "button"><span class="glyphicon glyphicon-erase"></span>&nbsp Limpiar</a>
                            
                            
                            <br />
                                <asp:Button ID="Button1" runat="server" Text="MODIFICAR"></asp:Button>
                            <br />


                            <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                            
                        
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacturacionConnectionString %>" SelectCommand="MODIFICAR_DETALLE" SelectCommandType="StoredProcedure">
                                <SelectParameters>
                                    <asp:ControlParameter ControlID="idfac" Name="ClaveFactura" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="id_prod" Name="ClaveProducto" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="nva_cantidad" Name="Cantidad" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="cantidad_e" Name="CantidadModi" PropertyName="Text" Type="Int32" />
                                    <asp:ControlParameter ControlID="iva" Name="Iva" PropertyName="Text" Type="Double" />
                                    <asp:ControlParameter ControlID="precio_u" Name="PrecioU" PropertyName="Text" Type="Decimal" />
                                </SelectParameters>
                            </asp:SqlDataSource>
                            
                        
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
