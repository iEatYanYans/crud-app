    

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

});

function goBack(){
	 window.history.back();
}

function goFoward(){
	 window.history.forward();
}