<?php
	include 'ayar.php';
	$katNo = intval($_GET['id']);
	$varmi = mysql_query("SELECT * FROM kategori WHERE id = ".$katNo."");
	if ( mysql_num_rows($varmi) < 1 ) {
		header("location:index.php");
	}
	$sonuclu = mysql_fetch_object($varmi);
	$sayfa_no = intval( $_GET["sayfa"] );
	$sayfa_no = ($sayfa_no < 1) ? 1 : $sayfa_no;
?>
<!doctype html>
<html>
<head>
	<meta charset="utf-8">
	<title>Untitled Document</title>
	<link href="public/css/stil.css" rel="stylesheet">
</head>
<body>
	<div id="kapsayici">
		<?php
			include 'php/ust.php';
		?>
		<div id="ana">
			<div id="icerik">
				<?php
					echo "<h1>". $sonuclu->baslik ."</h1>";
					echo "<br><hr><br>";
					
					$sonuc = mysql_query("SELECT id FROM yazi WHERE kat_id=".$katNo."");
					$toplam = mysql_num_rows($sonuc);
					mysql_free_result($sonuc);
					$sayfada_goster = 3;
					$sayfa_adet = ceil($toplam/$sayfada_goster);
					$kayit = mysql_query("SELECT * FROM yazi WHERE kat_id=".$katNo." LIMIT ". ($sayfa_no-1) * $sayfada_goster .", ". $sayfada_goster ."");
					if( mysql_num_rows($kayit) > 1 ){
						while($satir = mysql_fetch_object($kayit) ) {
							echo "<div>";
								echo "<h1>". $satir->baslik . "</h1>";
								echo "<p>". substr($satir->detay, 0, 250) ."... <a href=oku.php?id=".$satir->id.">devamı</a> </p>";
							echo "</div>";
							echo "<br><br>";
						}
						for($i = 1; $i <= $sayfa_adet; $i++) {
							if($i == $sayfa_no) {
								echo " &nbsp; ". $i ." &nbsp;";
							} else {
								echo '<a href="kategori.php?sayfa='.$i.'">'.$i.'</a>';
							}
						}
					} else {
						echo "Sonuç bulunamadı.";
					}
				?>
			</div>
			<?php
				include 'php/sag.php';
			?>
		</div>
		<?php
			include 'php/alt.php'
		?>
	</div>
</body>
</html>