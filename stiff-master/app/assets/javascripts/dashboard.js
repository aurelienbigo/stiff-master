$(document).ready(function() {

  //show form modify address on click
  $('.btn-modif-address').click(function() {
    var address = $(this).data('id');
    var form = $(".form-modify-address[data-id=" + address + "]")[0];
    if (form.style.display === 'none') {
        form.style.display = 'block';
        $('html, body').animate({ scrollTop: 2000 }, 500);
    } else {
        form.style.display = 'none';
    }
  });

  //show form new address on click
  $('#btn-new-address').click(function() {
    var form = $("#form-new-other-address")[0];
    if (form.style.display === 'none') {
        form.style.display = 'block';
        $('html, body').animate({ scrollTop: 2000 }, 500);
    } else {
        form.style.display = 'none';
    }
  });
});
