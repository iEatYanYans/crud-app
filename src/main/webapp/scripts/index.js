    

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
    		'lastName': required,
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
    		'companyName': required,
    		'url':{
    			required:true,
    			url:true
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