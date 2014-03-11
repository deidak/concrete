<!DOCTYPE html>
<html lang="fr">
  <head>
    <meta charset="utf-8">
    <title>POLO360</title>
	<link href="<?php echo $this->getThemePath(); ?>/assets/css/purecss.css" rel="stylesheet">
	<link href="<?php echo $this->getThemePath(); ?>/assets/css/main.css" rel="stylesheet">
	<?php Loader::element('header_required');?>
  </head>

  <body>
	<?php include 'header.php'; ?>	
	
	<div class="container">
    <?php
    $i = new Area('produits');
    $i->display($c);

    $j = new Area('plan');
    $j->display($c);

    $k = new Area('contact');
    $k->display($c);

    $l = new Area('blog');
    $l->display($c);
    ?>
	</div>
	
	<?php 
	include 'footer.php';
	Loader::element('footer_required');	
	?>	
  </body>
</html>

