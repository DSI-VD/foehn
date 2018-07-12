'use strict';

const faker = require('faker'); // Require the faker module

const peopleCount = 10; // How many peoples we should generate data for
const peopleData = [];

// Sets locale to fr
faker.locale = 'fr';

for (let i = 0; i < peopleCount; i += 1) {
    peopleData.push({
        name: faker.name.findName(), // Generate a random name
        email: faker.internet.email(), // Generate a random email address
        jobTitle: faker.name.jobTitle(), // Generate a random email address
        jobType: faker.name.jobTitle(), // Generate a random email address
        streetPrefix: faker.address.streetPrefix(), // Generate a random email address
        street: faker.address.streetName(), // Generate a random email address
        city: faker.address.city() // Generate a random email address
    });
}

module.exports = {
    status: 'ready',
    context: {
        peoples: peopleData // Use our generated list of peoples as context data for our template.
    }
};
