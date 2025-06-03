const prompt=require('prompt-sync')();

let n=prompt("enter n:");
let sum=0;
for(let i=1;i<=n;i++){
    sum+=i*i;
}
console.log(sum)
