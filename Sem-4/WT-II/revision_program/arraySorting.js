let a=[11,2,33,4,5,68,7,8,9,10,96];

for(let i=0;i<a.length;i++){
    for(let j=0;j<a.length;j++){
        if(a[j]>a[j+1]){
            var temp=a[j];
            a[j]=a[j+1];
            a[j+1]=temp;
        }
    }
}
console.log(a)
