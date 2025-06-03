const prompt=require('prompt-sync')();

let n=prompt("enter number");
let count=0;
let flag=false;
for(let i=0;i<=n;i++){
    if(n%i==0){
        count++;
        flag=true;
    }
}
if(flag)
        console.log("prime");
else
    console.log("not prime")