<?php 
    session_start();
    if(isset($_SESSION['unique_id'])){
        include_once "config.php";
        $outgoing_id = $_SESSION['unique_id'];
        $incoming_id = mysqli_real_escape_string($conn, $_POST['incoming_id']);
        $output = "";
        $sql = "SELECT * FROM messages LEFT JOIN users ON users.unique_id = messages.outgoing_msg_id
                WHERE (outgoing_msg_id = {$outgoing_id} AND incoming_msg_id = {$incoming_id})
                OR (outgoing_msg_id = {$incoming_id} AND incoming_msg_id = {$outgoing_id}) ORDER BY msg_id";
        $query = mysqli_query($conn, $sql);
        if(mysqli_num_rows($query) > 0){
            while($row = mysqli_fetch_assoc($query)){
                if($row['outgoing_msg_id'] === $outgoing_id){
                    $output .= '<div class="chat outgoing">
                                <div class="details">
                                    <p>'. $row['msg'] .'</p>
                                </div>
                                </div>';
                }else{
                    $output .= '<div class="chat incoming">
                    <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user='. $row['nome'] .'&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
                                <div class="details">
                                    <p>'. $row['msg'] .'</p>
                                </div>
                                </div>';
                }
            }
        }else{
            $output .= '<div class="text">Nenhuma mensagem está disponível. Depois de enviar a mensagem, eles aparecerão aqui.</div>';
        }
        echo $output;
    }else{
        header("location: ../login.php");
    }

?>