// Error Handling try, catch, finally
function processData(my_string) {
    try {
        var new_string = my_string.split('').reverse().join('');
        console.log(`Reversed string is : ${new_string}`);
    } catch (err) {
        console.log("Error : " + err.message);
    } finally {
        console.log("Type of my_string is : " + typeof my_string)
    };

}

// Error Handling throw
function processData(my_height) {
    try {
        if (isNaN(my_height)) {
             throw new Error("notANumberError");
        } else if (my_height >= 10) {
            throw new Error("hugeHeightError");
        } else if (my_height < 4) {
            throw new Error("tinyHeightError");
        } else {
            console.log(my_height);
        }
    } catch (err) {
        console.log(err.message)
    }
}
