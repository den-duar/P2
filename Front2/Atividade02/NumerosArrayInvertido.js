function add_ao_array(){
    var array = [];
    for (i in arguments){
        array.unshift(arguments[i]);
    }
    return array;
}

console.log(add_ao_array(1,5,7,9));