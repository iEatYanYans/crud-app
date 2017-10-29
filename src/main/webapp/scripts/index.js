    

$(function(){
	//Menu Toggle Script
    $("#menuButton").click(function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
    
    $(".editForm input").prop("disabled", true);
    $(".editForm select").prop("disabled", true);
    
    $("#editButton").on("click", function(event){
    	$(this).closest('.editForm').find('input').prop('disabled', false);
    	$(this).closest('.editForm').find('select').prop('disabled', false);

    });
    
    //activate jQuery Validation plugin
    $('.personForm').validate({
    	rules:{
    		'firstName':{
    			required:true,
    			maxlength: '50',
    			
    		},
    		'lastName':{
    			required:true
    		},
    		'email':{
    			email:true,
    			required: true
    		},
    		'clientId':{
    			required:true,
    			number:true
    		}
    		
    	}
    });
    $('.clientForm').validate({
    	rules:{
    		'companyName': {
    			required:true
    		},
    		'url':{
    			required:true,
    			url:true,
    			
    			normalizer: function( value ) {
    		        var url = value;
    		 
    		        // Check if it doesn't start with http:// or https:// or ftp://
    		        if ( url && url.substr( 0, 7 ) !== "http://"
    		            && url.substr( 0, 8 ) !== "https://"
    		            && url.substr( 0, 6 ) !== "ftp://" ) {
    		          // then prefix with http://
    		          url = "http://" + url;
    		        }
    		 
    		        // Return the new url
    		        return url;
    		      }
    		},
    		'phoneNumber':{
    			required:true,
    			number:true
    		}
    		
    	}
    	
    });

});

function goBack(){
	 window.history.back();
}

function goFoward(){
	 window.history.forward();
}