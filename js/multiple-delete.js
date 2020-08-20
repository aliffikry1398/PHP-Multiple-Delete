// SELECT ALL CHECKBOX FOR MULTIPLE DELETE
$('#check_all').click(function(event) {   
  if(this.checked) {
      // Iterate each checkbox
      $(':checkbox').each(function() {
          this.checked = true;                        
      });
  } else {
      $(':checkbox').each(function() {
          this.checked = false;                       
      });
  }
});