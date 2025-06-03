const prompt=require('prompt-sync')();
let n=prompt("enter value of n:");

for(let i=1;i<=n;i++){
    if(n%i==0){
        console.log(i);
    }
}