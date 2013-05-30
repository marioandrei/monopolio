<div id="status-bar">
	<div id="status-bar-content">
			<p> HOLA! <?php echo($_SESSION["nombre_jugador"]); ?>
			<?php echo($jugador_actual); ?>
			</p>
			<p>
			<?php 
			
				if ($_SERVER['SCRIPT_NAME'] == '/si1/controlpanel.php') {
					echo('<a href="logout.php" title="logout">Desconexion</a>');
					}
				elseif ($_SERVER['SCRIPT_NAME'] == '/si1/index.php') {
						echo('MONOPOLY VERSION 1.0');
					}
				else {
					echo('<a href="controlpanel.php?clean='.$_SESSION["jugador_id"].'" title="panel">Panel de Control</a>
					<a href="logout.php" title="logout">Desconexion</a>');
				}
			 ?>

			</p>
			<?php echo($_SESSION["turno_id"]);
			
			
			
						
			
			
			 ?>
			
			
			
	</div>
</div>