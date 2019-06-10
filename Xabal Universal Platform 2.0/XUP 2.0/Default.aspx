<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" ViewStateEncryptionMode="Always" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
      <link rel="stylesheet" href="css/Lorem.css">

    <title>Hello, world!</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    <div class="cookiebar bg-dark p-4 hide" aria-hidden="true">
        <p class="text-white">Questo sito utilizza cookie tecnici, analytics e di terze parti.
            <br>Proseguendo nella navigazione accetti l’utilizzo dei cookie.<br>
        </p>
        <p>
            <button data-accept="cookiebar" style="height:50px;" class="waves-effect waves-light btn btn-info mr-2">Accetto</button>
            <a href="" style="height:50px;" class="waves-effect waves-light btn btn-outline-info">Privacy policy</a>
        </p>
    </div>

    <header class="bg-primary">
      <div class="container text-white pt-4 pb-4">
        <h1 class="display-1 display-1 mb-0">XUP 2.0</h1>
      </div>
    </header>
      
      <ul id="slide-out" class="sidenavM bg-primary">
    <li><div class="user-view">
      <div class="background">
        <img src="img/1.jpg">
      </div>
      <a href="#user"><img class="circle" src="img/2.jpg"></a>
      <a href="#name"><span class="white-text name">Alessandro Fiori</span></a>
      <a href="#email"><span class="white-text email"><span class="__cf_email__" data-cfemail="20414c4546494f52491360474d41494c0e434f4d">[email&#160;protected]</span></span></a>
    </div></li>
    <li><a href="#!"><i class="material-icons">cloud</i>First Link With Icon</a></li>
    <li><a href="#!">Second Link</a></li>
    <li><div class="divider"></div></li>
    <li><a class="subheader">Subheader</a></li>
    <li><a class="waves-effect" href="#!">Third Link With Waves</a></li>
          <li><a class="nav-item nav-link text-white pl-3 pr-3 mr-3 border border-white" href="#tipografia">Tipografia</a></li>
            <li><a class="nav-item nav-link text-white pl-3 pr-3 mr-3 border border-white" href="#tabelle">Tabelle</a></li>
            <li><a class="nav-item nav-link text-white pl-3 pr-3 mr-3 border border-white" href="#griglie">Griglie</a></li>
            <li><a class="nav-item nav-link text-white pl-3 pr-3 mr-3 border border-white" href="#form">Elementi Form</a></li>
            <li><a class="nav-item nav-link text-white pl-3 pr-3 mr-3 border border-white" href="#componenti">Componenti</a></li>
  </ul>

    <div class="container">
        
        <!--<a href="#" data-target="slide-out" class="sidenavM-trigger"><i class="material-icons">menu</i></a>-->
        
      <section>
        
<asp:Literal ID="Literal1" runat="server"></asp:Literal>

        </section>
      </div>


      <a href="#" aria-hidden="true" data-attribute="back-to-top" class="back-to-top" id="example">
  <i class="white-text small material-icons">arrow_upward</i>
</a>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
      <script>window.__PUBLIC_PATH__='fonts'</script>
      <script src="js/Lorem.js"></script>
      
      <script>
          $(document).ready(function () {
              $('.sidenavM').sidenavM();
          });
      </script>
      
      <script>
          $(document).ready(function () {
              $('.tooltipped').tooltip();
          });
      </script>
      
      <script>
          $(function () {
              $('[data-toggle="popover"]').popover()
          })
      </script>
      
      <script>
          $(document).ready(function () {
              $('.carouselM').carouselM();
          });
      </script>

    </div>
    </form>
</body>
</html>
