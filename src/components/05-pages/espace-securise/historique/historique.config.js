'use strict';

const faker = require('faker'); // require the faker module

// sets locale to fr
faker.locale = 'fr';

/**
 * Demandes
 */
const historiqueItemCount = 9; // how many itmes we should generate data for
const historiqueItemData = [];

// put some real data in the first item
historiqueItemData.push({
    title: 'Demande de permis de construire',
    url: '#',
    type: 'demande',
    ref: 'HOX0AI-AJQ7K1',
    text: 'L\'utilisateur Benoît Horisberger a initié une demande de permis de construire qui nécessite votre approbation. Veuillez cliquer sur la demande et suivre les instructions.',
    status: 'En cours',
    date: faker.random.number({ min: 1, max: 31 }) + '-' + 12 + '-' + '2016',
});

for (let i = 0; i < historiqueItemCount; i += 1) {
    let demandeStatus = '';
    if (faker.random.boolean() === true) {
        demandeStatus = 'Brouillon';
    } else {
        demandeStatus = 'Cloturé';
    }

    historiqueItemData.push({
        title: faker.hacker.phrase(),
        url: faker.internet.url(),
        type: 'demande',
        ref: faker.internet.password(),
        text: faker.lorem.text(),
        status: demandeStatus,
        date: faker.random.number({ min: 1, max: 31 }) + '-' + (11 - i) + '-' + '2016',
    });
}


module.exports = {
    status: 'prototype',
    context: {
        pageTitle: 'Historique',
        navigation: {
            title: '@nav-horizontal.title',
            items: [
                {
                    text: 'Tableau de bord',
                    title: null,
                    url: 'tableau-de-bord',
                    active: null,
                },
                {
                    text: 'Historique',
                    title: null,
                    url: 'historique',
                    active: true,
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
        search: {
            title: 'Rechercher dans l\'historique',
            options: {
                legend: 'Rechercher les',
                items: [
                    {
                        label: 'Demandes',
                        name: 'filterSearch',
                        checked: false,
                    },
                    {
                        label: 'Tâches',
                        name: 'filterSearch',
                        checked: false,
                    },
                    {
                        label: 'Messages',
                        name: 'filterSearch',
                        checked: false,
                    },
                ]
            }
        },
        historique: historiqueItemData,
    },
};
