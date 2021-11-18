<?php

	$user = $_GET['user'];
	
	date_default_timezone_set('America/Sao_paulo');
	$agora = date('d-m-Y-h-i-s');

	$postagem = $_POST['postagem'];
	$arquivo = $_FILES['imagem']['tmp_name'];
	$foto = $_FILES['imagem']['name'];
	
	//pega a extensão
	$extensao = pathinfo($foto, PATHINFO_EXTENSION);

	//muda o nome
	$tmp_nome = md5($user . $agora);
	$imagem = $tmp_nome . ".png";


	$destino = '../images/' . $imagem;
	
	echo "$postagem <br> $user <br> $imagem";
	
	move_uploaded_file($arquivo, $destino);
	
		require('../classes/postagens.php');
		$postagens = new postagens();
		
		$postar = $postagens->cadastraPost($postagem,$user,$imagem);		
	
	
	header('Location:../home.php?email='.$email);
	
?>
			
		
