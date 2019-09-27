$(document).ready(function(){
    $("#upload").change(function(){            
        var file=this.files[0];
        var imageFile=file.type;
        var match=["image/jpeg","image/png","image/jpg"];

        if(!((imageFile==match[0]) || (imageFile==match[1]) || (imageFile==match[2]))){
            $("#type").text("Only Jpeg/ Jpg /Png /Gif are allowed");
            return false;
        } else {
            $("#type").hide();
            //alert("required");
            var reader=new FileReader();
            reader.onload=imageIsLoaded;
            reader.readAsDataURL(this.files[0]);
        }
    });

    function imageIsLoaded(e){
        $("#imageReader").attr('src', e.target.result);
        $(".camera").hide();
        $("#imgRead").show();
    }
});	