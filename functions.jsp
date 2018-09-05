<link class="jsbin" href="http://ajax.googleapis.com/ajax/libs/jqueryui/1/themes/base/jquery-ui.css" rel="stylesheet" type="text/css" />
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jquery/1/jquery.min.js"></script>
<script class="jsbin" src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.8.0/jquery-ui.min.js"></script>
<!---------  Check email -------------------------->
<script>
 function check_useremail()
            {
               var request=new XMLHttpRequest();
                
               
                var val=document.getElementById("email").value;
                var url="emailCheck.jsp?email="+val;
                request.open("GET",url,true);
                request.send();
                
                request.onreadystatechange=function ()
                {
                    if(request.readyState==4)
                    {
                        document.getElementById("lid1").innerHTML=request.responseText;
                    }
                }
                
                
            }
            
   //---------------------------display model-------------------------------------------
   function display_model(brand)
    {
      var request=new XMLHttpRequest();
      request.open("GET","fetch_model.jsp?brand="+brand,true);
      request.send();
       request.onreadystatechange=function()
      {
           if(request.readyState==4)
                    {
                        document.getElementById("model").innerHTML=request.responseText;
                    }
      }
       
       
   }
            
   //---------------------------------display variant----------------------         
function display_variant(model)
    {
      var request=new XMLHttpRequest();
      request.open("GET","fetch_variant.jsp?model="+model,true);
      request.send();
       request.onreadystatechange=function()
      {
           if(request.readyState==4)
                    {
                        document.getElementById("variant").innerHTML=request.responseText;
                    }
      }
       
       
   }          
  //--------------- image url---------------------------
       function readURL1(input) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();

            reader.onload = function (e) {
                $('#img1')
                    .attr('src', e.target.result)
                    .width(148)
                    .height(93);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
</script>

