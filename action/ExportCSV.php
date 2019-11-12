<?php

session_start();
require_once("../database/StuInfo.php");
require_once '../database/CoursInfo.php';
$num = $_SESSION['num'];
$user = new UserInfo($num);
$nom=$user->getNom();
$prenom=$user->getPrenom();
$numero=$user->getNumero();
$admission=$user->getAdmission();
$filiere=$user->getFiliere();
$cursus=$user->getCursus();

$filename = "../document_csv/" . $nom . "_" . $prenom . ".csv";
$file = fopen($filename, "w");  

$ligne1 = "ID;" . $numero . ";;;;;;;;NO;" . $nom . ";;;;;;;;PR;" . $prenom. ";;;;;;;;AD;" . $admission . ";;;;;;;;FI;" . $filiere . ";;;;;;;;\r\n";

$ligne2 = "==;s_seq;s_label;sigle;categorie;affectation;utt;profil;credit;resultat\r\n";
$ligne = $ligne1 . $ligne2;


foreach ($cursus as $cle=>$value) {
    $ligne .= "EL";
    foreach ($value as $cle => $value) {
        $ligne .= ";" . $value;
    }
    $ligne .= "\r\n";
}
//警告框
echo "<div class='col-md-8 col-md-offset-2'>";
echo "<div class='jumbotro' ><h1 class'col-md-10 col-md-offset-1'>————————————————————</h1></div>";
echo "<div class='alert alert-info' role='alert'><b>Voila!  </b>votre fichier CSV est enregistrer dans la repertoire 'document_cursus'</div>";
echo "</div>";

    $handle = fopen("$filename", 'r');
    $content = '';
    while(!feof($handle)){
        $content .= fread($handle, 8080);
    }
    echo $content;
    fclose($handle);


echo "<meta http-equiv='refresh' content='2;url=../Environnement numerique de travail - UTT_files/cursus.php'> ";


fwrite($file, $ligne);
fclose($file);
//html结尾和js文件导入

