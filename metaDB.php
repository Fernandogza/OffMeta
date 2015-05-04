<?php
    $op = $_GET['op'];
    $con = mysqli_connect('localhost','root','','lol');
    if (!$con) {
        die('Could not connect: ' . mysqli_error($con));
    }

    if($op == "loadchamps") {
        $query = "SELECT * FROM champions order by name ASC";
        $result = mysqli_query($con, $query);
        echo "<div class='row container'>";
        echo "<h3 class='white-text'>Generate Random Build by Champion</h3>";
        while($row = mysqli_fetch_array($result)) {
            echo "<a href='javascript:loadSpecificChamp(".$row['id'].")' class='col s2'><center><img src='Champions/" . $row['image'] . "'/></center><center><p class='light-blue-text'>" . $row['name'] . "</p></center></a>";
        }
        echo "</div>";
    } else if($op == "loadSpecificChamp") {
        $id = $_GET['index'];
        //obtener la informacion del champion
        $query = "SELECT * FROM champions WHERE id=".$id;
        $result = mysqli_query($con, $query);
        $row = mysqli_fetch_array($result);
        $art = "Splasharts/".substr($row['image'], 0, -3) . "jpg";
        echo $art;
        echo "<div class='row center-align'><h5 class='white-text'>".$row['name']." Build Generator</h5></div>";
        echo "<div class='row container' style='background:url(".$art.") no-repeat'>";
        //titulo e informacion del champion
        echo "<br>";
        echo "<div class='row'><div class='col s2'><center><img src='Champions/" . $row['image'] . "'/></center></div>";
        echo "<div class='col s10'><h2 class='white-text'>".$row['name']."</h2><p class='white-text'>Random Name</p></div></div>";
        echo "<div class='section'></div>";

        //seccion de botas, enchantment, trinket
        echo "<div class='row'><div class='col s2'><h4 class='white-text'>Boots</h4></div><div class='col s3'><h4 class='white-text'>Enchantment</h4></div><div class='col s2'><h4 class='white-text'>Trinket</h4></div></div>";
        //random generator
        $boots = rand(1,6);
        $enchantment = rand(1,5);
        $trinket = rand(1,4);
        //queries para obtener los nombres, imagenes
        $query = "SELECT * FROM boots WHERE id=".$boots;
        $result = mysqli_query($con, $query);
        $randomB = mysqli_fetch_array($result);
        $query = "SELECT * FROM enchantments WHERE id=".$enchantment;
        $result = mysqli_query($con, $query);
        $randomE = mysqli_fetch_array($result);
        $query = "SELECT * FROM trinkets WHERE id=".$trinket;
        $result = mysqli_query($con, $query);
        $randomT = mysqli_fetch_array($result);
        //desplegar boots, enchantment, trinket
        echo "<div class='row'><div class='col s2'><img src='Boots/" . $randomB['image'] . "'/></div><div class='col s3'><img src='Enchantments/" . $randomE['image'] . "'/></div><div class='col s2'><img src='Trinkets/" . $randomT['image'] . "'/></div></div>";

        //seccion de items, spells
        echo "<div class='row'><div class='col s6'><h4 class='white-text'>Items</h4></div><div class='col s2'><h4 class='white-text'>Spells</h4></div></div>";
        echo "<div class='row'>";
        //for loop para desplegar los 5 items
        $item = range(1, 57);
        shuffle($item);
        for($i=0; $i<5; $i++) {
            $query = "SELECT * FROM items WHERE id=".$item[$i];
            $result = mysqli_query($con, $query);
            $randomI = mysqli_fetch_array($result);
            echo "<div class='col s1'><img src='Items/" . $randomI['image'] . "'/></div>";
        }
        echo "<div class='col s1'><p></p></div>";
        //for loop para desplegar los 2 spells
        $spell = range(1, 11);
        shuffle($spell);
        for($i=0; $i<2; $i++) {
            $query = "SELECT * FROM spells WHERE id=".$spell[$i];
            $result = mysqli_query($con, $query);
            $randomS = mysqli_fetch_array($result);
            echo "<div class='col s1'><img src='Spells/" . $randomS['image'] . "'/></div>";
        }
        echo "</div></div>";
    } else if ($op == "luckyBuild") {
        $id = rand(1,124);
        //obtener la informacion del champion en base al random seleccionado
        $query = "SELECT * FROM champions WHERE id=".$id;
        $result = mysqli_query($con, $query);
        $row = mysqli_fetch_array($result);
        $art = "Splasharts/".substr($row['image'], 0, -3) . "jpg";
        echo "<div class='row center-align'><h5 class='white-text'>".$row['name']." Build Generator</h5></div>";
        echo "<div class='row container' style='background:url(".$art.") no-repeat'>";
        echo "<br>";
        //titulo e informacion del champion
        echo "<div class='row'><div class='col s2'><center><img src='Champions/" . $row['image'] . "'/></center></div>";
        echo "<div class='col s10'><h2 class='white-text'>".$row['name']."</h2><p class='white-text'>Random Name</p></div></div>";
        echo "<div class='section'></div>";

        //seccion de botas, enchantment, trinket
        echo "<div class='row'><div class='col s2'><h4 class='white-text'>Boots</h4></div><div class='col s3'><h4 class='white-text'>Enchantment</h4></div><div class='col s2'><h4 class='white-text'>Trinket</h4></div></div>";
        //random generator
        $boots = rand(1,6);
        $enchantment = rand(1,5);
        $trinket = rand(1,4);
        //queries para obtener los nombres, imagenes
        $query = "SELECT * FROM boots WHERE id=".$boots;
        $result = mysqli_query($con, $query);
        $randomB = mysqli_fetch_array($result);
        $query = "SELECT * FROM enchantments WHERE id=".$enchantment;
        $result = mysqli_query($con, $query);
        $randomE = mysqli_fetch_array($result);
        $query = "SELECT * FROM trinkets WHERE id=".$trinket;
        $result = mysqli_query($con, $query);
        $randomT = mysqli_fetch_array($result);
        //desplegar boots, enchantment, trinket
        echo "<div class='row'><div class='col s2'><img src='Boots/" . $randomB['image'] . "'/></div><div class='col s3'><img src='Enchantments/" . $randomE['image'] . "'/></div><div class='col s2'><img src='Trinkets/" . $randomT['image'] . "'/></div></div>";

        //seccion de items, spells
        echo "<div class='row'><div class='col s6'><h4 class='white-text'>Items</h4></div><div class='col s2'><h4 class='white-text'>Spells</h4></div></div>";
        echo "<div class='row'>";
        //for loop para desplegar los 5 items
        $item = range(1, 57);
        shuffle($item);
        for($i=0; $i<5; $i++) {
            $query = "SELECT * FROM items WHERE id=".$item[$i];
            $result = mysqli_query($con, $query);
            $randomI = mysqli_fetch_array($result);
            echo "<div class='col s1'><img src='Items/" . $randomI['image'] . "'/></div>";
        }
        echo "<div class='col s1'><p></p></div>";
        //for loop para desplegar los 2 spells
        $spell = range(1, 11);
        shuffle($spell);
        for($i=0; $i<2; $i++) {
            $query = "SELECT * FROM spells WHERE id=".$spell[$i];
            $result = mysqli_query($con, $query);
            $randomS = mysqli_fetch_array($result);
            echo "<div class='col s1'><img src='Spells/" . $randomS['image'] . "'/></div>";
        }
        echo "</div></div>";
    }
?>