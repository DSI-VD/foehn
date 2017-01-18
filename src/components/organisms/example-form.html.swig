---
title: Example form
name: example-form
collection: organisms
wrapper: container
notes: |
---

<form>
  <legend>Recherche dans le registre des licences</legend>

  <p>Veuillez entrer un nom d'enseigne, de rue ou de personne responsable (minimum 3 caractères). Si vous définissez la catégorie, veuillez indiquer le NPA ou la commune.</p>

  <div class="form-group">
    <label for="name">Nom de l'enseigne</label>
    <input class="form-control" type="text" id="name" name="name" value="">
  </div>

  <div class="form-group">
    <label for="category">Catégorie</label>
    <select class="form-control" id="category">
      <option>1</option>
      <option>2</option>
      <option>3</option>
      <option>4</option>
      <option>5</option>
    </select>
  </div>

  <div class="form-group">
    <label for="street">Rue</label>
    <input class="form-control" type="text" id="street" name="street" value="" aria-describedby="mailHelp">
  </div>

  <div class="form-group">
    <label for="street-number"><abbr title="Numéro">No</abbr></label>
    <input class="form-control" type="number" id="street-number" name="street-number" value="" pattern="[0-9]*">
  </div>

  <div class="form-group">
    <label for="postal-code"><abbr title="Numéro postal d'acheminement">NPA</abbr></label>
    <input class="form-control" type="number" id="postal-code" name="postal-code" value="" pattern="[0-9]*">
  </div>

  <div class="form-group">
    <label for="municipality" id="municipality_label">Commune</label>
    <datalist id="municipalities">
      <select name="municipality" class="form-control">
        <option value="" selected="selected">(Toutes)</option>
        <option value="ACLENS">Aclens</option>
        <option value="AGIEZ">Agiez</option>
        <option value="AIGLE">Aigle</option>
        <option value="ALLAMAN">Allaman</option>
        <option value="APPLES">Apples</option>
        <option value="ARNEX-SUR-NYON">Arnex-sur-Nyon</option>
        <option value="ARNEX-SUR-ORBE">Arnex-sur-Orbe</option>
        <option value="ARZIER">Arzier</option>
        <option value="ASSENS">Assens</option>
        <option value="AUBONNE">Aubonne</option>
        <option value="AVENCHES">Avenches</option>
        <option value="BALLAIGUES">Ballaigues</option>
        <option value="BALLENS">Ballens</option>
        <option value="BASSINS">Bassins</option>
        <option value="BAULMES">Baulmes</option>
        <option value="BAVOIS">Bavois</option>
        <option value="BEGNINS">Begnins</option>
        <option value="BELMONT-SUR-LAUSANNE">Belmont-sur-Lausanne</option>
        <option value="BELMONT-SUR-YVERDON">Belmont-sur-Yverdon</option>
        <option value="BERCHER">Bercher</option>
        <option value="BEROLLE">Berolle</option>
        <option value="BETTENS">Bettens</option>
        <option value="BEX">Bex</option>
        <option value="BIOLEY-MAGNOUX">Bioley-Magnoux</option>
        <option value="BIOLEY-ORJULAZ">Bioley-Orjulaz</option>
        <option value="BIÈRE">Bière</option>
        <option value="BLONAY">Blonay</option>
        <option value="BOFFLENS">Bofflens</option>
        <option value="BOGIS-BOSSEY">Bogis-Bossey</option>
        <option value="BONVILLARS">Bonvillars</option>
        <option value="BOREX">Borex</option>
        <option value="BOTTENS">Bottens</option>
        <option value="BOUGY-VILLARS">Bougy-Villars</option>
        <option value="BOULENS">Boulens</option>
        <option value="BOURG-EN-LAVAUX">Bourg-en-Lavaux</option>
        <option value="BOURNENS">Bournens</option>
        <option value="BOUSSENS">Boussens</option>
        <option value="BREMBLENS">Bremblens</option>
        <option value="BRENLES">Brenles</option>
        <option value="BRETIGNY-SUR-MORRENS">Bretigny-sur-Morrens</option>
        <option value="BRETONNIÈRES">Bretonnières</option>
        <option value="BUCHILLON">Buchillon</option>
        <option value="BULLET">Bullet</option>
        <option value="BURSINEL">Bursinel</option>
        <option value="BURSINS">Bursins</option>
        <option value="BURTIGNY">Burtigny</option>
        <option value="BUSSIGNY-PRÈS-LAUSANNE">Bussigny-près-Lausanne</option>
        <option value="BUSSY-CHARDONNEY">Bussy-Chardonney</option>
        <option value="BUSSY-SUR-MOUDON">Bussy-sur-Moudon</option>
        <option value="CARROUGE (VD)">Carrouge (VD)</option>
        <option value="CHAMBLON">Chamblon</option>
        <option value="CHAMPAGNE">Champagne</option>
        <option value="CHAMPTAUROZ">Champtauroz</option>
        <option value="CHAMPVENT">Champvent</option>
        <option value="CHARDONNE">Chardonne</option>
        <option value="CHAVANNES-DE-BOGIS">Chavannes-de-Bogis</option>
        <option value="CHAVANNES-DES-BOIS">Chavannes-des-Bois</option>
        <option value="CHAVANNES-LE-CHÊNE">Chavannes-le-Chêne</option>
        <option value="CHAVANNES-LE-VEYRON">Chavannes-le-Veyron</option>
        <option value="CHAVANNES-PRÈS-RENENS">Chavannes-près-Renens</option>
        <option value="CHAVANNES-SUR-MOUDON">Chavannes-sur-Moudon</option>
        <option value="CHAVORNAY">Chavornay</option>
        <option value="CHESALLES-SUR-MOUDON">Chesalles-sur-Moudon</option>
        <option value="CHESEAUX-NORÉAZ">Cheseaux-Noréaz</option>
        <option value="CHESEAUX-SUR-LAUSANNE">Cheseaux-sur-Lausanne</option>
        <option value="CHESSEL">Chessel</option>
        <option value="CHEVILLY">Chevilly</option>
        <option value="CHEVROUX">Chevroux</option>
        <option value="CHEXBRES">Chexbres</option>
        <option value="CHIGNY">Chigny</option>
        <option value="CHÂTEAU-D'OEX">Château-d'Oex</option>
        <option value="CHÉSEREX">Chéserex</option>
        <option value="CHÊNE-PÂQUIER">Chêne-Pâquier</option>
        <option value="CLARMONT">Clarmont</option>
        <option value="COINSINS">Coinsins</option>
        <option value="COMMUGNY">Commugny</option>
        <option value="CONCISE">Concise</option>
        <option value="COPPET">Coppet</option>
        <option value="CORBEYRIER">Corbeyrier</option>
        <option value="CORCELLES-LE-JORAT">Corcelles-le-Jorat</option>
        <option value="CORCELLES-PRÈS-CONCISE">Corcelles-près-Concise</option>
        <option value="CORCELLES-PRÈS-PAYERNE">Corcelles-près-Payerne</option>
        <option value="CORCELLES-SUR-CHAVORNAY">Corcelles-sur-Chavornay</option>
        <option value="CORSEAUX">Corseaux</option>
        <option value="CORSIER-SUR-VEVEY">Corsier-sur-Vevey</option>
        <option value="COSSONAY">Cossonay</option>
        <option value="COTTENS (VD)">Cottens (VD)</option>
        <option value="CRANS-PRÈS-CÉLIGNY">Crans-près-Céligny</option>
        <option value="CRASSIER">Crassier</option>
        <option value="CREMIN">Cremin</option>
        <option value="CRISSIER">Crissier</option>
        <option value="CRONAY">Cronay</option>
        <option value="CROY">Croy</option>
        <option value="CUARNENS">Cuarnens</option>
        <option value="CUARNY">Cuarny</option>
        <option value="CUDREFIN">Cudrefin</option>
        <option value="CUGY (VD)">Cugy (VD)</option>
        <option value="CURTILLES">Curtilles</option>
        <option value="DAILLENS">Daillens</option>
        <option value="DENENS">Denens</option>
        <option value="DENGES">Denges</option>
        <option value="DIZY">Dizy</option>
        <option value="DOMPIERRE (VD)">Dompierre (VD)</option>
        <option value="DONNELOYE">Donneloye</option>
        <option value="DUILLIER">Duillier</option>
        <option value="DULLY">Dully</option>
        <option value="DÉMORET">Démoret</option>
        <option value="ECHALLENS">Echallens</option>
        <option value="ECHANDENS">Echandens</option>
        <option value="ECHICHENS">Echichens</option>
        <option value="ECLÉPENS">Eclépens</option>
        <option value="ECUBLENS (VD)">Ecublens (VD)</option>
        <option value="EPALINGES">Epalinges</option>
        <option value="EPENDES (VD)">Ependes (VD)</option>
        <option value="ESSERT-PITTET">Essert-Pittet</option>
        <option value="ESSERTES">Essertes</option>
        <option value="ESSERTINES-SUR-ROLLE">Essertines-sur-Rolle</option>
        <option value="ESSERTINES-SUR-YVERDON">Essertines-sur-Yverdon</option>
        <option value="ETAGNIÈRES">Etagnières</option>
        <option value="ETOY">Etoy</option>
        <option value="EYSINS">Eysins</option>
        <option value="FAOUG">Faoug</option>
        <option value="FERLENS (VD)">Ferlens (VD)</option>
        <option value="FERREYRES">Ferreyres</option>
        <option value="FEY">Fey</option>
        <option value="FIEZ">Fiez</option>
        <option value="FONTAINES-SUR-GRANDSON">Fontaines-sur-Grandson</option>
        <option value="FOREL (LAVAUX)">Forel (Lavaux)</option>
        <option value="FOREL-SUR-LUCENS">Forel-sur-Lucens</option>
        <option value="FOUNEX">Founex</option>
        <option value="FROIDEVILLE">Froideville</option>
        <option value="FÉCHY">Féchy</option>
        <option value="GENOLIER">Genolier</option>
        <option value="GIEZ">Giez</option>
        <option value="GILLY">Gilly</option>
        <option value="GIMEL">Gimel</option>
        <option value="GINGINS">Gingins</option>
        <option value="GIVRINS">Givrins</option>
        <option value="GLAND">Gland</option>
        <option value="GOLLION">Gollion</option>
        <option value="GOUMOËNS">Goumoëns</option>
        <option value="GRANCY">Grancy</option>
        <option value="GRANDCOUR">Grandcour</option>
        <option value="GRANDEVENT">Grandevent</option>
        <option value="GRANDSON">Grandson</option>
        <option value="GRENS">Grens</option>
        <option value="GRYON">Gryon</option>
        <option value="HENNIEZ">Henniez</option>
        <option value="HERMENCHES">Hermenches</option>
        <option value="JONGNY">Jongny</option>
        <option value="JORAT-MENTHUE">Jorat-Menthue</option>
        <option value="JOUXTENS-MÉZERY">Jouxtens-Mézery</option>
        <option value="JURIENS">Juriens</option>
        <option value="L'ABBAYE">L'Abbaye</option>
        <option value="L'ABERGEMENT">L'Abergement</option>
        <option value="L'ISLE">L'Isle</option>
        <option value="L'ORIENT">L'Orient</option>
        <option value="LA CHAUX (COSSONAY)">La Chaux (Cossonay)</option>
        <option value="LA COUDRE">La Coudre</option>
        <option value="LA PRAZ">La Praz</option>
        <option value="LA RIPPE">La Rippe</option>
        <option value="LA SARRAZ">La Sarraz</option>
        <option value="LA TOUR-DE-PEILZ">La Tour-de-Peilz</option>
        <option value="LAUSANNE">Lausanne</option>
        <option value="LAVEY-MORCLES">Lavey-Morcles</option>
        <option value="LAVIGNY">Lavigny</option>
        <option value="LE BRASSUS">Le Brassus</option>
        <option value="LE CHENIT">Le Chenit</option>
        <option value="LE LIEU">Le Lieu</option>
        <option value="LE MONT-SUR-LAUSANNE">Le Mont-sur-Lausanne</option>
        <option value="LE PONT">Le Pont</option>
        <option value="LE SENTIER">Le Sentier</option>
        <option value="LE SÉCHEY">Le Séchey</option>
        <option value="LE VAUD">Le Vaud</option>
        <option value="LES BIOUX">Les Bioux</option>
        <option value="LES CLÉES">Les Clées</option>
        <option value="LEYSIN">Leysin</option>
        <option value="LIGNEROLLE">Lignerolle</option>
        <option value="LONAY">Lonay</option>
        <option value="LONGIROD">Longirod</option>
        <option value="LOVATENS">Lovatens</option>
        <option value="LUCENS">Lucens</option>
        <option value="LUINS">Luins</option>
        <option value="LULLY (VD)">Lully (VD)</option>
        <option value="LUSSERY-VILLARS">Lussery-Villars</option>
        <option value="LUSSY-SUR-MORGES">Lussy-sur-Morges</option>
        <option value="LUTRY">Lutry</option>
        <option value="MARACON">Maracon</option>
        <option value="MARCHISSY">Marchissy</option>
        <option value="MATHOD">Mathod</option>
        <option value="MAUBORGET">Mauborget</option>
        <option value="MAURAZ">Mauraz</option>
        <option value="MEX (VD)">Mex (VD)</option>
        <option value="MIES">Mies</option>
        <option value="MISSY">Missy</option>
        <option value="MOIRY">Moiry</option>
        <option value="MOLLENS (VD)">Mollens (VD)</option>
        <option value="MOLONDIN">Molondin</option>
        <option value="MONT-LA-VILLE">Mont-la-Ville</option>
        <option value="MONT-SUR-ROLLE">Mont-sur-Rolle</option>
        <option value="MONTAGNY-PRÈS-YVERDON">Montagny-près-Yverdon</option>
        <option value="MONTANAIRE">Montanaire</option>
        <option value="MONTCHERAND">Montcherand</option>
        <option value="MONTHEROD">Montherod</option>
        <option value="MONTILLIEZ">Montilliez</option>
        <option value="MONTPREVEYRES">Montpreveyres</option>
        <option value="MONTREUX">Montreux</option>
        <option value="MONTRICHER">Montricher</option>
        <option value="MORGES">Morges</option>
        <option value="MORRENS (VD)">Morrens (VD)</option>
        <option value="MOUDON">Moudon</option>
        <option value="MUTRUX">Mutrux</option>
        <option value="MÉZIÈRES (VD)">Mézières (VD)</option>
        <option value="NOVALLES">Novalles</option>
        <option value="NOVILLE">Noville</option>
        <option value="NYON">Nyon</option>
        <option value="OGENS">Ogens</option>
        <option value="OLLON">Ollon</option>
        <option value="ONNENS (VD)">Onnens (VD)</option>
        <option value="OPPENS">Oppens</option>
        <option value="ORBE">Orbe</option>
        <option value="ORGES">Orges</option>
        <option value="ORMONT-DESSOUS">Ormont-Dessous</option>
        <option value="ORMONT-DESSUS">Ormont-Dessus</option>
        <option value="ORNY">Orny</option>
        <option value="ORON">Oron</option>
        <option value="ORZENS">Orzens</option>
        <option value="OULENS-SOUS-ECHALLENS">Oulens-sous-Echallens</option>
        <option value="PAILLY">Pailly</option>
        <option value="PAMPIGNY">Pampigny</option>
        <option value="PAUDEX">Paudex</option>
        <option value="PAYERNE">Payerne</option>
        <option value="PENTHALAZ">Penthalaz</option>
        <option value="PENTHAZ">Penthaz</option>
        <option value="PENTHÉRÉAZ">Penthéréaz</option>
        <option value="PERROY">Perroy</option>
        <option value="POLIEZ-PITTET">Poliez-Pittet</option>
        <option value="POMPAPLES">Pompaples</option>
        <option value="POMY">Pomy</option>
        <option value="PRANGINS">Prangins</option>
        <option value="PREMIER">Premier</option>
        <option value="PRILLY">Prilly</option>
        <option value="PROVENCE">Provence</option>
        <option value="PRÉVERENGES">Préverenges</option>
        <option value="PRÉVONLOUP">Prévonloup</option>
        <option value="PUIDOUX">Puidoux</option>
        <option value="PULLY">Pully</option>
        <option value="RANCES">Rances</option>
        <option value="RENENS (VD)">Renens (VD)</option>
        <option value="RENNAZ">Rennaz</option>
        <option value="REVEROLLE">Reverolle</option>
        <option value="RIVAZ">Rivaz</option>
        <option value="ROCHE (VD)">Roche (VD)</option>
        <option value="ROLLE">Rolle</option>
        <option value="ROMAINMÔTIER-ENVY">Romainmôtier-Envy</option>
        <option value="ROMANEL-SUR-LAUSANNE">Romanel-sur-Lausanne</option>
        <option value="ROMANEL-SUR-MORGES">Romanel-sur-Morges</option>
        <option value="ROPRAZ">Ropraz</option>
        <option value="ROSSENGES">Rossenges</option>
        <option value="ROSSINIÈRE">Rossinière</option>
        <option value="ROUGEMONT">Rougemont</option>
        <option value="ROVRAY">Rovray</option>
        <option value="RUEYRES">Rueyres</option>
        <option value="SAINT-BARTHÉLEMY (VD)">Saint-Barthélemy (VD)</option>
        <option value="SAINT-CERGUE">Saint-Cergue</option>
        <option value="SAINT-GEORGE">Saint-George</option>
        <option value="SAINT-LIVRES">Saint-Livres</option>
        <option value="SAINT-LÉGIER-LA CHIÉSAZ">Saint-Légier-La Chiésaz</option>
        <option value="SAINT-OYENS">Saint-Oyens</option>
        <option value="SAINT-PREX">Saint-Prex</option>
        <option value="SAINT-SAPHORIN (LAVAUX)">Saint-Saphorin (Lavaux)</option>
        <option value="SAINT-SULPICE (VD)">Saint-Sulpice (VD)</option>
        <option value="SAINTE-CROIX">Sainte-Croix</option>
        <option value="SARZENS">Sarzens</option>
        <option value="SAUBRAZ">Saubraz</option>
        <option value="SAVIGNY">Savigny</option>
        <option value="SENARCLENS">Senarclens</option>
        <option value="SERGEY">Sergey</option>
        <option value="SERVION">Servion</option>
        <option value="SIGNY-AVENEX">Signy-Avenex</option>
        <option value="SUCHY">Suchy</option>
        <option value="SULLENS">Sullens</option>
        <option value="SUSCÉVAZ">Suscévaz</option>
        <option value="SYENS">Syens</option>
        <option value="SÉVERY">Sévery</option>
        <option value="TANNAY">Tannay</option>
        <option value="TARTEGNIN">Tartegnin</option>
        <option value="TOLOCHENAZ">Tolochenaz</option>
        <option value="TREY">Trey</option>
        <option value="TREYCOVAGNES">Treycovagnes</option>
        <option value="TREYTORRENS (PAYERNE)">Treytorrens (Payerne)</option>
        <option value="TRÉLEX">Trélex</option>
        <option value="TÉVENON">Tévenon</option>
        <option value="URSINS">Ursins</option>
        <option value="VALBROYE">Valbroye</option>
        <option value="VALEYRES-SOUS-MONTAGNY">Valeyres-sous-Montagny</option>
        <option value="VALEYRES-SOUS-RANCES">Valeyres-sous-Rances</option>
        <option value="VALEYRES-SOUS-URSINS">Valeyres-sous-Ursins</option>
        <option value="VALLORBE">Vallorbe</option>
        <option value="VAULION">Vaulion</option>
        <option value="VAUX-SUR-MORGES">Vaux-sur-Morges</option>
        <option value="VEVEY">Vevey</option>
        <option value="VEYTAUX">Veytaux</option>
        <option value="VICH">Vich</option>
        <option value="VILLARS-EPENEY">Villars-Epeney</option>
        <option value="VILLARS-SAINTE-CROIX">Villars-Sainte-Croix</option>
        <option value="VILLARS-LE-COMTE">Villars-le-Comte</option>
        <option value="VILLARS-LE-TERROIR">Villars-le-Terroir</option>
        <option value="VILLARS-SOUS-YENS">Villars-sous-Yens</option>
        <option value="VILLARZEL">Villarzel</option>
        <option value="VILLENEUVE (VD)">Villeneuve (VD)</option>
        <option value="VINZEL">Vinzel</option>
        <option value="VUARRENS">Vuarrens</option>
        <option value="VUCHERENS">Vucherens</option>
        <option value="VUFFLENS-LA-VILLE">Vufflens-la-Ville</option>
        <option value="VUFFLENS-LE-CHÂTEAU">Vufflens-le-Château</option>
        <option value="VUGELLES-LA MOTHE">Vugelles-La Mothe</option>
        <option value="VUITEBOEUF">Vuiteboeuf</option>
        <option value="VULLIENS">Vulliens</option>
        <option value="VULLIERENS">Vullierens</option>
        <option value="VULLY-LES-LACS">Vully-les-Lacs</option>
        <option value="YENS">Yens</option>
        <option value="YVERDON-LES-BAINS">Yverdon-les-Bains</option>
        <option value="YVONAND">Yvonand</option>
        <option value="YVORNE">Yvorne</option>
      </select>
    </datalist>
    <input id="municipality" name="municipality" list="municipalities" class="form-control">
  </div>

  <div class="form-group">
    <label for="responsible">Nom de la personne ou de la raison sociale responsable</label>
    <input class="form-control" type="text" id="responsible" name="responsible" value="">
  </div>

  <div class="form-group">
    <button type="submit" class="btn btn-primary vd-btn-chevron-r btn-sm">Envoyer</button>
  </div>

</form>
