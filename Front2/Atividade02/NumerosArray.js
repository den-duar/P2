function add_ao_array(){
    var array = [];
    for (i in arguments){
        array.push(arguments[i]);
    }
    return array;
}

console.log(add_ao_array(1,5,7,9));