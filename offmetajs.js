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