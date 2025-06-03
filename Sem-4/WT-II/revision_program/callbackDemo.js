function print(a){
    console.log(a);
}

function demo(sq,callbackFunction){
 let squre=sq*sq;

 callbackFunction(squre)

    

}

demo(5,print)