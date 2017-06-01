'use strict';

const faker = require('faker'); // require the faker module

const listItemCount = 10; // how many itmes we should generate data for
const listItemData = [];
const listInlineItemData = [];

for (let i = 0; i < listItemCount; i += 1) {
    listItemData.push({
        item: faker.lorem.sentence(), // generate a random data
    });

    listInlineItemData.push({
        item: faker.lorem.sentence(), // generate a random data
        class: 'list-inline-item',
    });
}

module.exports = {
    status: 'ready',
    context: {
        list: listItemData, // use our generated list of members as context data for our template.
    },
    variants: [
        {
            name: 'unstyled',
            context: {
                class: 'list-unstyled',
            },
        },
        {
            name: 'inline',
            hidden: true,
            context: {
                class: 'list-inline',
                list: listInlineItemData,
            },
        },
    ],
};
