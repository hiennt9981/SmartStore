<?php
	
	foreach ($result as $row) {
			echo "<a style='z-index:30' href=\"index.php?mod=manufacturer&act=resultmanufacturer&id={$row['ManufacturerID']}\">{$row['ManufacturerName']}</a>";
	}

?>