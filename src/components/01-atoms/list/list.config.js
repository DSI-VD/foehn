'use strict';

const faker = require('faker'); // Require the faker module

const listItemCount = 10; // How many itmes we should generate data for
const listItemData = [];
const listInlineItemData = [];

for (let i = 0; i < listItemCount; i += 1) {
    listItemData.push({
        item: faker.lorem.sentence() // Generate a random data
    });

    listInlineItemData.push({
        item: faker.lorem.sentence(), // Generate a random data
        class: 'list-inline-item'
    });
}

module.exports = {
    status: 'ready',
    collated: true,
    context: {
        list: listItemData // Use our generated list of members as context data for our template.
    },
    variants: [
        {
            name: 'unstyled',
            context: {
                class: 'list-unstyled'
            }
        },
        {
            name: 'inline',
            hidden: true,
            context: {
                class: 'list-inline',
                list: listInlineItemData
            }
        }
    ]
};
