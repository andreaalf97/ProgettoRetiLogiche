# ProgettoRetiLogiche

## Abstract

Il report del progetto si trova qui --> "/Report.pdf"

## Consegna

Sia dato uno spazio bidimensionale definito in termini di dimensione orizzontale e verticale,
e siano date le posizioni di N punti, detti “centroidi”, appartenenti a tale spazio. Si vuole
implementare un componente HW descritto in VHDL che, una volta fornite le coordinate di
un punto appartenente a tale spazio, sia in grado di valutare a quale/i dei centroidi risulti più
vicino (Manhattan distance).
Lo spazio in questione è un quadrato (256x256) e le coordinate nello spazio dei centroidi e
del punto da valutare sono memorizzati in una memoria (la cui implementazione non è parte
del progetto). La vicinanza al centroide viene espressa tramite una maschera di bit
(maschera di uscita) dove ogni suo bit corrisponde ad un centroide: il bit viene posto a 1 se il
centroide è il più vicino al punto fornito, 0 negli altri casi. Nel caso il punto considerato risulti
equidistante da 2 (o più) centroidi, i bit della maschera d’uscita relativi a tali centroidi
saranno tutti impostati ad 1.
Degli N centroidi K<=N sono quelli su cui calcolare la distanza dal punto dato. I K centroidi
sono indicati da una maschera di ingresso a N bit: il bit a 1 indica che il centroide è valido
(punto dal quale calcolare la distanza) mentre il bit a 0 indica che il centroide non deve
essere esaminato. Si noti che la maschera di uscita è sempre a N bit e che i bit a 1 saranno
non più di K.

## Regole per lo svolgimento

Compito dello studente è quello di descrivere in VHDL e sintetizzare il componente HW che
implementa la specifica richiesta, interfacciandosi con una memoria dove sono memorizzati i
dati e dove andrà scritto il risultato finale. Allo studente verrà fornito un Test Bench ​ di
esempio (che include la memoria) per validare il corretto funzionamento del modulo
implementato.
