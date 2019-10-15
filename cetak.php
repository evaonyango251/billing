<style>
.atas{
	BORDER-RIGHT: 1px solid #CCCCCC; BORDER-TOP: 1px solid #CCCCCC; MARGIN-TOP: 1px; MARGIN-BOTTOM: 1px; BORDER-LEFT:  1px solid #CCCCCC; BORDER-BOTTOM: 1px solid #CCCCCC; BACKGROUND-COLOR: #CCCCCC;
        font-size: 12px;
	font-weight: bold;
	color: #666666;
	text-align: left;
	height: 21px;
	padding-top: 0px;
}

.tabel{
	BORDER-RIGHT: 1px solid #CCCCCC; BORDER-TOP: 1px solid #CCCCCC; MARGIN-TOP: 1px; MARGIN-BOTTOM: 1px; BORDER-LEFT:  1px solid #CCCCCC; BORDER-BOTTOM: 1px solid #CCCCCC; BACKGROUND-COLOR: #FFFFFF;
}

.tglcetak
{
font-size:8px;
color:#990000;

}
</style>
<?
/**
 *  Hari Pratomo, S.Pd.T  - http://www.klatenweb.com
 *  No. HP/Email: 08175499076/admin@klatenweb.com
 *  Produk Hosting Billing System versi Kla 4.1
**/
include 'ikutan/config.php';
include 'ikutan/mysql.php';

$pay = $_GET['pay'];

global $koneksi_db,$translateKal;


$hasil = $koneksi_db->sql_query( "SELECT * FROM client WHERE md5(id)='$pay' " );

while ($data = $koneksi_db->sql_fetchrow($hasil)) {
	
$idx = md5($data['id']);	
	
	
	
	
	
	
$q2 = mysql_query ("SELECT * FROM `hosting`  WHERE nama='".$data['hosting']."'");
while ($data2 = mysql_fetch_array($q2)){
	$nama = $data2['nama'];
	$harga = $data2['harga'];
}
$q3 = mysql_query ("SELECT * FROM `domain`  WHERE nama='".$data['domain2']."'");
while ($data3 = mysql_fetch_array($q3)){
	$nama2 = $data3['nama'];
	$harga2 = $data3['harga'];
}
$lama = $data['lama'];
if ($data['hosting']=='Without Hosting')	
	{$jumlah = $harga2*$lama;
		}
else {$jumlah = ($harga + $harga2)*$lama;
		}	

$tgluser = date('d');
$array_bulan = array(1=>'Januari','Februari','Maret', 'April', 'Mei', 'Juni','Juli','Agustus','September','Oktober', 'November','Desember');

$bulan = $array_bulan[date('n')];
$thnuser = date('Y');




$q3x = mysql_query ("SELECT * FROM `domain`  WHERE nama='".$data['domain2']."'");
while ($data3x = mysql_fetch_array($q3x)){
	$ur = $data3x['Url_Situs'];
	$pp = $data3x['Paypal_Account'];
}








echo "
<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'>
<html xmlns='http://www.w3.org/1999/xhtml'>

<head>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8' />
	
	<title>Invoice</title>
	
	<link rel='stylesheet' type='text/css' href='css/cetak.css' />

</head>

<body>

	<div id='page-wrap'>
<div id='terms'>
		<h5>INVOICE</h5></div>
		
		<div id='customer'>

        Pay with PAYPAL:<br/>
";
if ($data['bayar']=='Unpaid')	
	{echo '
		<script async="async" src="https://www.paypalobjects.com/js/external/paypal-button.min.js?merchant=paypal@klatenweb.com" 
    data-button="paynow" 
    data-name="'.$data['domain'].'" 
    data-amount="'.$jumlah.'" 
    data-shipping="0" 
    data-tax="0" 
    data-callback="'.$ur.'/index.php?pilih=sukses&modul=yes&con='.$idx.'"
></script>';
		}
else {echo "
		Invoice has been Paid";
		}		
		echo "
		<br/>

            <table id='meta'>
                <tr>
                    <td class='meta-head'>No. Invoice</td>
                    <td># ".$data['id']."</td>
                </tr>
                <tr>

                    <td class='meta-head'>Date</td>
                    <td>".$tgluser." ".$bulan." ".$thnuser." ".$domain."</td>
                </tr>
                <tr>
                    <td class='meta-head'>Amount</td>
                    <td><div class='due'>$. ".$jumlah."</div></td>
                </tr>

            </table>
		
		</div>
		
		<table id='items'>
		
		  <tr>
		      <th>No.</th>
		      <th>Order</th>
		      <th>Price</th>
		      <th>Amount</th>
		      <th>Total</th>
		  </tr>
		  
		  <tr class='item-row'>
		      <td class='item-name'><div class='delete-wpr'><center>1.</center></div></td>
		      <td class='description'>Domain ".$data['domain']." ".$data['hosting']." </td>
		      <td>$ ".$jumlah."</td>
		      <td>1</td>
		      <td>$ ".$jumlah."</td>
		  </tr>
		  
		
		  
		
		  
		
		  <tr>

		      <td colspan='2' class='blank'> </td>
		      <td colspan='2' class='total-line'>Total</td>
		      <td class='total-value'>$ ".$jumlah."</td>
		  </tr>
		  
		
		</table>
		
		<div id='terms'>
		  <h5>Copyright 2015 Your Company Name</h5>
		  Hosting Billing System
		</div>
	
	</div>
	
</body>

</html>
";
}


?>