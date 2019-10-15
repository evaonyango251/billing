<div class="col-sm-12 col-lg-12 col-md-12"><div class="thumbnail2"><div class="caption"><h3><a href="#">Management Pages</a></h3><hr/><p>
<?
/**  Hari Pratomo, S.Pd.T  - http://www.klatenweb.com *  No. HP/Email: 08175499076/admin@klatenweb.com *  Produk Hosting Billing System versi Kla 5.1 **/
if (!defined('KLATENWEB-ADMINISTRATOR')) {
	Header("Location: ../index.php");
	exit;
}

if (!cek_login ()){
   $admin .='<p class="judul">Akses di hentikan, KLATENWEB.com</p>';
   exit;
}


$index_hal = 1;


$admin .='<div class="border"><a href="?pilih=admin_pages"><b>Home</b></a> | <a href="?pilih=admin_pages&amp;aksi=add"><b>Create a New Web Page</b></a></div>';

$admin .= "\n";


$JS_SCRIPT = <<<js
<!-- TinyMCE -->
<script type="text/javascript" src="ikutan/js/tinymce/jscripts/tiny_mce/tiny_mce.js"></script>

<script type="text/javascript">
	tinyMCE.init({
		// General options





		
		mode : "textareas",
		theme : "advanced",
		skin : "o2k7",
		skin_variant : "silver",
		plugins : "safari,pagebreak,style,layer,table,save,advhr,advimage,advlink,emotions,iespell,inlinepopups,insertdatetime,preview,media,searchreplace,print,contextmenu,paste,directionality,fullscreen,noneditable,visualchars,nonbreaking,xhtmlxtras,template,jbimages",

		// Theme options
		theme_advanced_buttons1 : "bold,italic,underline,strikethrough,|,justifyleft,justifycenter,justifyright,justifyfull,|,formatselect,fontselect,fontsizeselect",
		theme_advanced_buttons2 : "copy,paste,pastetext,pasteword,|,bullist,numlist,|,outdent,indent,blockquote,|,undo,redo,|,link,unlink,anchor,image,cleanup,code,|,preview,|,forecolor,backcolor",
		theme_advanced_buttons3 : "tablecontrols,|,hr,removeformat,visualaid,|,sub,sup,|,charmap,media,advhr",
		theme_advanced_buttons4 : "insertlayer,moveforward,movebackward,absolute,|,styleprops,|,cite,abbr,acronym,del,ins,attribs,|,visualchars,nonbreaking,template,pagebreak,jbimages",

		theme_advanced_toolbar_location : "top",
		theme_advanced_toolbar_align : "left",
		theme_advanced_statusbar_location : "bottom",
		theme_advanced_resizing : true


		// Drop lists for link/image/media/template dialogs
		//template_external_list_url : "lists/template_list.js",
		//external_link_list_url : "lists/link_list.js",
		//external_image_list_url : "lists/image_list.js",
		//media_external_list_url : "lists/media_list.js"

	});
</script>
<!-- /TinyMCE -->
js;






switch(@$_GET['aksi']) {
case 'del':
if (isset($_GET['id']) && is_numeric($_GET['id']) && $_GET['id'] > 1) {
$id = int_filter($_GET['id']);	
$query = mysql_query("DELETE FROM `halaman` WHERE `id` = '$id'");
header("location:?pilih=admin_pages");
exit;
}

break;
case 'edit':
if (isset($_GET['id']) && is_numeric($_GET['id'])) {
$id = int_filter($_GET['id']);	


if (isset($_POST['submit'])) {
$judul = cleantext($_POST['judul']);
$konten = $_POST['konten'];

$query = mysql_query("UPDATE `halaman` SET `judul` = '$judul', `konten` = '$konten' WHERE `id` = '$id'");	
header("location:?pilih=admin_pages");
exit;
}

$query = mysql_query("SELECT * FROM `halaman` WHERE `id` = '$id'");	
$data = mysql_fetch_assoc($query);

$script_include[] = $JS_SCRIPT;

$admin .= '<form method="post" action="#">';
$admin .= 'Title : <br />';
$admin .= '<input type="text" name="judul" value="'.stripslashes(htmlspecialchars($data['judul'])).'" size="50" /><br />';
$admin .= 'Content : <br />';
$admin .= '<textarea id="elm1" name="konten" rows="15" cols="80" style="width: 70%">';
$admin .= htmlspecialchars($data['konten']);
$admin .= '</textarea>';
$admin .= '<br />';
$admin .= '<input type="submit" class="button color big round" name="submit" value="Edit" />';
$admin .= '</form>';

}
break;	
case 'add':
if (isset($_POST['submit'])) {
$judul = cleantext($_POST['judul']);
$konten = $_POST['konten'];

$error = '';

if (empty($judul)) {
	$error .= '- Error: Title cannot empty.<br />';
}

	if ($error != '') {
	 $admin .= '<div class="error">'.$error.'</div>';
	} else {

	$query = mysql_query("INSERT INTO `halaman` (`judul`,`konten`) VALUES ('$judul','$konten')");	
		if ($query) {
		$admin .= '<div class="sukses">Success created pages.</div>';
			} 
			else {
				$admin .= '<div class="error">'.mysql_error().'</div>';
			}

}

}
$script_include[] = $JS_SCRIPT;

$admin .= '<form method="post" action="#">';
$admin .= 'Title : <br />';
$admin .= '<input type="text" name="judul" value="'.stripslashes(htmlspecialchars(@$_POST['judul'])).'" size="50" /><br />';
$admin .= 'Content : <br />';
$admin .= '<textarea id="elm1" name="konten" rows="15" cols="80" style="width: 70%">';
$admin .= htmlspecialchars(@$_POST['konten']);
$admin .= '</textarea>';
$admin .= '<br />';
$admin .= '<input type="submit" class="button color big round" name="submit" value="Add" />';
$admin .= '</form>';

break;	
default:
$warna = '';
$query = mysql_query("SELECT `id`,`judul` FROM halaman ORDER BY id");
$admin .='<table style="width:100%" cellspacing="1" cellpadding="0">';
while($data = mysql_fetch_assoc($query)) {
$warna = empty ($warna) ? 'bgcolor="#efefef"' : '';
		
		$admin .='<tr '.$warna.'><td><a href="index.php?pilih=hal&amp;id='.$data['id'].'" title="'.$data['judul'].'">'.limittxt($data['judul'],40).'</a></td>';
		$admin .='<td>';
		if ($data['id'] == 1){
		$deleted = '';	
		}else {
		$deleted = '<a href="?pilih=admin_pages&amp;aksi=del&amp;id='.$data['id'].'" onclick="return confirm(\'Do You Want to Delete Data It ?\')" style="color:red">Delete</a> - ';		
		}
		
		
        $admin .=''.$deleted.'<a href="?pilih=admin_pages&amp;aksi=edit&amp;id='.$data['id'].'">Edit</a> - <a href="?pilih=admin_menu&amp;aksi=addsub&amp;url=index.php%3Fpilih%3Dhal%26id%3D'.$data['id'].'">Make Menu</a></td></tr>';

		
}

$admin .= '</table>';
break;
}

echo $admin;
?></p> </div></div> </div>