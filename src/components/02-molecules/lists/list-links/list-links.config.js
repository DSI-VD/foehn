'use strict';

const faker = require('faker'); // Require the faker module

const listItemCount = 10; // How many itmes we should generate data for
const listItemData = [];

for (let i = 0; i < listItemCount; i += 1) {
    listItemData.push({
        item: faker.lorem.sentence(), // Generate a random data
        url: faker.internet.url() // Generate a random data
    });
}

module.exports = {
    status: 'ready',
    context: {
        listLinks: listItemData // Use our generated list of members as context data for our template.
    }
};
