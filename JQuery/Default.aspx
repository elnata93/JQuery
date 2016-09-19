<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="JQuery.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>JQuery Ejemplo</title>
    <script src="Script/jquery-1.7.1.min.js" type="text/javascript"></script>
    <script src="Script/jquery.bxGallery.1.1.min.js" type="text/javascript"></script>
    <script>
        $(document).ready(function(){
                    $("#gallery_output img").not(":first").hide();

                    $("#gallery a").click(function(){
                    if($("#" + this.rel).is(":hidden")){
                        $("#gallery_output img").slideUp();
                        $("#" + this.rel).slideDown();
                    }
                });

            });
    </script>

    <style type="text/css">
        #gallery img{
            border:none;
        }

        #gallery_nav{
            float:left;
            width:567px;
            text-align:center;
        }

        #gallery_output {
            float:left;
            width:800px;
            height:550px;
            overflow:hidden;
        }

        #gallery_output img{
            display:block;
            margin:20px auto 0 auto;
            height:518px;
            margin:20px auto 0 auto;
        }

       
    </style>
</head>
<body>
    <form id="form2" runat="server">
    <div>

       <div id="gallery">
           <div id="gallery_nav">
               <a rel="img1" href="javascript:;">
               <img src="Style/01.jpg" style="height:189px; width:154px"/></a>
               <a rel="img2" href="javascript:;">
               <img src="Style/02.jpg" style="height:189px; width:154px"/></a>
               <a rel="img3" href="javascript:;">
               <img src="Style/03.jpg" style="height:189px; width:154px"/></a>

           <div id="gallery_output">
               <img id="img1" src="Style/01.jpg"/>
               <img id="img2" src="Style/02.jpg"/>
               <img id="img3" src="Style/03.jpg"/>

           </div>
             
           <div class="clear"></div>
        </div>
        </div>
    </div>
    </form>
</body>
</html>