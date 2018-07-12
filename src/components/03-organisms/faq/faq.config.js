'use strict';

const faker = require('faker'); // Require the faker module

const faqCount = 10; // How many faqs we should generate data for
const faqData = [];

// Sets locale to fr
faker.locale = 'fr';

for (let i = 0; i < faqCount; i += 1) {
    faqData.push({
        question: faker.lorem.sentence(),
        answer: faker.lorem.paragraphs(),
        author: `${faker.name.firstName()} ${faker.name.lastName()}`
    });
}

module.exports = {
    status: 'ready',
    context: {
        titleModifier: 'sr-only',
        searchForm: {
            label: 'Rechercher dans les questions',
            titleModifier: 'mt-0',
            heading: {
                text: 'Rechercher dans les questions',
                styleModifier: 'mt-0'
            }
        },
        faqs: faqData
    }
};
