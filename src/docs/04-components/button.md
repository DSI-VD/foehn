--- 
status: review
label: Bouton
---

{{ '@button' | renderComponent | safe }}

## Quand utiliser ce composant

Utilisez le composant bouton pour aider les utilisateurs à effectuer une action
comme démarrer une application ou enregistrer leurs informations.

## Fonctionnement

Écrivez le texte du bouton avec une majuscule au début. Il sera reformaté en
majuscule.  Le texte doit décrire l'action qu'il effectue.

Par exemple:

- "*Commencez*" au début d'une prestation
- "*Se connecter*" à un compte qu'un utilisateur a déjà créé 
- "*Continuer*" lorsque le service ou la prestation n'enregistre pas les
  informations d'un utilisateur 
- "*Enregistrer et continuer*" lorsque le service ou la prestation enregistre
  les informations d'un utilisateur 
- "*Enregistrer et revenir plus tard*" lorsqu'un utilisateur peut enregistrer
  ses informations et revenir plus tard
- "*Ajouter un élément*" pour ajouter un autre élément à une liste ou à un
  groupe
- "*Payer*" pour effectuer un paiement 
- "*Confirmer et envoyer*" sur une page de réponses aux chèques qui n'a pas de
  contenu légal qu'un utilisateur doit accepter
- "*Accepter et envoyer*" sur une page de vérification de réponses aux qui a un
  contenu légal qu'un utilisateur doit accepter
- "*Se déconnecter*" lorsqu'un utilisateur est connecté à un compte

Vous devrez peut-être inclure plus ou différents mots pour mieux décrire
l'action. Par exemple, "Ajouter une autre adresse" et "Accepter et demander un
remboursement de taxe".

Alignez le bouton d'action principal sur le bord gauche de votre formulaire.

### Bouton par défaut

Utilisez un bouton d'action par défaut pour l'action principale d'une page.

Évitez d'utiliser plusieurs boutons par défaut sur une seule page. Le fait
d'avoir plusieurs boutons d'action principale réduit leur impact et rend plus
difficile pour les utilisateurs de savoir ce qu'ils doivent faire en premier.

{{ '@button' | renderComponent | safe }}

### Bouton de démarrage

Utilisez un bouton de démarrage pour l'action principale sur votre page de
prestation ou service.

{{ '@button--cta' | renderComponent | safe }}

### Bouton secondaire

Utilisez les boutons secondaires pour les actions secondaires sur une page.

Les pages contenant trop de boutons d'action empêchent les utilisateurs de
savoir quoi faire ensuite. Avant d'ajouter de nombreux boutons secondaires,
essayez de simplifier la page ou de répartir le contenu sur plusieurs pages.


{{ '@button--secondary' | renderComponent | safe }}

Vous pouvez utiliser des boutons secondaires en combinaison avec des boutons par
défaut.

### Bouton d'avertissement

{{ '@button--danger' | renderComponent | safe }}

Utilisez uniquement des boutons d'avertissement pour les actions ayant des
conséquences destructrices graves qui ne peuvent pas être facilement annulées
par un utilisateur. Par exemple, supprimer définitivement un compte.

Lorsque vous laissez les utilisateurs effectuer une action comme celle-ci, c'est
une bonne idée d'inclure une étape supplémentaire qui leur demande de la
confirmer.

Dans ce cas, utilisez un autre style de bouton pour l'appel initial à l'action
et un bouton d'avertissement pour la confirmation finale.

Ne vous fiez pas seulement à la couleur rouge d'un bouton d'avertissement pour
communiquer la nature sérieuse de l'action. En effet, tous les utilisateurs ne
seront pas en mesure de voir la couleur ou de comprendre ce qu'elle signifie.
Assurez-vous que le contexte et le texte du bouton indiquent clairement ce qui
se passera si l'utilisateur le sélectionne.


