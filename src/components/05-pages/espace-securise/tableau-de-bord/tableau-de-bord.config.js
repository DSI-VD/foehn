'use strict';

const faker = require('faker'); // require the faker module

// sets locale to fr
faker.locale = 'fr';

/**
 * Messages
 */

const messageItemCount = 9; // how many itmes we should generate data for
const messageItemData = [];

// put some real data in the first item
messageItemData.push({
    title: 'Ceci est un message',
    url: '#',
    ref: 'HOX0AI-AJQ7K1',
    text: 'Sera conservé j\'usqu\'à ce que vous la supprimiez',
});

for (let i = 0; i < messageItemCount; i += 1) {
    messageItemData.push({
        title: faker.lorem.sentence(),
        url: faker.internet.url(),
        ref: faker.internet.password(),
        text: faker.lorem.text(),
    });
}

/**
 * Tâches à traiter
 */
const tachesATraiterItemCount = 9; // how many itmes we should generate data for
const tachesATraiterItemData = [];

// put some real data in the first item
tachesATraiterItemData.push({
    title: 'Demande de permis de construire',
    url: '#',
    ref: 'HOX0AI-AJQ7K1',
    text: 'L\'utilisateur Benoît Horisberger a initié une demande de permis de construire qui nécessite votre approbation. Veuillez cliquer sur la demande et suivre les instructions.',
});

for (let i = 0; i < tachesATraiterItemCount; i += 1) {
    tachesATraiterItemData.push({
        title: faker.lorem.sentence(),
        url: faker.internet.url(),
        ref: faker.internet.password(),
        text: faker.lorem.text(),
    });
}
/**
 * Demandes
 */
const demandesItemCount = 9; // how many itmes we should generate data for
const demandesItemData = [];

// put some real data in the first item
demandesItemData.push({
    title: 'Demande de permis de construire',
    url: '#',
    ref: 'HOX0AI-AJQ7K1',
    text: 'L\'utilisateur Benoît Horisberger a initié une demande de permis de construire qui nécessite votre approbation. Veuillez cliquer sur la demande et suivre les instructions.',
});

for (let i = 0; i < demandesItemCount; i += 1) {

    let demandeStatus = '';
    if (faker.random.boolean() === true) {
        demandeStatus = 'Brouillon';
    } else {
        demandeStatus = 'En cours';
    }

    demandesItemData.push({
        title: faker.lorem.sentence(),
        url: faker.internet.url(),
        ref: faker.internet.password(),
        text: faker.lorem.text(),
        status: demandeStatus,
    });
}


module.exports = {
    status: 'prototype',
    context: {
        pageTitle: 'Tableau de bord',
        navigation: {
            title: '@nav-horizontal.title',
            items: [
                {
                    text: 'Tableau de bord',
                    title: null,
                    url: 'tableau-de-bord',
                    active: true,
                },
                {
                    text: 'Historique',
                    title: null,
                    url: 'historique',
                    active: null,
                },
                {
                    text: 'Préstations',
                    title: null,
                    url: 'prestations',
                    active: null,
                },
                {
                    text: 'Documents',
                    title: null,
                    url: 'documents',
                    active: null,
                },
                {
                    text: 'Paramètres',
                    title: null,
                    url: 'parametres',
                    active: null,
                },
            ],
        },
        messages: messageItemData,
        tachesATraiter: tachesATraiterItemData,
        demandes: demandesItemData,
    },
};
