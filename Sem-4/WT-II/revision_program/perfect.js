const prompt=require('prompt-sync')();

let n=prompt("enter number:");
let sum=0;
for(let i=1;i<n;i++){
    if(n%i==0){
        sum+=i;
    }
}
if(sum==n)
    console.log("number is perfect");
else
    console.log("number is not perfect");
