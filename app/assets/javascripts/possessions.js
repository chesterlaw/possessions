$(document).ready(function() {
  $('.got-rid').click(function() {
    $('.modal--got-rid').toggle();
    $('.white-out').toggle();
  });

  $('.modal__close-modal').click(function() {
    $(this).parents('.modal').hide();
    $('.white-out').hide();
  });

  $('.white-out').click(function() {
    $('.modal').hide();
    $(this).hide();
  });
});

