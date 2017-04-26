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
    text: 'Sera conservé j\'usqu\'à ce que vous la supprimiez',
    meta: {
        date: '26-04-2017',
    },
    actions: '@message--default.actions',
});

for (let i = 0; i < messageItemCount; i += 1) {
    messageItemData.push({
        title: faker.hacker.phrase(),
        url: faker.internet.url(),
        text: faker.lorem.text(),
        meta: {
            date: '26-04-2017',
        },
        actions: '@message--default.actions',
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
    type: 'tâche',
    ref: 'HOX0AI-AJQ7K1',
    text: 'L\'utilisateur Benoît Horisberger a initié une demande de permis de construire qui nécessite votre approbation. Veuillez cliquer sur la demande et suivre les instructions.',
});

for (let i = 0; i < tachesATraiterItemCount; i += 1) {
    tachesATraiterItemData.push({
        title: faker.hacker.phrase(),
        url: faker.internet.url(),
        meta: {
            ref: faker.internet.password(),
            recipient: faker.name.findName(),
        },
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
    meta: {
        ref: 'HOX0AI-AJQ7K1',
        status: 'En cours',
        date: '26-04-2017',
    },
    text: 'L\'utilisateur Benoît Horisberger a initié une demande de permis de construire qui nécessite votre approbation. Veuillez cliquer sur la demande et suivre les instructions.',
    actions: '@message--request.actions',
});

for (let i = 0; i < demandesItemCount; i += 1) {
    let demandeStatus = '';
    if (faker.random.boolean() === true) {
        demandeStatus = 'Brouillon';
    } else {
        demandeStatus = 'En cours';
    }

    demandesItemData.push({
        title: faker.hacker.phrase(),
        url: faker.internet.url(),
        meta: {
            ref: faker.internet.password(),
            status: demandeStatus,
            date: '26-04-2017',
        },
        text: faker.lorem.text(),
        actions: '@message--request.actions',
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
