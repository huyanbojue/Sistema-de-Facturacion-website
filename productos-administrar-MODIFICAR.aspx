<%@ Page Language="VB" AutoEventWireup="false" CodeFile="productos-administrar-MODIFICAR.aspx.vb" Inherits="productos_administrar_MODIFICAR" %>

<!DOCTYPE html>
<html lang="en"/>

    <html xmlns="http://www.w3.org/1999/xhtml">

    <head runat="server">
        <meta charset="utf-8"/>
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1"/>
        <meta name="description" content=""/>
        <meta name="author" content=""/>
        <link rel="icon" href="img/leaf.png" type="image/x-icon"/>
            <title>Leaf :: Modificar Producto</title>
        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet"/>

        <!-- Custom CSS -->
        <link href="css/shop-item.css" rel="stylesheet"/>
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

                        <li class="dropdown active">
                            <a href="productos-administrar.html" class="dropdown-toggle" data-toggle="dropdown"><span class="glyphicon glyphicon-shopping-cart"></span>&nbsp&nbsp Productos <span class="caret"></span></a>
                                 <ul class="dropdown-menu">
                                     <li><a href="productos-administrar.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Productos</a></li>
                                     <li><a href="productos-listado.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Productos</a></li>
                                     <li class="divider"></li>
                                     <li><a href="productos-categorias-adm.html"><span class="glyphicon glyphicon-chevron-right"></span>&nbsp Administrar Categorias</a></li>
                                     <li><a href="productos-categorias-lis.html"><span>&nbsp&nbsp&nbsp&nbsp</span>&nbsp Listado Categorias</a></li>
                                 </ul>    
                        </li>   

                        <li>
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
                        <p class="lead">Productos</p>
                        <div class="list-group">

                            <a href="productos-administrar.html" class="list-group-item active"><span class="glyphicon glyphicon-folder-open"></span>&nbsp &nbsp Administrar Productos</a>
                        
                            <a href="productos-listado.html" class="list-group-item"><span class="glyphicon glyphicon-search"></span>&nbsp &nbsp Listado de Productos</a>
                        </div>

                        <p class="lead">Categorias</p>
                        <div class="list-group">

                            <a href="productos-categorias-adm.html" class="list-group-item"><span class="glyphicon glyphicon-folder-close"></span>&nbsp &nbsp Administrar Categorias</a>
                        
                            <a href="productos-categorias-lis.html" class="list-group-item"><span class="glyphicon glyphicon-search"></span>&nbsp &nbsp Listado de Categorias</a>
                        </div>
                    </div>

                <div class="col-md-9">

                    <div class="thumbnail">
                        <div class="caption-full">
                        
                            <h4><a href="#">Administrador de Productos</a>
                            </h4>
                        
                            <p><i><strong>Inserte, Modifique y Elimine </strong></i>registros de la base de datos <strong>Productos</strong></p>

                            </br>
                        
                            <div  align="right">
                                <a href = "productos-administrar-INSERTAR.aspx" class = "btn btn-primary" role = "button"><span class="glyphicon glyphicon-plus"></span>&nbsp Insertar</a>    
                                <a href = "productos-administrar-MODIFICAR.aspx" class = "btn btn-info" role = "button"><span class="glyphicon glyphicon-wrench"></span>&nbsp Modificar</a>
                                <a href = "productos-administrar-BORRAR.aspx" class = "btn btn-danger" role = "button"><span class="glyphicon glyphicon-trash"></span>&nbsp Borrar</a>    
                            </div>

                        </div>
                    </div>
            


                <!-- INSERTAR -->
                <div>
                    <div class="thumbnail">
                        <div class="caption-full">
                        
                            <form id="form1" runat="server" class="form-horizontal">

                                <h3 style="text-align: right" class="gray">Modificar Producto</h3>
                        

                            <!-- Formulario -->
                        
                                <div>
                                        <label >Clave Producto:</label>
                                        <asp:TextBox ID="idprod" runat="server" CssClass="form-control" placeholder="Clave Producto"></asp:TextBox>
                                </div>

                                <br />
                                <div>
                                        <label >Clave Categoria:</label>
                                        <asp:TextBox ID="idcat" runat="server" CssClass="form-control" placeholder="Clave Categoria"></asp:TextBox>
                                </div>
                                
                                <br />
                                <div>
                                        <label >Nombre del Producto:</label>
                                        <asp:TextBox ID="nom" runat="server" CssClass="form-control" placeholder="Nombre del Producto"></asp:TextBox>
                                </div>

                                <br />
                                <div>
                                        <label >Descripcion:</label>
                                        <asp:TextBox ID="des" runat="server" CssClass="form-control" placeholder="Descripcion (200 caracteres)"></asp:TextBox>
                                </div>

                                <br />
                                <div>
                                        <label >Unidades en existencia:</label>
                                        <asp:TextBox ID="stock" runat="server" CssClass="form-control" placeholder="Unidades en Stock"></asp:TextBox>
                                </div>

                                <br />
                                <div>
                                        <label >Precio Unitario:</label>
                                        <asp:TextBox ID="price" runat="server" CssClass="form-control" placeholder="Precio $ 00.00"></asp:TextBox>
                                </div>

                                <br />
                                <a href = "productos-administrar-MODIFICAR.aspx" class = "btn" role = "button"><span class="glyphicon glyphicon-erase"></span>&nbsp Limpiar</a>
                            
                            
                                <br />
                                    <asp:Button ID="Button1" runat="server" Text="MODIFICAR"></asp:Button>
                                <br />


                                <asp:GridView ID="GridView1" runat="server" DataSourceID="SqlDataSource1"></asp:GridView>
                            
                        
                                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FacturacionConnectionString %>" SelectCommand="MODIFICAR_PRODUCTO" SelectCommandType="StoredProcedure">
                                    <SelectParameters>
                                        <asp:ControlParameter ControlID="idprod" Name="ClaveProducto" PropertyName="Text" Type="Int32" />
                                        <asp:ControlParameter ControlID="idcat" Name="ClaveCategoria" PropertyName="Text" Type="Int32" />
                                        <asp:ControlParameter ControlID="nom" Name="NombreProducto" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="des" Name="Descripcion" PropertyName="Text" Type="String" />
                                        <asp:ControlParameter ControlID="stock" Name="Existencia" PropertyName="Text" Type="Int32" />
                                        <asp:ControlParameter ControlID="price" Name="PrecioUnitaro" PropertyName="Text" Type="Decimal" />
                                    </SelectParameters>
                                </asp:SqlDataSource>
                            
                        
                            </div>
                            </form>
                      
                          
                        </div>
                    </div>
                </div>




            <!-- FIN COL-9 -->
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
