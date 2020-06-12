$(function() {
$("ul.sub").hide();
  $("li.menu__small_box").hover(
    function() {
      $("ul.sub:not(:animated)", this).slideDown();
    },
    function() {
      $("ul.sub", this).slideUp();
    }
  );
});

