<div class="col-sm-12 col-lg-12 col-md-12"><div class="thumbnail2"><div class="caption"><h3><a href="#">Management Website</a></h3><hr/>
                                <p><?
/**  Hari Pratomo, S.Pd.T  - http://www.klatenweb.com *  No. HP/Email: 08175499076/admin@klatenweb.com *  Produk Hosting Billing System versi Kla 5.1 **/
    if (!defined('KLATENWEB-ADMINISTRATOR')) {
        Header("Location: ../index.php");
        exit;
    }

    $admin = '';
    if (!cek_login ()){
       $admin .='<h4 class="bg">Akses di hentikan, Secure by Klaten WEB.com</h4>';
    }else{
    define('HC_THM', 'thema'.'/');

    $admin .= '<div class="border">';
    $err=0;
    if ($_POST['submit']=="Update"){
        $qry="SELECT * FROM tb_setting LIMIT 1";
        $exe=mysql_query($qry);
        $numfields = mysql_num_fields($exe);
        for ($i=0; $i < $numfields; $i++) {
            $CONST=mysql_field_name($exe, $i);
            $$CONST=substr(strip_tags($_POST[$CONST]),0,255);
        }
       
        $qry_add="";
       
        if ($err==0){
            $qry="SELECT * FROM tb_setting LIMIT 1";
            $exe=mysql_query($qry);
            $numfields = mysql_num_fields($exe);
            for ($i=0; $i < $numfields; $i++) {
                $CONST=mysql_field_name($exe, $i);
                $qry_add.=$CONST." =\"".$$CONST."\"";
                if ($i<$numfields-1) $qry_add.=", ";
            }
            $qry="UPDATE tb_setting SET $qry_add LIMIT 1";
            $exe=@mysql_query($qry);
            if ($exe){
                $admin .= '<div class="sukses">Edit Setting Success - CODELIST.CC</div>';
                $style_include[] ='<meta http-equiv="refresh" content="3; url=?pilih=admin_setting" />';
            }
            else{
                $admin .= '<div class="error">Edit Setting Fail</div>';
                $style_include[] ='<meta http-equiv="refresh" content="3; url=?pilih=admin_setting" />';
            }
        }
    }
    $admin .= '<form style="margin-left:15px; margin-bottom:10px;" method="post" action="?pilih=admin_setting" >
    <table width="100%" border="0" cellspacing="2" cellpadding="0">';
    $qry="SELECT * FROM tb_setting LIMIT 1";
        $exe=mysql_query($qry);
        $show=mysql_fetch_array($exe);
       
        $qry2="DESCRIBE tb_setting";
        $exe2=mysql_query($qry2);
       
        while($show2=mysql_fetch_array($exe2)){
            $CONST = $show2[0];
            $VALUE = $show[$CONST];
            $admin .= " <tr>
        <td width='21%'><label>".$CONST." </label></td>
        <td width='1%'><strong>:</strong></td>";
            if ($CONST=='Themes_Name'){
                $admin .= "<td width='78%'><select name='$CONST' >";
                if ($handle = opendir("".HC_THM)) {
                    while (false !== ($file = readdir($handle))) {
                        $i++;
                        if ($file != "." && $file != "..") {
                            if (is_dir("".HC_THM."$file")) {
                                $sel="";
                                if ($file.""===$VALUE)    $sel="selected='selected'";
                                $admin .= "<option value='$file' $sel >$file</option>";
                            }
                        }
                    }
                    closedir($handle);
                }
                $admin .= "</select></td></tr>";
            }   
            else if (substr($show2[1],0,4)=='enum'){
                $admin .= "<td width='78%'><select name='$CONST' >";
                $x=str_replace("enum(",'',$show2[1]);
                $x=str_replace("')",'\'',$x);
                $arr=explode(",",$x);
                foreach ($arr as $ar){
                    $ar=str_replace("'","",$ar);
                    $sel="";
                    if ($ar===$VALUE)    $sel="selected='selected'";
                    $admin .= "<option value='$ar' $sel >$ar</option>";
                }
                $admin .= "</select></td></tr>";
            }
            else if (substr($show2[1],0,3)=='int')
                $admin .= "<td width='78%'><input type='text' name='$CONST' value='$VALUE' style='width:50px;' /></td></tr>";   
            else
                $admin .= "<td width='78%'><input type='text' name='$CONST' value='$VALUE' style='width:300px;' />";
            $admin .= "</td></tr>";
        }
    $admin .= " <tr>
        <td width='21%'></td>
        <td width='1%'></td><td width='78%'>";
        $admin .= '   
            <input type="hidden" name="submit" value="Update" />   
            <input class="button color big round" type="submit" value="Update">
    </td></tr></table></form>';
    }
    $admin .= '</div>';
 
    echo $admin;
    ?></p>
                            </div>
                           
                        </div>
                    </div>