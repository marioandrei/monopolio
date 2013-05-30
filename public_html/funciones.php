<!-- <?php
 
 /*
  * mezclar las tarjetas en cada partida! (para asi obtener el orden) */
 
 /* First, we have the suits */
 
 $suits = array (
     "Suerte", "Comunidad"
 );
 
 /* Next, we declare the faces*/
 
 $faces = array (
     "Tarjeta 1", "Tarjeta 2", "Four", "Five", "Six", "Seven", "Eight",
     "Nine", "Ten", "Jack", "Queen", "King", "Ace"
 );
 
 /* Now build the deck by combining the faces and suits. */
 
 $deck = array();
 
 foreach ($suits as $suit) {
     foreach ($faces as $face) {
         $deck[] = array('face'=>$face,'suit'=>$suit);
     }
 }
 
 /* Next, you can shuffle up the deck and pull a random card. */
 
 shuffle($deck);
 
 $card = array_shift($deck);
 
 echo $card['face'] . ' of ' . $card['suit'] . "\n";
 

<?php
/* MOVER ESTO A UN PHP APARTE

*/
if($_POST['submit_dice']){ //if they have pressed the submit button
$player1roll1 = rand(1,6);
$player1roll2 = rand(1,6);

$player1sum = $player1roll1 + $player1roll2;

echo $player1sum;
echo '<img src="./img/'.$player1roll1.'.png" />'; //echo the image for roll 1 of player 1
echo '<img src="./img/'.$player1roll2.'.png" />'; //echo the image for roll 2 of player 1


}else{
?>
<form method="POST">
<input type="submit" name="submit_dice" value="Roll dice" />
</form>
<?php } ?> ?>-->