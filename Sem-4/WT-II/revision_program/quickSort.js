function quickSort(arr){
    if(arr.length<=1) 
        return arr;
    const pivot=arr[arr.length-1];
    let left=[];
    let right=[];
    for(let i=0;i<arr.length-1;i++){
        if(arr[i]<pivot){
            left.push(arr[i]);
        }
        else{
            right.push(arr[i]);
        }
    }
    return [...quickSort(left),pivot,...quickSort(right)]
}

let arr=[25,1,12,65,4,54,32];
console.log(arr);
console.log("sorted arrray is:")
let sortedArray=quickSort(arr);
console.log(sortedArray)