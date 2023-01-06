<?php 
session_start();
include("config.php");
$usuario = $_POST['usuario'];
$senha = $_POST['senha'];


if(!empty($usuario AND $senha)){
	$select = "SELECT * FROM users WHERE nome = '$usuario' LIMIT 1";
	$select_query = $conn->query($select);

	if($select_query->num_rows > 0) {
	$user= $select_query->FETCH_ASSOC();
	if(password_verify($senha, $user['senha'])){
		if($user['situacao'] == 1){
        $status = "Ativo agora";
        $sql2 = mysqli_query($conn, "UPDATE users SET status = '{$status}' WHERE nome = '$usuario' ");
		$_SESSION["usuario"] = $usuario;
        $_SESSION['unique_id'] = $user['unique_id'];
		$_SESSION['msg'] = '<div id="tostalertds" class="alert-success ds">Login realizado com sucesso!</div>';
		header("Location: ../index");
		exit();
	}else if($user['situacao'] == 0) {
		$_SESSION['msg'] = '<div id="tostalertds" class="alert-warning ds">Conta Desativada, faça o registro</div>';
		header("Location: ../index_login");
		exit();
	}else if($user['situacao'] == 2) {
		$_SESSION['msg'] = '<div id="tostalertds" class="alert-danger ds">Você foi Demitido</div>';
		header("Location: ../index_login");
		exit();
	}else if($user['situacao'] == 3) {
		$_SESSION['msg'] = '<div id="tostalertds" class="alert-warning ds">Você encontra-se Banido</div>';
		header("Location: ../index_login");
		exit();
	}
	}else{
		$_SESSION['msg'] = '<div id="tostalertds" class="alert-danger ds">Senha invalida!</div>';
		header("Location: ../index_login");
		exit();
	}
}else{
	$_SESSION['msg'] = '<div id="tostalertds" class="alert-danger ds">Login ou senha invalidos!</div>';
	header("Location: ../index_login");
	exit();
}
}else{
	$_SESSION['msg'] = '<div id="tostalertds" class="alert-danger ds">Login ou senha invalidos!</div>';
	header("Location: ../index_login");
	exit();
}



?>