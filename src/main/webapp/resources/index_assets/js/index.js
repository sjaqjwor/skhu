
$(function() {
    $("#f1").click(function() {
    	
    	$("#title").fadeOut('slow');
        $("#f1").fadeOut('slow');
        $("#f2").fadeOut('slow');
        $("#f3").fadeOut('slow');
        $("#f4").fadeOut('slow',loginView);
    });
    $("#f2").click(function() {
    	$("#title").fadeOut('slow');
        $("#f1").fadeOut('slow');
        $("#f2").fadeOut('slow');
        $("#f3").fadeOut('slow');
        $("#f4").fadeOut('slow');
    });
    $("#f3").click(function() {
    	$("#title").fadeOut('slow');
        $("#f1").fadeOut('slow');
        $("#f2").fadeOut('slow');
        $("#f3").fadeOut('slow');
        $("#f4").fadeOut('slow');
    });
    $("#f4").click(function() {
    	$("#title").fadeOut('slow');
        $("#f1").fadeOut('slow');
        $("#f2").fadeOut('slow');
        $("#f3").fadeOut('slow');
        $("#f4").fadeOut('slow');
    });
    
    
    
   function loginView(){
	   $(".demo").fadeIn('slow');
   }
    
   /-- login function --/ 
   var animating = false,
   submitPhase1 = 1100,
   submitPhase2 = 400,
   logoutPhase1 = 800,
   $login = $(".login"),
   $app = $(".app");
  
  function ripple(elem, e) {
    $(".ripple").remove();
    var elTop = elem.offset().top,
        elLeft = elem.offset().left,
        x = e.pageX - elLeft,
        y = e.pageY - elTop;
    var $ripple = $("<div class='ripple'></div>");
    $ripple.css({top: y, left: x});
    elem.append($ripple);
  };
  
  $(document).on("click", "#close", function(e) {
    if (animating) return;
    animating = true;
    var that = this;
    ripple($(that), e);
    $(that).addClass("processing");
    setTimeout(function() {
      $(that).addClass("success");
      setTimeout(function() {
        $app.show();
        $app.css("top");
        $app.addClass("active");
      }, submitPhase2 - 70);
      setTimeout(function() {
        $login.hide();
        $login.addClass("inactive");
        animating = false;
        $(that).removeClass("success processing");
        location.href="index.do";
      }, submitPhase2);
    }, submitPhase1);
  });
  $(document).on("click", "#log", function(e) {
	    if (animating) return;
	    animating = true;
	    var that = this;
	    ripple($(that), e);
	    $(that).addClass("processing");
	    setTimeout(function() {
	      $(that).addClass("success");
	      setTimeout(function() {
	        $app.show();
	        $app.css("top");
	        $app.addClass("active");
	      }, submitPhase2 - 70);
	      setTimeout(function() {
	        $login.hide();
	        $login.addClass("inactive");
	        animating = false;
	        $(that).removeClass("success processing");
	        $.ajax({
			    
	    		type: 'POST',
	    		url: 'login_processing.do',
	    		data: $(".login__form").serialize(),
	    		
	    	    success : function(data) {
	    	    	$(".demo_").css("display","inherit");
	    	    	$(".demo_ > .login.inactive").css("display","inherit");
	    	    	$(".demo_ > .login.inactive").css("opacity","1");
	    	    },error : function(data){
	    	    	
	    	    }
	    	});
	      }, submitPhase2);
	    }, submitPhase1);
	  });
  
  $(document).on("click", ".app__logout", function(e) {
    if (animating) return;
    $(".ripple").remove();
    animating = true;
    var that = this;
    $(that).addClass("clicked");
    setTimeout(function() {
      $app.removeClass("active");
      $login.show();
      $login.css("top");
      $login.removeClass("inactive");
    }, logoutPhase1 - 120);
    setTimeout(function() {
      $app.hide();
      animating = false;
      $(that).removeClass("clicked");
    }, logoutPhase1);
  });
})