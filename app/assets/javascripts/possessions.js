$(document).ready(function() {
  $('.got-rid').click(function() {
    $('.modal--got-rid').toggle();
  });
  $('.modal__close-modal').click(function() {
    $(this).parents('.modal').hide();
  });
});

