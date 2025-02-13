function findSequence(sequence) {
    const phonesArray = await db.phones.find({}).toArray();
    const result = [];

    phonesArray.forEach((phone) => {
        const number = phone.display.split("-")[1];
        if (number.includes(sequence)) {
            result.push(phone);
        }
    });
    return result;
}

function findCapicuas() {
    const phonesArray = await db.phones.find({}).toArray();
    const result = [];

    phonesArray.forEach((phone) => {
        const number = phone.display.split("-")[1];
        const reversedNumber = number.split("").reverse().join("");
        if (number === reversedNumber) {
            result.push(phone);
        }
    });

    return result;
}
