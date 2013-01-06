/* For checkbox synchronize on question index page*/
$(":checkbox").live('click', function(){
  if($(this).is(':checked') && ($(this).attr('id') == "question_ids_")){
    $("#question_all").prop("checked", false);
  }else{
    $("input#question_ids_").each(function() 
    {       
      $(this).prop("checked", false);
    }); 
  }
});
