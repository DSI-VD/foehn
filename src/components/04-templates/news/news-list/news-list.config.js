'use strict';

const faker = require('faker'); // require the faker module

// sets locale to fr
faker.locale = 'fr';

/**
 * Demandes
 */
const teaserItemCount = 10; // how many itmes we should generate data for
const teaserItemData = [];

for (let i = 0; i < teaserItemCount; i += 1) {
    teaserItemData.push({
        title: faker.hacker.phrase(),
        styleModifier: 'col-md-6',
        url: faker.internet.url(),
        authors: null,
        media: {
            caption: null,
            image: {
                source: [
                    {
                        srset: faker.image.imageUrl(1600, 1067, '', 1),
                    },
                    {
                        srset: faker.image.imageUrl(960, 640, '', 1),
                    },
                    {
                        srset: faker.image.imageUrl(640, 427, '', 1),
                    },
                ],
                default: {
                    src: faker.image.imageUrl(360, 240, '', 1),
                },
            },
        },
        excerpt: faker.lorem.text(),
    });
}

module.exports = {
    context: {
        pageTitle: 'Actualités',
        breadcrumb: [
            {
                page: 'vd.ch',
                url: '#',
            },
        ],
        teasers: teaserItemData,
    },
    variants: [
        {
            name: 'activity',
            context: {
                pageTitle: 'Toutes les activités',
                breadcrumb: [
                    {
                        page: 'vd.ch',
                        url: '#',
                    },
                    {
                        page: 'autorités',
                        url: '#',
                    },
                    {
                        page: 'Service des automobiles et de la navigation',
                        url: '#',
                    },
                ],
            },
        },
    ],
};
