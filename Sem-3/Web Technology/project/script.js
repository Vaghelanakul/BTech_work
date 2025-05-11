var txtList=['France','India','United State','China','Italy','Canada','Maxico','berlin','Rio','Tokyo'];

function changeText(){

    var random=Math.floor(Math.random()*txtList.length);

    var randomIndex=txtList[random]
    console.log(randomIndex)
    var changetxt = document.getElementById('changeContent'); 

    changetxt.textContent=`${randomIndex}`;
    console.log(changeText);

}
setInterval(changeText,2000);

