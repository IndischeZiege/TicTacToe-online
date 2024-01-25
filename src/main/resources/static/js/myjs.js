const Zuganzeige_Klasse = "spielanzeige";
const Spielfeld_Klasse = "grid";
const Felder_Klasse = "felder";
const SpielerX_Klasse = "sx";
const SpielerO_Klasse = "so";
const Endsrceen_Klasse = "endsrceen";
const Restart_Klasse = "restart";
const Visable_Klasse = "visable";
const Endsrceen_Text_Klasse = "endsrceen-text";

const spielfeld = document.querySelector("." + Spielfeld_Klasse);
const spielanzeige = document.querySelector("." + Zuganzeige_Klasse);
const endsrceen = document.querySelector("." + Endsrceen_Klasse);
const restart = document.querySelector("." + Restart_Klasse);
const endsrceenText = document.querySelector("." + Endsrceen_Text_Klasse);

const felder = document.querySelectorAll("." + Felder_Klasse);

const win_Conditions = [
	[felder[0],felder[3],felder[6]],
	[felder[1],felder[4],felder[7]],
	[felder[2],felder[5],felder[8]],
	[felder[0],felder[1],felder[2]],
	[felder[3],felder[4],felder[5]],
	[felder[6],felder[7],felder[8]],
	[felder[0],felder[4],felder[8]],
	[felder[2],felder[4],felder[6]],
];

let aktuelleKlasse;

restart.addEventListener("click",start);

start();

function onclick(ereignis){
	const feld = ereignis.target;
	
	if(eintragen(feld) === true){
		zugEnde();
	}
	
}

function eintragen(feld){
	if(feld.classList.contains(SpielerX_Klasse) || feld.classList.contains(SpielerO_Klasse)){
		return false;
	}
	feld.classList.add(aktuelleKlasse);
	feld.disabled = true;
	return true;
}

function start(){
	endsrceen.classList.remove(Visable_Klasse);
	for(const feld of felder){
		feld.classList.remove(SpielerX_Klasse, SpielerO_Klasse);
		feld.disabled = false;
		feld.addEventListener("click", onclick);
		}
	zugEnde();
}
	
function zugEnde(){
	if(determineWinner() === true){
		gameOver(false);
		return;
	}
	if(tie() === true){
		gameOver(true);
		return;
	}
	
	if(aktuelleKlasse === SpielerO_Klasse){
		aktuelleKlasse = SpielerX_Klasse;
	}else if (aktuelleKlasse === SpielerX_Klasse){
		aktuelleKlasse = SpielerO_Klasse; 
	}else{
		aktuelleKlasse = SpielerO_Klasse;
	}
	zuganzeige();
}

function zuganzeige(){
	if(aktuelleKlasse === SpielerO_Klasse){
		spielanzeige.innerText = "Spieler O ist am Zug";
	}else{
		spielanzeige.innerText = "Spieler X ist am Zug";
	}
}

function determineWinner(){
	for(const kombination of win_Conditions){
		const win = kombination.every(function(feld){
			return feld.classList.contains(aktuelleKlasse);
		});
		
		if(win === true){
			return true;
		}
	}
	return false;
}

function gameOver(GameTie){
	if(GameTie === true){
		endsrceenText.innerText = "Unentschieden!";
	}else if(aktuelleKlasse === SpielerO_Klasse){
		endsrceenText.innerText = "Spieler O hat gewonnen";
	}else{
		endsrceenText.innerText = "Spieler X hat gewonnen";
	}
	
	endsrceen.classList.add(Visable_Klasse);
}

function tie(){
	for(const feld of felder){
		if(
			!feld.classList.contains(SpielerO_Klasse) && !feld.classList.contains(SpielerX_Klasse)
		){
			return false;
		}
	}
	return true;
}


