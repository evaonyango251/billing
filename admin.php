<?
/**  Hari Pratomo, S.Pd.T  - http://www.klatenweb.com *  No. HP/Email: 08175499076/admin@klatenweb.com *  Produk Hosting Billing System versi Kla 5.1 **/


include 'ikutan/session.php';
@header("Content-type: text/html; charset=utf-8;");
ob_start("ob_gzhandler");


define('KLATENWEB-ADMINISTRATOR', true);
include "ikutan/config.php";
include "ikutan/mysql.php";
include "ikutan/template.php";
global $judul_situs,$theme;


$old_modules = !isset($old_modules) ? null : $old_modules;
$_GET['aksi'] = !isset($_GET['aksi']) ? null : $_GET['aksi'];

$cek = '';
if (!cek_login ()){
   	$cek ='<table width="100%" border="0" cellspacing="0" cellpadding="0" class="middle"><tr><td><table width="100%" class="bodyline"><tr><td align="left"></td><td align="center"><font class="option">You Must Login First If Not Yet Have Account Please Register</font></td><td align="right"><img src="gambar/warning.gif" border="0"></td></tr></table></td></tr></table>';
   	header ("location:index.php");
	    exit;

}else{

if ($_SESSION['LevelAkses']=="Administrator"){

include "ikutan/security.php";

if ($old_modules == 1) {
      //  if (!ini_get("register_globals")) @import_request_variables('GPC');
}  

ob_start();
if(!isset($_GET['pilih'])){
	include 'konten/normal.php';
	} else if (@$_GET['modul'] == 'yes'
			&& file_exists('modul/'.$_GET['pilih'].'/admin/admin_'.$_GET['pilih'].'.php') 
			&& !preg_match("/[\.\/]/",$_GET['pilih'])) {
				include 'modul/'.$_GET['pilih'].'/admin/admin_'.$_GET['pilih'].'.php';	
			} else if (!isset($_GET['modul']) 
			&& file_exists('admin/'.$_GET['pilih'].'.php') 
			&& !preg_match("/[\.\/]/",$_GET['pilih'])) {
				include 'admin/'.$_GET['pilih'].'.php';	
				}
	else {
	include 'konten/normal.php';	
	}

$tengah = ob_get_contents();
ob_end_clean();

if ($_GET['aksi'] == 'logout') {
logout ();
}


}
else if ($_SESSION['LevelAkses']=="User"){
	
include "ikutan/security.php";	

ob_start();
if(!isset($_GET['pilih'])){
	include 'konten/normal.php';
		}else if (@$_GET['modul'] == 'yes' 
				  && file_exists('modul/'.$_GET['pilih'].'/user/user_'.$_GET['pilih'].'.php') 
				  && !preg_match("/[\.\/]/",$_GET['pilih'])){
						include 'modul/'.$_GET['pilih'].'/user/user_'.$_GET['pilih'].'.php';	
					}else {
						include 'konten/normal.php';	
					}
$tengah = ob_get_contents();
ob_end_clean();

}






else{
	$cek.='<div class"error">Access has been stop.</div>';

}

}

///////////////// LINKLOGIN ////////////
ob_start();
include "plugin/linklogin.php";
$linklogin = ob_get_contents();
ob_end_clean();

//////////////////////////////////

///// MENU KIRI /////////////////////

ob_start();
modul(1);
echo "<!-- blok kanan -->";
blok(1);
$kiri = ob_get_contents();
ob_end_clean();
///// MENU KIRI /////////////////////


///////////////// ATAS ////////////
ob_start();
include "plugin/atas.php";
$atas = ob_get_contents();
ob_end_clean();

//////////////////////////////////


///// HEADER /////////////////////
if (!isset($_GET['pilih'])) {
ob_start();
include "plugin/header.php";
$header = ob_get_contents();
ob_end_clean(); 
} else {
ob_start();
$header = ob_get_contents();
ob_end_clean();
}
///// HEADER /////////////////////

echo $cek;
$style_include_out = !isset($style_include) ? '' : implode("",$style_include);
$script_include_out = !isset($script_include) ? '' : implode("",$script_include);
$linklogin = !isset($linklogin) ? '' : $linklogin;
$kiri = !isset($kiri) ? '' : $kiri;
$atas = !isset($atas) ? '' : $atas;
$header = !isset($header) ? '' : $header;
$define = array (  'linklogin'     => $linklogin,
				  'kiri'     => $kiri,
				  'atas'     => $atas,
				  'header'     => $header,
				'tengah'     => $tengah,
				 'judul_situs' => $judul_situs,
				 'style_include' => $style_include_out,
				 'script_include' => $script_include_out,
				 'meta_description' => $_META['description'],
				 'meta_keywords' => $_META['keywords']
                );
                
$tpl = new template ('thema/klatenweb-template.html');
$tpl-> define_tag($define);

$tpl-> cetak();
?>