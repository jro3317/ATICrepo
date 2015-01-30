<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>\\
%default = "Projects"
{{title if defined('title') else default}}</title>
<style>
@import url(/static/css/all.css);
@import url(/static/css/header.css);
@import url(/static/css/footer.css);
%for stylesheet in addstyles:
@import url(/static/css/{{stylesheet}}.css);
%end
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js">
</script>
<script>
$(document).ready(function() {
  $('div#navb').click(function() {
    $('nav#mainNav').addClass('mobileNav');
    $('header div#navb').addClass('hide');
    $('header div#close').removeClass('hide');
  });
  $('header div#close').click(function() {
    $('nav#mainNav').removeClass('mobileNav');
    $('header div#navb').removeClass('hide');
    $('header div#close').addClass('hide');
  });
});
</script>
</head>
<body>
<header>
<div id="logo"><img src="/static/media/atic.png" alt="ATIC Logo"></div>
<h1>Arlington Technology Innovation Center</h1>
<div id="navb"><img src="/static/media/navburger.svg" alt="navigation icon">
</div>
<div id="close" class="hide"><img src="/static/media/exit.svg"
alt="navigation exit button"></div>
</header>

<nav id="mainNav">
  <span><a href="/">Home</a></span>
  <span><a href="/about">About ATIC</a></span>
  <span><a href="/projectlist">Projects</a></span>
  <span><a href="/contact">Contact Us</a></span>
</nav>

<main>
  %include
</main>

<footer> 
<div class="valid">
<a class="button" href="http://validator.w3.org/check/referer">
<span class="bold">HTML</span> Valid!</a>
&nbsp;
<a class="button"
href="http://jigsaw.w3.org/css-validator/check/referer?profile=css3">
<span class="bold">CSS</span> Valid!</a>
</div>
</footer>
</body>
</html>
