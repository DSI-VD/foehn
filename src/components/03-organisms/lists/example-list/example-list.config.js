'use strict';

const faker = require('faker'); // require the faker module

const peopleCount = 10; // how many peoples we should generate data for
const peopleData = [];

// sets locale to fr
faker.locale = 'fr';

for (let i = 0; i < peopleCount; i += 1) {
    peopleData.push({
        name: faker.name.findName(), // generate a random name
        email: faker.internet.email(),  // generate a random email address
        jobTitle: faker.name.jobTitle(),  // generate a random email address
        jobType: faker.name.jobTitle(),  // generate a random email address
        streetPrefix: faker.address.streetPrefix(),  // generate a random email address
        street: faker.address.streetName(),  // generate a random email address
        city: faker.address.city(),  // generate a random email address
    });
}

module.exports = {
    status: 'ready',
    context: {
        peoples: peopleData, // use our generated list of peoples as context data for our template.
    },
};
