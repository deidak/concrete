	<div class="container">
	<div class="pure-g">
		<div class="pure-u-2-5"><img src="<?php echo $this->getThemePath(); ?>/assets/images/logo.jpg"></div>
		<div class="pure-u-3-5">
				<div class="pure-menu pure-menu-open pure-menu-horizontal">
				<?php
				$menu = new Area('Menu');
				$menu->display($c);
				?>
				</div>
		</div>
	</div>
	</div>