# Library
PHP programme for organize the home library with the possibility to create a list of the books that you are reading and the books that you already read with some details like start date, finish date and favorites.</br></br>

## File

PHP files present in the directory.</br>

### _index.php_

Page with the login form.</br>

### _regitrazione.php_

Page with the sign up form.</br>

### _home.php_

Page with the list of owned books with the relative information such as the author and the genre. There are three buttons to sort the list by title, author or genre.</br>

### _aggiungi.php_

Page with the form to add a new book at the list.</br>

### _letture.php_

Introductory page to the reading section with three buttons relating to the three subsection: `Begin reading`, `Readings in progress` and `List of readings`.</br>

### _letture1.php_

Page with the form to start a new reading.</br>

### _letture2.php_

Page with the list of readings in progress.</br>

### _letture3.php_

Page with the list of finished readings and favourites.</br>

### _logout.php_

Page that logut the account.</br></br>

## Database

The database presents three tabs:
- letture
- libri
- utenti
</br>

### _letture_

| codice | utente | inizio | fine | preferiti |
|-|-|-|-|-|
| Book code | Username | Reading start date | Reading end date | Boolean: `1` favourite; `0` not favourite |
</br>

### _libri_

| codice | titolo | autore | genere | posizione |
|-|-|-|-|-|
| Book code | Book's title | Book's author | Book's genre | Place to find the book |
</br>

### _utenti_

| username | password | nome | cognome |
|-|-|-|-|
| Account username  | Account password | Name | Surname |
</br>
