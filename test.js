function altitude(value) {
    //alert(value);
    $.post('ville.php', { VILAT : value },
    function success(data){
    //document.forms['rheinzink_cctpbundle_projectcouverture'].alti.value = data;
    monalti = document.getElementById("alti");
    monalti.value = data;
    document.getElementById('vville').style.backgroundColor = "white";
    document.getElementById('valti').style.backgroundColor = "white";
})
}