//---- funcion que carga todos los champions al html
function loadChampions () {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("champ-container").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "metaDB.php?op=loadchamps", true);
    xmlhttp.send();
}


//---- funcion que carga el champion en especifico
function loadSpecificChamp(index) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("champ-container").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "metaDB.php?op=loadSpecificChamp&index="+index, true);
    xmlhttp.send();
}


//---- funcion que carga un champion random
function lucky () {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("champ-container").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "metaDB.php?op=luckyBuild", true);
    xmlhttp.send();
}


//---- funcion que rolea un champion de acuerdo a su posicion
function roleChamp (role) {
    xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange=function() {
        if (xmlhttp.readyState==4 && xmlhttp.status==200) {
            document.getElementById("champ-container").innerHTML=xmlhttp.responseText;
        }
    }
    xmlhttp.open("GET", "metaDB.php?op=roleBuild&role="+role, true);
    xmlhttp.send();
}