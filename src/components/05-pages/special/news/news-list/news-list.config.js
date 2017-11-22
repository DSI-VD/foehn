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
                default: {
                    src: faker.image.imageUrl(960, 640, '', 1),
                    class: 'img-fluid',
                    srcset: [
                        {
                            width: '320w',
                            file: faker.image.imageUrl(320, 213, '', 1),
                        },
                        {
                            width: '540w',
                            file: faker.image.imageUrl(540, 360, '', 1),
                        },
                        {
                            width: '720w',
                            file: faker.image.imageUrl(720, 480, '', 1),
                        },
                        {
                            width: '960w',
                            file: faker.image.imageUrl(960, 640, '', 1),
                        },
                        {
                            width: '1140w',
                            file: faker.image.imageUrl(1140, 760, '', 1),
                        },
                    ],
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
        searchForm: {
            title: 'Rechercher dans les actualités',
            titleModifier: 'mt-0',
        },
    },
    variants: [
        {
            name: 'activities',
            context: {
                pageTitle: 'Toutes les activités',
                breadcrumb: [
                    {
                        page: 'vd.ch',
                        url: '#',
                    },
                    {
                        page: 'Autorités',
                        url: '#',
                    },
                    {
                        page: 'Service des automobiles et de la navigation',
                        url: '#',
                    },
                ],
            },
        },
        {
            name: 'categories',
            context: {
                pageTitle: 'Categorie: Agriculture',
                breadcrumb: [
                    {
                        page: 'vd.ch',
                        url: '#',
                    },
                    {
                        page: 'Autorités',
                        url: '#',
                    },
                    {
                        page: 'Service des automobiles et de la navigation',
                        url: '#',
                    },
                    {
                        page: 'Actualité',
                        url: '#',
                    },
                ],
            },
        },
    ],
};
