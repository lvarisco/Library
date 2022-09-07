-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Creato il: Set 07, 2022 alle 11:59
-- Versione del server: 10.3.22-MariaDB-0+deb10u1
-- Versione PHP: 7.3.14-1~deb10u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `biblioteca`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `letture`
--

CREATE TABLE `letture` (
  `codice` char(50) NOT NULL,
  `utente` char(50) NOT NULL,
  `inizio` date DEFAULT NULL,
  `fine` date DEFAULT NULL,
  `preferiti` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `letture`
--

INSERT INTO `letture` (`codice`, `utente`, `inizio`, `fine`, `preferiti`) VALUES
('198orw', 'Lorenzo', '2021-02-04', '2021-02-28', NULL),
('ANGbro', 'Lorenzo', '2022-03-20', '2022-04-02', 1),
('ARTd', 'Lorenzo', '2021-01-23', '2021-01-28', NULL),
('BARcal', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('BIAd', 'Lorenzo', '2021-01-13', '2021-01-16', NULL),
('BIBcoo', 'Lorenzo', '2021-11-12', '2021-11-22', NULL),
('BOTzen', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('BUIlee', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('BUSstr', 'Lorenzo', '2022-09-06', NULL, NULL),
('CAScal', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('CERegg', 'Lorenzo', '2020-12-05', '2020-12-23', 1),
('CODbro', 'Lorenzo', '2022-05-04', '2022-06-29', 1),
('CONago', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('COSsve', 'Lorenzo', '2020-07-31', '2020-08-19', NULL),
('DESbuz', 'Lorenzo', '2022-07-19', '2022-07-22', NULL),
('DIAfil', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('DIScar', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('ENIdic', 'Lorenzo', '2021-08-30', '2021-09-08', 1),
('FAHbra', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('FATorw', 'Lorenzo', '2020-09-01', '2020-09-01', NULL),
('FRAshe', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('FUMpir', 'Lorenzo', '2020-06-17', '2020-06-29', 1),
('HEAcon', 'Lorenzo', '2020-08-19', '2020-08-20', NULL),
('HOSseg', 'Lorenzo', '2020-10-30', '2020-10-31', 0),
('INFbro', 'Lorenzo', '2022-08-17', '2022-08-24', 1),
('KOBcal', 'Lorenzo', '2021-01-16', '2021-01-18', 1),
('LAShar', 'mvarisco', '2020-08-07', '2020-08-11', NULL),
('LIBdic', 'Lorenzo', '2022-02-16', '2022-03-19', 0),
('LUCcan', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('LUNpav', 'Lorenzo', '2021-08-15', '2021-08-21', NULL),
('LUOfol', 'Lorenzo', '2022-08-25', '2022-09-03', NULL),
('MALver', 'Lorenzo', '2020-08-22', '2020-08-31', NULL),
('MANmar', 'Lorenzo', '2021-01-29', '2021-01-30', NULL),
('MASdoy', 'Lorenzo', '2021-09-11', '2021-09-21', 0),
('MAUspi', 'Lorenzo', '2020-12-23', '2020-12-27', NULL),
('MISmol', 'Lorenzo', '2020-06-25', '2020-06-25', 1),
('MONhux', 'Lorenzo', '2021-03-01', '2021-03-22', 1),
('NOMeco', 'Lorenzo', '2021-08-08', '2021-08-14', 1),
('NOVbar', 'Lorenzo', '2020-12-27', '2020-12-27', NULL),
('OMBsco', 'Lorenzo', '2021-08-03', '2021-08-07', 1),
('ORLcal', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('PAPstr', 'Lorenzo', '2021-09-22', '2021-10-31', NULL),
('PERkan', 'Lorenzo', '2021-01-06', '2021-01-13', 1),
('PITpal', 'Lorenzo', '2021-08-23', '2021-08-23', 0),
('PRImac', 'mvarisco', '2020-06-24', '2020-08-06', NULL),
('PROman', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('QUAmau', 'Lorenzo', '2022-09-03', '2022-09-04', NULL),
('RAGhaw', 'Lorenzo', '2021-12-26', '2022-02-16', NULL),
('RAGmol', 'Lorenzo', '2020-06-25', '2020-06-25', NULL),
('SCOdic', 'Lorenzo', '2022-07-02', '2022-07-19', 1),
('SENcal', 'Lorenzo', '2020-11-19', '2020-12-04', NULL),
('SENmin', 'Lorenzo', '2021-06-29', '2021-07-20', NULL),
('SEQlev', 'Lorenzo', '2020-09-03', '2020-09-11', NULL),
('SIMbro', 'Lorenzo', '2022-08-11', '2022-08-16', 1),
('TERoba', 'Lorenzo', '2021-04-01', NULL, NULL),
('ULInuc', 'Lorenzo', '2020-06-25', '2020-06-25', 1),
('UNOpir', 'Lorenzo', '2021-03-23', '2021-03-31', 1),
('VERdic', 'Lorenzo', '2021-08-24', '2021-08-30', 1),
('VITbre', 'Lorenzo', '2020-06-25', '2020-06-25', NULL);

-- --------------------------------------------------------

--
-- Struttura della tabella `libri`
--

CREATE TABLE `libri` (
  `codice` char(50) NOT NULL,
  `titolo` char(100) NOT NULL,
  `autore` char(50) NOT NULL,
  `genere` char(50) NOT NULL,
  `posizione` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `libri`
--

INSERT INTO `libri` (`codice`, `titolo`, `autore`, `genere`, `posizione`) VALUES
('198orw', '1984', 'George Orwell', 'Romanzo distopico', 'Camera Lorenzo'),
('ACIsci', 'A ciascuno il suo', 'Leonardo Sciascia', 'Poliziesco', 'Camera Lorenzo'),
('AMLsha', 'Amleto', 'William Shakespeare', 'Testo teatrale', 'Camera Matteo'),
('AMOcan', 'Amore è un dio (L)', 'Eva Cantarella', 'Saggio', 'Camera Lorenzo'),
('ANGbro', 'Angeli e demoni', 'Dan Brown', 'Romanzo', 'Camera Lorenzo'),
('APIter', 'A piedi nudi sulla terra', 'Tiziano Terzani', 'Romanzo', 'Kobo'),
('ARCcus', 'Arctict Drift', 'Clive Cussler', 'Romance-Adventure', 'Kobo'),
('ARTd', 'Arte di essere fragili (L)', 'Alessandro D Avenia', 'Narrativa', 'Camera Lorenzo'),
('ARTplu', 'Arte di ascoltare (L)', 'Lucius Plutarco', 'Trattato', 'Camera Matteo'),
('ASCpit', 'Ascolta il mio cuore', 'Bianca Pitzorno', 'Narrativa', 'Camera Lorenzo'),
('ASIpla', 'Asinaria - Captivi', 'Tito Plauto', 'Commedia', 'Camera Lorenzo'),
('ASSchr', 'Assassinio sull Orient-Express', 'Agatha Christie', 'Giallo', 'Camera Lorenzo'),
('ATLmar', 'Atletico minaccia football club', 'Marco Marsullo', 'Narrativa', 'Camera Matteo'),
('AULpla', 'Aulularia - Miles gloriosus - Mostellaria', 'Tito Plauto', 'Commedia', 'Camera Lorenzo'),
('BARcal', 'Barone rampante (Il)', 'Italo Calvino', 'Romanzo', 'Camera Lorenzo'),
('BARmas', 'Barca nel bosco (Una)', 'Paola Mastrocola', 'Narrativa', 'Camera Lorenzo'),
('BELvig', 'Bellezza dell invisibile (La)', 'Giovanni Vignale', 'Saggio', 'Camera Lorenzo'),
('BIAd', 'Bianca come il latte rossa come il sangue', 'Alessandro D Avenia', 'Narrativa', 'Camera Lorenzo'),
('BIBcoo', 'Biblioteca dei morti (La)', 'Glenn Cooper', 'Thriller', 'Camera Lorenzo'),
('BLAcus', 'Black wind', 'Clive Cussler', 'Romance-Adventure', 'Kobo'),
('BLIsar', 'Blindness', 'Jose Saramago', 'Thriller', 'Kobo'),
('BOTzen', 'Bottiglia nel mare di Gazza (Una)', 'Valérie Zenatti', 'Romanzo', 'Camera Lorenzo'),
('BOUbuz', 'Boutique del mistero (La)', 'Dino Buzzati', 'Racconti', 'Camera Lorenzo'),
('BUIlee', 'Buio oltre alla siepe (Il)', 'Harper Lee', 'Romanzo', 'Camera Lorenzo'),
('BUOter', 'Buonanotte, signor Lenin', 'Tiziano Terzani', 'Romanzo', 'Kobo'),
('BUSpul', 'Bussola d oro (La)', 'Philip Pullman', 'Narrativa', 'Camera Lorenzo'),
('BUSstr', 'Buskashì', 'Gino Strada', 'Giornalismo', 'Camera Lorenzo'),
('CANvol', 'Candido', 'Francois Voltaire', 'Romanzo', 'Camera Matteo'),
('CAScal', 'Castello dei destini incrociati (Il)', 'Italo Calvino', 'Romanzo', 'Camera Lorenzo'),
('CASdoy', 'Case-Book of Sherlock Holmes (The)', 'Conan Doyle', 'Giallo', 'Camera Matteo'),
('CERegg', 'Cerchio (Il)', 'Dave Eggers', 'Romanzo', 'Camera Lorenzo'),
('CHEmer', 'Che tempo che farà', 'Luca Mercalli', 'Scienza', 'Camera Lorenzo'),
('CIOd', 'Cio che inferno non è', 'Alessandro D Avenia', 'Romanzo', 'Camera Lorenzo'),
('CITbac', 'Città del vento (La) - Century(3)', 'Pierdomenico Baccalario', 'Narrativa', 'Camera Lorenzo'),
('CITcal', 'Città invisibili (Le)', 'Italo Calvino', 'Romanzo', 'Camera Lorenzo'),
('CLOmit', 'Cloud Atlas', 'David Mitchel', 'Romance', 'Kobo'),
('CODbro', 'Codice da Vinci (Il)', 'Dan Brown', 'Romanzo', 'Camera Lorenzo'),
('COMspr', 'Come un killer sotto il sole', 'Bruce Springsteen', 'Biografia', 'Camera Matteo'),
('CONago', 'Confessioni', 'S. Agostino', 'Autobiografia', 'Camera Lorenzo'),
('COSamb', 'Costituzione spiegata a mia figlia (La)', 'Giangiulio Ambrosini', 'Saggistica', 'Camera Lorenzo'),
('COSd', 'Cose che nessuno sa', 'Alessandro D Avenia', 'Romanzo', 'Camera Lorenzo'),
('COSsve', 'Coscienza di Zeno (La)', 'Italo Svevo', 'Romanzo', 'Camera Lorenzo'),
('CROlew', 'Cronache di Narnia (Le)', 'Clive Lewis', 'Fantasy', 'Camera Lorenzo'),
('CUScoo', 'Custodi della biblioteca (I)', 'Glenn Cooper', 'Thriller', 'Camera Lorenzo'),
('DELdos', 'Delitto e castigo', 'Fedor Dostoevskiy', 'Giallo', 'Camera Lorenzo'),
('DESbuz', 'Deserto dei Tartari (Il)', 'Dino Buzzati', 'Narrativa', 'Camera Lorenzo'),
('DIAfil', 'Diario di Zlata', 'Zlata Filipovic', 'Autobiografia', 'Camera Lorenzo'),
('DIAkin', 'Diario di una schiappa', 'Jeff Kinney', 'Racconto a vignette', 'Camera Lorenzo'),
('DIEchr', 'Dieci piccoli indiani', 'Agatha Christie', 'Giallo', 'Camera Lorenzo'),
('DIOsim', 'Diobo che bello!', 'Marco Simoncelli', 'Biografia', 'Camera Matteo'),
('DIScar', 'Discorso sul metodo', 'Renato Cartesio', 'Trattato filosofico', 'Camera Lorenzo'),
('DUBjoy', 'Dubliners', 'James Joyce', 'Romanzo', 'Camera Lorenzo'),
('DUEdec', 'Due di due', 'Andrea Decarlo', 'Narrativa', 'Camera Lorenzo'),
('DUEsco', 'Due morti del signor Mihara (Le)', 'Tommaso Scotti', 'Narrativa', 'Camera Lorenzo'),
('DUEtro', 'Due guerriere (Le) - Le guerre del mondo emerso (2)', 'Licia Troisi', 'Fantasy', 'Camera Lorenzo'),
('ELEbar', 'Eleganza del riccio (L)', 'Muriel Barbery', 'Romanzo', 'Camera Lorenzo'),
('ENIdic', 'Enigma della camera 622 (L’)', 'Joel Dicker', 'Thriller', 'Camera Lorenzo'),
('ENRpir', 'Enrico IV', 'Luigi Pirandello', 'Testo teatrale', 'Camera Lorenzo'),
('ETIsav', 'Etica per un figlio', 'Fernando Savater', 'Etica', 'Camera Matteo'),
('EUNter', 'Eunuchus - Phormio', 'Publio Terenzio', 'Testo teatrale', 'Camera Lorenzo'),
('FABcro', 'Fabbricante di sogni (Il)', 'Andrew Crofts', 'Romanzo', 'Camera Matteo'),
('FACros', 'Factufulness', 'Hans Rosling', 'book', 'Kobo'),
('FAHbra', 'Fahrenheit 451', 'Ray Bradbury', 'Romanzo', 'Camera Lorenzo'),
('FAMgiz', 'Famiglia Manzoni (La)', 'Natalia Gizburg', 'Narrativa', 'Camera Lorenzo'),
('FATorw', 'Fattoria degli animali (La)', 'George Orwell', 'Romanzo distopico', 'Camera Lorenzo'),
('FISric', 'Fisica in casa (La)', 'Emiliano Ricci', 'Scienza', 'Camera Lorenzo'),
('FLAabb', 'Flatland', 'Edwin Abbott', 'Romanzo', 'Camera Lorenzo'),
('FRAdos', 'Fratelli Karamazov (I)', 'Fedor Dostoevskiy', 'Romanzo', 'Camera Lorenzo'),
('FRAshe', 'Frankenstein', 'Mary Shelley', 'Romanzo', 'Camera Lorenzo'),
('FUMpir', 'Fu Mattia Pascal (Il)', 'Luigi Pirandello', 'Romanzo', 'Camera Lorenzo'),
('GIUpiu', 'Giulietta e Romeo', 'Roberto Piumini', 'Racconto', 'Camera Lorenzo'),
('GRAchr', 'Grandi indagini di Poirot (Le)', 'Agatha Christie', 'Giallo', 'Camera Lorenzo'),
('GUEces', 'Guerre in Gallia (Le)', 'Giulio Cesare', 'Saggio', 'Camera Lorenzo'),
('HEAcon', 'Heart of Darkness', 'Joseph Conrad', 'Romanzo', 'Camera Lorenzo'),
('HOSseg', 'Ho scelto la vita', 'Liliana Segre', 'Testimonianza', 'Camera Lorenzo'),
('ILMbul', 'Il maestro e margherita', 'Michail Bulgakov', 'Romance', 'Kobo'),
('IMIhug', 'I miserabili', 'Victor Hugo', 'Romance-Historic', 'Kobo'),
('INCcus', 'Inca gold', 'Clive Cussler', 'Romance-Adventure', 'Kobo'),
('INCmam', 'In cammino verso Santiago', 'Enrica Mambretti', 'Letteratura di viaggio', 'Camera Matteo'),
('INFbro', 'Inferno', 'Dan Brown', 'Romanzo', 'Camera Lorenzo'),
('ISObal', 'Isola di cemento (L)', 'James Ballard', 'Fantascienza', 'Camera Lorenzo'),
('KOBcal', 'Kobane calling', 'Zero calcare', 'Romanzo a fumetti', 'Camera Lorenzo'),
('LADrio', 'Ladro di fulmini (Il)', 'Rick Riordan', 'Fantasy', 'Camera Lorenzo'),
('LAFter', 'La fine è il mio inizio', 'Tiziano Terzani', 'Romanzo', 'Kobo'),
('LAShar', 'La strada di casa', 'Kent Haruf', 'Novel', 'Camera Matteo'),
('LASsch', 'Lasciami andare, madre', 'Helga Schneider', 'Biografia', 'Camera Matteo'),
('LAVsev', 'La vita è un viaggio', 'Beppe Severgnini', 'Romanzo', 'Kobo'),
('LEOhar', 'Leonardo e la macchina infernale', 'Robert Harris', 'Giallo', 'Camera Lorenzo'),
('LIBcoo', 'Libro delle anime (Il)', 'Glenn Cooper', 'Thriller', 'Camera Lorenzo'),
('LIBdic', 'Libro dei Baltimore (Il)', 'Joel Dicker', 'Thriller', 'Camera Lorenzo'),
('LORgol', 'Lord of the flies', 'William Golding', 'Romanzo', 'Camera Lorenzo'),
('LUCcan', 'Luca Canali racconta l Eneide', 'Luca Canali', 'Epica', 'Camera Lorenzo'),
('LUCste', 'Luce sugli oceani (La)', 'M.L. Stedman', 'Romanzo', 'Camera Lorenzo'),
('LUNpav', 'Luna e i falò (La)', 'Cesare Pavese', 'Romanzo', 'Camera Lorenzo'),
('LUOfol', 'Luogo chiamato libertà (Un)', 'Ken Follet', 'Romanzo storico', 'Camera Lorenzo'),
('MALver', 'Malavoglia (I)', 'Giovanni Verga', 'Romanzo', 'Camera Lorenzo'),
('MANmar', 'Manifesto del partito comunista', 'Marx Engels', 'Saggio', 'Camera Lorenzo'),
('MASdoy', 'Mastino dei Baskerville (Il)', 'Conan Doyle', 'Giallo', 'Camera Lorenzo'),
('MAUspi', 'Maus', 'Art Spiegelman', 'Romanzo a fumetti', 'Camera Lorenzo'),
('MISmol', 'Misantropo (Il)', 'J.B.P. Molière', 'Testo teatrale', 'Camera Lorenzo'),
('MIStro', 'Missione di Sennar (La) - Cronache del mondo emerso (2)', 'Licia Troisi', 'Fantasy', 'Camera Lorenzo'),
('MODbra', 'Modelli matematici elementari', 'Primo Brandi', 'Matematica', 'Camera Matteo'),
('MONhux', 'Mondo nuovo (Il)', 'Aldous Huxley', 'Romanzo distopico', 'Camera Lorenzo'),
('MONleb', 'Mondo a piedi (Il)', 'David LeBreton', 'Narrativa', 'Camera Matteo'),
('MORcus', 'Morte bianca', 'Clive Cussler', 'Avventura', 'Camera Lorenzo'),
('NASnie', 'Nascita della tragedia (La)', 'Friedrich Nietzsche', 'Saggio', 'Camera Lorenzo'),
('NOMeco', 'Nome della rosa (Il)', 'Umberto Eco', 'Giallo storico', 'Camera Lorenzo'),
('NOSkot', 'Nostro iceberg si sta sciogliendo (Il)', 'John Kotter', 'Narrativa', 'Camera Matteo'),
('NOVbar', 'Novecento', 'Alessandro Baricco', 'Testo teatrale', 'Camera Lorenzo'),
('NUMtof', 'Numeri in giallo', 'Carlo Toffalori', 'Narrativa', 'Camera Matteo'),
('OCEbar', 'Oceano mare', 'Alessandro Baricco', 'Novel', 'Kobo'),
('OMBsco', 'Ombrello dell’imperatore (L’)', 'Tommaso Scotti', 'Romanzo', 'Camera Lorenzo'),
('OMEbar', 'Omero, Iliade', 'Alessandro Baricco', 'Epica', 'Camera Lorenzo'),
('ORLcal', 'Orlando furioso di Ludovico Ariosto raccontato da Italo Calvino', 'Italo Calvino', 'Poesia', 'Camera Lorenzo'),
('OSCsch', 'Oscar e la dama rosa', 'Eric-Emmanuel Schmitt', 'Romanzo epistolare', 'Camera Matteo'),
('PAPstr', 'Pappagalli verdi', 'Gino Strada', 'Biografia', 'Camera Lorenzo'),
('PARfen', 'Partigiano Johnny (Il)', 'Beppe Fenoglio', 'Narrativa', 'Camera Lorenzo'),
('PARvec', 'Parole non le portano le cicogne (Le)', 'Roberto Vecchioni', 'Narrativa', 'Camera Matteo'),
('PERgar', 'Per questo mi chiamo Giovanni', 'Luigi Garlando', 'Biografia', 'Camera Lorenzo'),
('PERkan', 'Per la pace perpetua', 'Immanuel Kant', 'Saggio', 'Camera Lorenzo'),
('PICcar', 'Piccolo Albero', 'Forrest Carter', 'Romanzo', 'Camera Lorenzo'),
('PITpal', 'Pittore che visse due volte (Il)', 'Chris Paling', 'Narrativa', 'Camera Lorenzo'),
('POLcus', 'Polar shift', 'Clive Cussler', 'Romance-Adventure', 'Kobo'),
('PONwil', 'Ponte di San Luis Rey (Il)', 'Thornton Wilder', 'Romanzo', 'Camera Matteo'),
('PRIbac', 'Prima sorgente (la) - Century(4)', 'Pierdomenico Baccalario', 'Narrativa', 'Camera Lorenzo'),
('PRIgri', 'Primi casi di Theodore Boone (I)', 'John Grisham', 'Romanzo', 'Camera Lorenzo'),
('PRImac', 'Principe (Il)', 'Niccolò Macchiavelli', 'Saggio', 'Camera Lorenzo'),
('PROman', 'Promessi Sposi (I)', 'Alessandro Manzoni', 'Romanzo', 'Camera Lorenzo'),
('QUAgro', 'Qualcuno con cui correre', 'David Grossman', 'Narrativa', 'Camera Matteo'),
('QUAmau', 'Quartetto Razumovsky (Il)', 'Paolo Maurensig', 'Mystery', 'Camera Lorenzo'),
('RAGbar', 'Ragazza che rubava le stelle (La)', 'Brunonia Barry', 'Romanzo', 'Camera Lorenzo'),
('RAGhaw', 'Ragazza del treno (La)', 'Paula Hawkins', 'Thriller', 'Camera Lorenzo'),
('RAGmol', 'Ragazzi della via Pál', 'Ferenc Molnár', 'Romanzo', 'Camera Lorenzo'),
('REDfun', 'Re dei ladri (Il)', 'Cornelia Funke', 'Mystery', 'Camera Lorenzo'),
('RIScas', 'Risolvere i problemi difficili', 'Tommaso Castellani', 'Scienza', 'Camera Lorenzo'),
('ROMdoy', 'Romanzo Fantasma', 'Conan Doyle', 'Narrativa', 'Camera Lorenzo'),
('RUMlig', 'Rumore dei baci a vuoto (Il)', 'Luciano Ligabue', 'Narrativa', 'Camera Matteo'),
('SCIpop', 'Scienza e filosofia', 'Karl Popper', 'Saggio', 'Camera Lorenzo'),
('SCOdic', 'Scomparsa di Stephanie Mailer (La)', 'Joel Dicker', 'Thriller', 'Camera Lorenzo'),
('SCOsci', 'Scomparsa di Majorana (La)', 'Leonardo Sciascia', 'Narrativa', 'Camera Lorenzo'),
('SCUman', 'Scudo di Talos (Lo)', 'Valerio Manfredi', 'Romanzo', 'Camera Lorenzo'),
('SEGsil', 'Segreto di Luca (Il)', 'Ignazio Silone', 'Narrativa', 'Camera Matteo'),
('SEGspa', 'Segreto nel cuore (Un)', 'Nicholas Sparks', 'Romanzo', 'Camera Lorenzo'),
('SENcal', 'Sentiero dei nidi di ragno (Il)', 'Italo Calvino', 'Narrativa', 'Camera Lorenzo'),
('SENmin', 'Sentiero degli dei (Il)', 'Wu Ming', 'Narrativa', 'Camera Lorenzo'),
('SEQlev', 'Se questo è un uomo', 'Primo Levi', 'Biografia', 'Camera Lorenzo'),
('SESbuz', 'Sessanta racconti', 'Dino Buzzati', 'Racconti', 'Camera Lorenzo'),
('SETtro', 'Setta degli assassini (La) - Le guerre del mondo emerso (1)', 'Licia Troisi', 'Fantasy', 'Camera Lorenzo'),
('SIMbro', 'Simbolo perduto (Il)', 'Dan Brown', 'Romanzo', 'Camera Lorenzo'),
('SOLmar', 'Sole dentro (Il)', 'Card. Martini', 'Letteratura cristiana', 'Camera Lorenzo'),
('STEbac', 'Stella di pietra (La) - Century(2)', 'Pierdomenico Baccalario', 'Narrativa', 'Camera Lorenzo'),
('STOsci', 'Storia semplice (Una)', 'Leonardo Sciascia', 'Narrativa', 'Camera Lorenzo'),
('STOver', 'Storia di una capinera', 'Giovanni Verga', 'Romanzo', 'Camera Lorenzo'),
('STRkuh', 'Struttura delle rivoluzioni scientifiche (La)', 'Thomas Kuhn', 'Scienza', 'Camera Lorenzo'),
('TALtro', 'Talismano del potere (Il) - Cronache del mondo emerso (3)', 'Licia Troisi', 'Fantasy', 'Camera Lorenzo'),
('TEMcus', 'Tempesta al polo', 'Clive Cussler', 'Romanzo', 'Camera Lorenzo'),
('TERoba', 'Terra promessa (Una)', 'Barack Obama', 'Autobiografia', 'Camera Lorenzo'),
('THEige', 'The ride of a lifetime', 'Robert Iger', 'Autobiografia', 'Kobo'),
('THEish', 'The buried giant', 'Kazuo Ishiguro', 'Romance', 'Kobo'),
('THEtol', 'The Hobbit (there and back again)', 'JRR Tolkien', 'Fantasy', 'Kobo'),
('TRAvol', 'Trattato sulla tolleranza', 'Francois Voltaire', 'Trattato filosofico', 'Camera Matteo'),
('TREcar', 'Tre del mattino (Le)', 'Gianrico Carofiglio', 'Romanzo', 'Camera Matteo'),
('ULInuc', 'Ulisse - Il mare color del vino', 'Giovanni Nucci', 'Romanzo', 'Camera Lorenzo'),
('ULTfos', 'Ultime lettere di Jacopo Ortis', 'Ugo Foscolo', 'Narrativa', 'Camera Lorenzo'),
('UNAter', 'Un altro giro di giostra', 'Tiziano Terzani', 'Romanzo', 'Kobo'),
('UNIter', 'Un indovino mi disse', 'Tiziano Terzani', 'Romanzo', 'Kobo'),
('UNOpir', 'Uno, nessuno e centomila', 'Luigi Pirandello', 'Romanzo', 'Camera Lorenzo'),
('UOMran', 'Uomo che apparteneva alla terra (L)', 'Ayn Rand', 'Romanzo', 'Camera Matteo'),
('VEChem', 'Vecchio e il mare (Il)', 'Ernest Hemingway', 'Romanzo', 'Camera Lorenzo'),
('VERdic', 'Verità sul caso Harry Quebert (La)', 'Joel Dicker', 'Thriller', 'Camera Lorenzo'),
('VITbre', 'Vita di Galileo', 'Bertold Brecht', 'Testo teatrale', 'Camera Matteo');

-- --------------------------------------------------------

--
-- Struttura della tabella `utenti`
--

CREATE TABLE `utenti` (
  `username` char(50) NOT NULL,
  `password` char(50) NOT NULL,
  `nome` char(50) NOT NULL,
  `cognome` char(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `utenti`
--

INSERT INTO `utenti` (`username`, `password`, `nome`, `cognome`) VALUES
('Lorenzo', 'Pirandello67', 'Lorenzo', 'Varisco'),
('mvarisco', 'ciao', 'Matteo', 'Varisco');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `letture`
--
ALTER TABLE `letture`
  ADD PRIMARY KEY (`codice`);

--
-- Indici per le tabelle `libri`
--
ALTER TABLE `libri`
  ADD PRIMARY KEY (`codice`);

--
-- Indici per le tabelle `utenti`
--
ALTER TABLE `utenti`
  ADD PRIMARY KEY (`username`);

--
-- Limiti per le tabelle scaricate
--

--
-- Limiti per la tabella `letture`
--
ALTER TABLE `letture`
  ADD CONSTRAINT `FK_letture_libri` FOREIGN KEY (`codice`) REFERENCES `libri` (`codice`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
