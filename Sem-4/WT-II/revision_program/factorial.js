const prompt=require('prompt-sync')();
let n=prompt("enter n:");
let fact=1;
for(let i=1;i<=n;i++){
    fact=fact*i;
}
console.log(fact)