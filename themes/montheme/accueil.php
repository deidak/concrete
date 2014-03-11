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
	
	<div id= "noir1">
		<div class="container">
                <?php
				$i = new Area('contenu');
				$i->display($c);
				?>
        </div>
	</div>
	
	<div class="container">
		<div class="textligne"><h2>Praesent suscipit elit ut, ut bibendum.</h2></div>
		
			<div class="ligne-grande"></div>
		
		<div class="pure-g">
			<div class="pure-u-1-3">
			<?php
			$a = new Area('col1');
			$a->display($c);
			?>
			</div>
			<div class="pure-u-1-3">
			<?php
			$b = new Area('col2');
			$b->display($c);
			?>
			</div>
			<div class="pure-u-1-3">
			<?php
			$d = new Area('col3');
			$d->display($c);
			?>
			</div>
		</div>
		
		<div class="ligne-grande"></div>
		
		<div class="pure-g">
			<div class="pure-u-1-3">
				<?php
				$e = new Area('social');
				$e->display($c);
				?>
			</div>
			<div class="pure-u-1-3">
				<?php
				$f = new Area('contact');
				$f->display($c);
				?>
			</div>
			<div class="pure-u-1-3">
				<?php
				$g = new Area('actualité');
				$g->display($c);
				?>
			</div>
		</div>
	</div>
	
	<?php 
	include 'footer.php';
	Loader::element('footer_required');	
	?>	
  </body>
</html>

