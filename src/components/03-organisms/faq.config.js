'use strict';

const faker = require('faker'); // require the faker module
const faqCount = 10; // how many faqs we should generate data for
const faqData = [];

// sets locale to fr
faker.locale = "fr";

for (var i = 0; i < faqCount; i++) {
   faqData.push({
       question: faker.lorem.sentence(),
       answer: faker.lorem.paragraphs(),
       author: faker.name.firstName() + ' ' + faker.name.lastName()
   });
}

module.exports = {
   context: {
       faqs: faqData
   }
};
