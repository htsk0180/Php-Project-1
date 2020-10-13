<div id="sag">
	<h1>Kategoriler</h1>
	<?php
		$sonuc = mysql_query("SELECT * FROM kategori");
			if( $sonuc ) {
				echo "<ul>";
				while( $satir = mysql_fetch_object($sonuc)) {
					echo '<li><a href="kategori.php?id='.$satir->id.'">'. $satir->baslik . '</a></li>';
				}
				echo "</ul>";
			} else {
				echo "Sonuç bulunamadı.";
			}
		mysql_free_result($sonuc);
	?>
	
	<br>
	
	<h1>En Çok Okunanlar</h1>
	<?php
		$okunanlar = mysql_query("SELECT id, baslik, okunma FROM yazi ORDER BY okunma DESC");
			if( $okunanlar) {
				echo "<ul>";
				while( $yazilar = mysql_fetch_object($okunanlar) ){
					echo '<li><a href="oku.php?id='. $yazilar->id .'">' . $yazilar->baslik . '</a> ('.$yazilar->okunma.') </li>';
				}
				echo "</ul>";
			} else {
				echo "Sonuç bulunamadı.";
			}
		mysql_free_result($okunanlar);
	?>
	
</div>