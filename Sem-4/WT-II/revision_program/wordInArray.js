let str="a ji managal bhavan a magal haaari";

let s=str.split(" ")

//console.log(s)

let word="managal";
let flag=false;
let indexOfWorld=0
for(let i=0;i<s.length;i++){
    if(s[i]==word){
        falg=true;
        indexOfWorld=i;
         
    }
}
if(true){
    console.log("match word is at:",indexOfWorld)
}
else{
    console.log("no word is found")
}