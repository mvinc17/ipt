		  <?php
		  	include 'runtime.php';
			$structure = explode("/", $_GET['page']);
			if(file_exists('pages/'.$structure[0].'/index.php')) {
				include 'pages/'.$structure[0].'/index.php';
			} else if(file_exists('pages/'.$structure[0].'/'.$structure[1].'.php')) {
				include 'pages/'.$structure[0].'/'.$structure[1].'.php';
			} else if(file_exists('pages/'.$structure[0].'/'.$structure[1].'/'.$structure[2].'.php')) {
				include 'pages/'.$structure[0].'/'.$structure[1].'/'.$structure[2].'.php';
			} else {
				echo "404, file not found!";
			}
			die();
		  ?>