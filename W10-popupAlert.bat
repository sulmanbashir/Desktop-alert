<!-- :: Batch section
@echo off
setlocal

echo Select an option:
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTAreply=%%a"

REM windows 10 computers

echo Envoi en cours ... destinataire : hajila
msg * /SERVER:APMVDIW10C-05 "%HTAreply%"

echo Envoi en cours ... destinataire : adrien
msg * /SERVER:APMVDIW10C-04 "%HTAreply%"

echo Envoi en cours ... destinataire : daoud
msg * /SERVER:APMVDIW10C-06 "%HTAreply%"

echo Envoi en cours ... destinataire : picherit
msg * /SERVER:APMVDIW10C-02 "%HTAreply%"

echo Envoi en cours ... destinataire : dumont
msg * /SERVER:APMVDIW10C-08 "%HTAreply%"

echo Envoi en cours ... destinataire : boudebza
msg * /SERVER:APMVDIW10C-09 "%HTAreply%"

echo Envoi en cours ... destinataire : etienne
msg * /SERVER:APMVDIW10C-10 "%HTAreply%"

REM windows 7 computers

echo Envoi en cours ... destinataire : mersiguet
msg * /SERVER:APMVDIW7018 "%HTAreply%"

echo Envoi en cours ... destinataire : garcia
msg * /SERVER:APMVDIW7C002 "%HTAreply%"

echo Envoi en cours ... destinataire : leclerc
msg * /SERVER:APMVDIW7001 "%HTAreply%"

echo Envoi en cours ... destinataire : fleurke
msg * /SERVER:APMVDIW7013 "%HTAreply%"

echo Envoi en cours ... destinataire : cilia
msg * /SERVER:APMVDIW7007 "%HTAreply%"

echo Envoi en cours ... destinataire : bouchacourt
msg * /SERVER:APMVDIW7019 "%HTAreply%"

echo Envoi en cours ... destinataire : poulain
msg * /SERVER:APMVDIW7010 "%HTAreply%"

echo Envoi en cours ... destinataire : begaud
msg * /SERVER:APMVDIW7025 "%HTAreply%"

echo Envoi en cours ... destinataire : borgus
msg * /SERVER:APMVDIW7022 "%HTAreply%"

echo Envoi en cours ... destinataire : sandra
msg * /SERVER:APMVDIW7005 "%HTAreply%"

echo Envoi en cours ... destinataire : vanheems
msg * /SERVER:APMVDIW7008 "%HTAreply%"

echo Envoi en cours ... destinataire : herlax
msg * /SERVER:APMVDIW7016 "%HTAreply%"

echo Envoi en cours ... destinataire : florence
msg * /SERVER:APMVDIW7014 "%HTAreply%"

echo Envoi en cours ... destinataire : clertan
msg * /SERVER:APMVDIW7004 "%HTAreply%"

echo Envoi en cours ... destinataire : terzakou
msg * /SERVER:APMVDIW7006 "%HTAreply%"

echo Envoi en cours ... destinataire : christelle
msg * /SERVER:APMVDIW7009 "%HTAreply%"

echo Envoi en cours ... destinataire : banas
msg * /SERVER:APMVDIW7017 "%HTAreply%"

echo Envoi en cours ... destinataire : valerie
msg * /SERVER:APMVDIW7C01 "%HTAreply%"

echo Envoi en cours ... destinataire : stephane
msg * /SERVER:APMVDIW7015 "%HTAreply%"

echo Envoi en cours ... destinataire : anne pasquier
msg * /SERVER:APMVDIW7003 "%HTAreply%"

echo Envoi en cours ... destinataire : florent
msg * /SERVER:APMVDIW7C03 "%HTAreply%"

pause

echo End of HTA window, reply: "%HTAreply%"
goto :EOF
-->

<!DOCTYPE html>
<HTML lang="fr">
<HEAD>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<HTA:APPLICATION SCROLL="no" SYSMENU="no" >

<TITLE>Envoyer un popup aux membres de votre r&eacute;seau</TITLE>
<SCRIPT language="JavaScript">
window.resizeTo(500,700);

function sendToUsers() {
    var str = document.getElementById('text').value;
    
    if (str) {
        document.getElementById('test').innerHTML = str;
        var fso = new ActiveXObject("Scripting.FileSystemObject");
        fso.GetStandardStream(1).WriteLine(str);
        window.close();
    } else {
        document.getElementById('test').innerHTML = "Vous devez entrer un message.";
    }
}
</SCRIPT>
<style>
body {
  margin: 0;
  background: #fcfeff;
  color: #353d46;
  font: 18px/27px 'Oxygen', sans-serif;
}

h2 {
    display: block;
    font-size: 2em;
    -webkit-margin-before: 0.67em;
    -webkit-margin-after: 0.67em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
    color: #FF6B6B;
    margin: 0 0 27px;
}

p {
    margin-left: 10px;
    font-size: 12px;
    color: #353d46;
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}

.button {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 15px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
}
    
#footer {
    text-align: center;
    height: 10px;
    position: absolute;
    bottom: 0;
}

#test {
    font-size: 12px;
    color: red;
}
</style>
</HEAD>
<BODY>
    <br />
    <h2><center>Formulaire d'envoi</center></h2>
    <h4><center>Ce message sera envoy&eacute; &agrave; toute la maison d'Apm</center></h4>
    <center>
        <textarea id="text"  rows="5" cols="40" placeholder="Votre message"></textarea>
    </center>
    <br />
    <center><div id="test"></div></center>
    <center>
        <button onclick="sendToUsers()" type="submit" class="button">Envoyer</button>
    </center>
    <p><font color="red">**Important**</font> :<br /> - ne mettez pas d'accent, ni de cédille sinon le message sera mal convertis et incompréhensible par le destinataire.
    <br />
    - si une erreur 1722 apparaît sur le terminal, cela signifie que le destinataire est déconnecter.
    <br />
    - pour quitter sans envoyer de message, cliquez sur la croix du terminal qui s'est ouvert en même temps, sinon un message vide sera envoyer &agrave; tout le monde.
    <br />
    - si une autre erreur apparaît, faut m'appeler =).
    </p>
    <div id="footer">
        <div class="footer-title">
            By Sulman Bashir
        </div>
    </div>
</BODY>
</HTML>

<!-- 
1. Lancer regedit

2. Aller à l'emplacement HKLM\System\CurrentControlSet\Control\Terminal Server et mettre à 1 la clé "AllowRemoteRPC"

3. Redémarrer.

4 Executer la commande msg à partir de CMD avec les droits administrateur.

-->