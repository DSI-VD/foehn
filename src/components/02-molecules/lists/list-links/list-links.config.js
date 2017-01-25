'use strict';

 const faker = require('faker'); // require the faker module
 const listItemCount = 10; // how many itmes we should generate data for
 const listItemData = [];

 for (var i = 0; i < listItemCount; i++) {
     listItemData.push({
         item: faker.lorem.sentence(), // generate a random data
         url: faker.internet.url(), // generate a random data
     });
 }

 module.exports = {
    status: "ready",
    context: {
        "list-links": listItemData // use our generated list of members as context data for our template.
    }
};
