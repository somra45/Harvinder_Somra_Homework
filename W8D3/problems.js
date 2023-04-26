const printCallback = function(array) {
    array.forEach(function(element){
        console.log(element)
    })
};

function titleize(names, callback) {
    let mapped = names.map(function(element){
        element = 'Mx. ${element} Jingleheimer Schimidt'
    })
    return callback(mapped)
};

console.log(titleize(['Roger', 'Steven', 'Ayce', 'Kinka'], printCallback))