'use strict';

const faker = require('faker'); // require the faker module

const listItemCount = 5; // how many itmes we should generate data for
const listItemData = [];

for (let i = 0; i < listItemCount; i += 1) {
    listItemData.push({
        title: faker.lorem.sentence(), // generate a random data
        text: faker.lorem.paragraphs(), // generate a random data
        media: '@figure--default',
    });
}

module.exports = {
    title: 'Projets',
    context: {
        projects: listItemData, // use our generated list of members as context data for our template.
    },
};
