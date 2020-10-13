<?php
	include 'ayar.php';
	$no = intval($_GET['id']);
	$sorgu = mysql_query("SELECT * FROM yazi WHERE id = ".$no."");
	if( mysql_num_rows($sorgu) < 1 ) {
		header("location:index.php");
	}
	$yazi = mysql_fetch_object($sorgu);
	$guncelle = mysql_query("UPDATE yazi SET okunma = okunma + 1 WHERE id = ".$no."");
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
				<h1><?php echo $yazi->baslik;?></h1>
				<p><?php echo $yazi->kayit_tarihi; ?>, <?php echo $yazi->okunma + 1; ?> okunma</p>
				<br>
				<p><?php echo nl2br($yazi->detay); ?></p>
				
				<br>
				<hr>
				<br>
				
				<div id="yorum_goster">
					<?php
						$yorumlar = mysql_query("SELECT * FROM yorum WHERE yazi_id = ". $yazi->id ."");
					?>
					<h1>Yorumlar (<?php echo mysql_num_rows($yorumlar); ?> adet yorum var)</h1>
					<?php
						if ( mysql_num_rows($yorumlar) < 1 ) {
							echo "Hiç yorum bulunamadı.";
						} else {
							echo "<br>";
							while( $yorum = mysql_fetch_object($yorumlar) ) {
								
								echo "<strong>". $yorum->adsoyad ."</strong>, <cite>". $yorum->kayit_tarihi ."</cite>";
								echo "<p>". strip_tags($yorum->mesaj) ."</p>";
								echo "<br><hr><br>";
							}
							
						}
					?>
				</div>
				
				<br>
				
				<div id="yorum_yaz">
					<h1>Yorum Yaz</h1>
					<?php
						if($_POST['buton']) {
							$ad   = trim($_POST['adsoyad']);
							$mail = trim($_POST['eposta']);
							$msg  = trim($_POST['mesaj']);
							if( strlen($ad) < 1 || strlen($mail) < 1 || strlen($msg) < 1 ) {
								echo "<strong>Form alanındaki değerler boş olamaz, lütfen kontrol ediniz.</strong>";
							} else {
								$kaydet = mysql_query("INSERT INTO yorum (yazi_id, adsoyad, email, mesaj) VALUES (".$yazi->id.", '".$ad."', '".$mail."', '".$msg."')");
								if($kaydet) {
									echo "<strong>Mesajınız kaydedildi.</strong>";
									$msg = NULL;
								} else {
									echo "<strong>Bir hata oluştu, lütfen daha sonra tekrar deneyin.</strong>";
								}
							}
						}
					?>
					<form action="#yorum_yaz" method="post">
						<label>Adsoyad</label><br>
						<input type="text" name="adsoyad" maxlength="50" size="40" value="<?php echo $ad; ?>">
						
						<br>
						<label>E-posta</label><br>
						<input type="text" name="eposta" maxlength="100" size="40" value="<?php echo $mail; ?>">
						<br>
						
						<label>Mesajınız</label><br>
						<textarea name="mesaj" cols="50" rows="10"><?php echo $msg;?></textarea>
						<br>
						<input type="submit"  name="buton" value="Gönder">
					</form>
				</div>
				
				
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