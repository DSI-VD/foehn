---
title: "Liste de tâches"
label: "Liste de tâches"
status: ready
---

Les pages de liste de tâches aident les utilisateurs à comprendre:

- les tâches nécessaires à la réalisation d'une transaction
- l'ordre dans lequel ils doivent accomplir des tâches
- quand ils ont terminé les tâches ou leur status 

{{ '@task-list-page' | renderComponent }}

## Quand utiliser ce schéma

Utilisez uniquement une page de liste de tâches pour les transactions ou
prestations plus longues impliquant plusieurs tâches que les utilisateurs
peuvent avoir besoin d'effectuer sur un certain nombre de sessions.

Essayez de simplifier la transaction avant d’utiliser une page de liste de
tâches. Si vous êtes en mesure de réduire le nombre de tâches ou d'étapes, vous
n'avez peut-être pas besoin de ce schéma.

## Comment ça marche

Vous devriez afficher une page de liste de tâches:

- au début de la transaction
- à chaque fois que l'utilisateur retourne sur sa session

Lorsque vous utilisez une page de liste de tâches dans votre service, vous
devez:

- regrouper les actions liées en tâches
- montrer le statut de chaque tâche 

S'il y a beaucoup de tâches à accomplir, vous devrez peut-être aussi les
regrouper en sous-sections. 

### Afficher le statut de la tâche

Chaque fois que vous affichez une page de liste de tâches, indiquez clairement
aux utilisateurs quelles tâches ils ont accomplies en les étiquetant "Terminé". 

### Regrouper les actions liées en tâches

Regroupez les activités et les questions en tâches, par exemple «Fournir des
preuves financières» et «Donner des informations médicales». Cela aidera les
utilisateurs à comprendre et à planifier ce qu’ils doivent faire.

Dans la mesure du possible, les noms de tâches doivent:

- décrire ce que la tâche ou l'activité impliquera
- commencez par les verbes, par exemple, 'vérifier', 'déclarer', 'signaler' 

### Regrouper les tâches en sections

Si votre transaction implique de nombreuses tâches, rendez-la gérable en la
scindant en sections représentant les étapes du processus.

Par exemple, vous pouvez regrouper toutes les tâches permettant aux utilisateurs
de déterminer si votre prestation leur convient, dans une section intitulée
"Vérifier avant de commencer".

Dans la mesure du possible, autorisez les utilisateurs à effectuer des tâches
dans n'importe quel ordre. Cela les aidera à planifier leur temps et à compléter
les sections au fur et à mesure qu'ils le peuvent.
