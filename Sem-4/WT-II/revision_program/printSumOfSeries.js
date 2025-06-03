const prompt =require('prompt-sync')();

let n=prompt("enter n:");
let sum=0;
for(let i=1;i<=n;i++){
    if(i%2==0)
        sum-=i;
    else
        sum+=i;
}
console.log(sum)
