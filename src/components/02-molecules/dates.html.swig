---
title: Dates
name: dates
collection: molecules
notes: |
  Inspired from [gov.uk dates](https://www.gov.uk/service-manual/user-centred-design/resources/patterns/dates.html).
---

<form class="form-inline">
  <fieldset>
    <legend>Date de naissance</legend>
    <label for="date-form-day" class="sr-only">Jour</label>
    <input id="date-form-day" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="JJ" value="">
    <label for="date-form-month" class="sr-only">Mois</label>
    <input id="date-form-month" class="form-control" type="text" pattern="[0-9]{2}" name="name" size="2" placeholder="MM" value="">
    <label for="date-form-year" class="sr-only">Année</label>
    <input id="date-form-year" class="form-control" type="text" pattern="[0-9]{4}" name="name" size="4" placeholder="AAAA" value="">
  </fieldset>
</form>
