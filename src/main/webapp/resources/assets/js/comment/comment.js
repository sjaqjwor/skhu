
$(function() {
  $("#register").click( function() {
           $.ajax({
             
             type: 'POST',
             url: 'notice_comment.do',
             data: $("#comment").serialize(),
             dataType:'json',
             
              success : function(data) {
                 
              
              },error : function(data){
              
                 alert("통신 오류");
              }
          });
 
}); 
})
  $(function() {
     $("#down span").click( function() {
             location.href="download.do?f_id="+$(this).attr("data-url");
   });
 
})

   
 

$(function() {
 $("#file_delete").click( function() {
    var array = new Array();
    if(confirm("삭제하시겠습니까?")==true){
    $("#file:checked").each(function(i){
      array.push(Number($(this).val())); 
    });
  
    
    $.ajax({
          
           type: 'POST',
           url: 'notice_file_delete.do',
           data: {check:JSON.stringify(array)},
           dataType:'json',
           
            success : function(data) {
               for(var i =0;i<array.length;i++){
                  $("."+array[i]).remove();
                  $("."+array[i]).css("display","none");
                  $("#file:checked").remove();
                  $("#all").prop("checked",false);
               }
            
               
               
            },error:function(request,status,error){
                
            }
        });
    }
});
})
$(function() {
   
 $("#board_file_delete").click( function() {
    var array = new Array();
    if(confirm("삭제하시겠습니까?")==true){
    $("#file:checked").each(function(i){
      array.push(Number($(this).val())); 
    });
  
    
    $.ajax({
          
           type: 'POST',
           url: 'board_file_delete.do',
           data: {check:JSON.stringify(array)},
           dataType:'json',
           
            success : function(data) {
               for(var i =0;i<array.length;i++){
                  $("."+array[i]).remove();
                  $("."+array[i]).css("display","none");
                  $("#file:checked").remove();
                  $("#all").prop("checked",false);
               }
            
               
               
            },error:function(request,status,error){
                
            }
        });
    }else
       {
          return;
       }
     
});
})
$(function() {
   
 $(document).on("click", "#adjust", function(e) {
      $.ajax({
          
        type: 'POST',
        url: 'comment_delete.do',
        data: $("#comment_up").serialize(),
        dataType:'json',
        
         success : function(data) {
            location.href="notice_content.do?n_id="+data;
         
         },error : function(data){
            animating = false;
            $(that).removeClass("processing");
            alert("통신 오류");
         }
     });
  });
})
var fk = function() {
      var ac = "";
      if (matchMedia("screen and (max-width: 840px)").matches) {
         ac = "+"
         $("#smart_editor2_content").css("width", "310px");
      } else {
         ac = "글쓰기"
         $("#smart_editor2_content").css("width", "auto");
      }
   }
   
   $(function() {
      var k=0;
      $(".up").click(
                  function() {
                     var tag = "<br class='brl'><input  style='float:left; margin-top: 1% ;'type='file' name='file' multiple /><br class='brl'>"
                     k++;
                     $(tag).appendTo(".files");
                  
                  });
   

      $(".del").click(
                  function() {
                     if(k>=1){
                     $("[type=file]:last").remove();
                     $(".brl:last").remove();
                     $(".brl:last").remove();
                     k--;
                     }
                     
                  });
   
      $("#all").click(
            function() {
               if($("#all").prop("checked")) {
               
                  $("input[type=checkbox]").prop("checked",true);
               
               } else {
                  
                  $("input[type=checkbox]").prop("checked",false);
               }
            });

   
});
   $(function() {
      
       $("#save").click( function() {
          if($("#title").val()==""){
           alert("제목을 입력하세요")
       }
       });
   });

   $(function() {
      
       $("#nt").click( function() {
          location.href="notice.do";
       });
   });
   $(function() {
      
       $("#bd").click( function() {
          location.href="board.do";
       });
   });

   