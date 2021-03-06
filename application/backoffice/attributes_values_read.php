<h3>Gestione valori degli attributi</h3>

<?php

$query = "SELECT v.`_id` AS `ID`, 
n.`name` AS `attributo`,
v.`value` AS `valore`
FROM `attributes_values` AS v
INNER JOIN `attributes_names` AS n 
ON n.`_id` = v.`name_id`
WHERE v.`is_deleted`=0";

include_once BO . 'table_settings_form.php';
$actions = array('update' => 'Modifica attributo', 
			     'delete' => 'Elimina');
$table = new Table($db, $table_name, $query, $actions);

echo $table->table();
include_once BO . 'pagination.php';