<?php
    while($row = mysqli_fetch_assoc($query)){
        $sql2 = "SELECT * FROM messages WHERE (incoming_msg_id = {$row['unique_id']}
                OR outgoing_msg_id = {$row['unique_id']}) AND (outgoing_msg_id = {$outgoing_id} 
                OR incoming_msg_id = {$outgoing_id}) ORDER BY msg_id DESC LIMIT 1";
        $query2 = mysqli_query($conn, $sql2);
        $row2 = mysqli_fetch_assoc($query2);
        (mysqli_num_rows($query2) > 0) ? $result = $row2['msg'] : $result ="Nenhuma mensagem disponível";
        (strlen($result) > 28) ? $msg =  substr($result, 0, 28) . '...' : $msg = $result;
        if(isset($row2['outgoing_msg_id'])){
            ($outgoing_id == $row2['outgoing_msg_id']) ? $you = "Você: " : $you = "";
        }else{
            $you = "";
        }
        ($row['status'] == "Offline agora") ? $offline = "offline" : $offline = "";
        ($outgoing_id == $row['unique_id']) ? $hid_me = "hide" : $hid_me = "";

        $output .= '<a href="chat.php?user_id='. $row['unique_id'] .'">
                    <div class="content">
                    <div style="margin-right: 10px; height: 60px; width: 65px;  background: url(https://www.habbo.com.br/habbo-imaging/avatarimage?&user='. $row['nome'] .'&action=&direction=4&head_direction=3&img_format=png&gesture=&headonly=0&size=2),  radial-gradient(circle, #fff, #f1f1f1); background-position: center top -10px; border-radius: 60px; "></div>
                    <div class="details">
                        <span>'. $row['nome'].'</span>
                        <p>'. $you . $msg .'</p>
                    </div>
                    </div>
                    <div class="status-dot '. $offline .'"><i class="fas fa-circle"></i></div>
                </a>';
    }
?>