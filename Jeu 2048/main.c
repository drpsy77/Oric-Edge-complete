//
// Jeu 2048
//
// 

#include <lib.h>

char *utoa(unsigned int n);

char buf[8];
char minuscules[208];
char buf2[32];

// Declare the assembly code function and global variables

extern unsigned int SC;
extern unsigned short CL;
extern unsigned short MV;
extern unsigned short TOPGAGNE;
extern unsigned short CA[];
extern unsigned char CHARAC[];
extern unsigned char PUISINIT;
extern unsigned int PUISRES;

unsigned int SM=0;
char errmsg[39];
unsigned int timer = 1000;
unsigned int tcount;
short DR,HA,BA,GA;


void REFRESH();
void DEFCH();
void AFFSCR();
void TRGAU();
void TRHAU();
void TRBAS();
void TRDRO();
void PUISS();
void AdvancedPrint(char x_pos,char y_pos,const char *ptr_message);

// Fonctions C

void APlot(short x, short y, char c);

int Cpuiss(unsigned short gdf){
	PUISINIT = gdf;
	PUISS();
	return PUISRES;
}

void init_affichage() {
	short i;

	cls();
	AdvancedPrint( 2,0+1,"nac bac l l bac");
	AdvancedPrint( 2,1+1,"  f f f f f f f");
	AdvancedPrint( 2,2+1,"bae f f dai gai");
	AdvancedPrint( 2,3+1,"f   f f   f f f");
	AdvancedPrint( 2,4+1,"dao dae   m dae");
	for(i=0;i<5;i++){
		APlot( 1, i+1,17);
		APlot( 26,i+1,17);
		APlot( 38,i+1,17);
		APlot( 19, i+1,4);
	}
	for(i=1;i<4;i++){
		APlot( 18,i+1,19);
		APlot( 30,i+1,19);
	}
	AFFSCR();

}


void init_game(){
	short i;
	
	for(i=0;i<16;i++) CA[i] = 0;
	CL=16;
	SC=0;
	MV=0;
	TOPGAGNE=0;
}

void log_err(char *msg){
	char lm;
	
	APlot( 0,23+1,22);
	APlot( 0,24+1,22);
	APlot( 0,25+1,22);
	APlot( 1,23+1,4);
	APlot( 1,24+1,4);
	APlot( 1,25+11,4);
	AdvancedPrint( 2,24+1,msg );
	lm=get();		
	APlot( 0,23+1,16);
	APlot( 0,24+1,16);
	APlot( 0,25+1,16);
	APlot( 1,23+1,7);
	APlot( 1,24+1,7);
	APlot( 1,25+11,7);
	AdvancedPrint( 2,23+1,"                                      " );
	AdvancedPrint( 2,24+1,"                                      " );
	AdvancedPrint( 2,25+1,"                                      " );
}

// On va simplement parcourir le tableau CA et vérifier s'il existe des 
// nombres contigus égaux. Si Non, c'est la fin.
unsigned short verify_fin(){
  unsigned short i;
  unsigned short j;
  unsigned short flag;
  
  flag=1;
  for(j=0;j<15;j+=4)
    for(i=j;i<j+3;i++)
      if( CA[i]==CA[i+1] ) flag=0;
  for(j=0;j<12;j+=4)
    for(i=j;i<j+4;i++)
      if( CA[i]==CA[i+4] ) flag=0;
  if(flag==1){
    DR=1;HA=1;GA=1;BA=1;
  }
  return flag;
}

void aff_aide(){
	char lm;
		
	APlot( 0,23+1,22);
	APlot( 0,24+1,22);
	APlot( 0,25+1,22);
	APlot( 1,23+1,4);
	APlot( 1,24+1,4);
	APlot( 1,25+1,4);
	AdvancedPrint( 2,23+1,"LE BUT DU JEU EST D'ATTEINDRE 2048 EN " );
	AdvancedPrint( 2,24+1," ADDITIONNANT LES NOMBRES IDENTIQUES  " );
	AdvancedPrint( 2,25+1,"   SUR LES LIGNES OU LES COLONNES     " );
	lm=get();
	AdvancedPrint( 2,23+1,"                                      " );
	AdvancedPrint( 2,24+1,"                                      " );
	AdvancedPrint( 2,25+1,"                                      " );
	AdvancedPrint( 2,23+1,"    L'APPUI SUR UNE FLECHE DEPLACE    " );
	AdvancedPrint( 2,24+1,"TOUS LES NOMBRES DANS CETTE DIRECTION." );
	AdvancedPrint( 2,25+1,"LE SCORE CROIT DE LA VALEUR DU CALCUL " );
	lm=get();
	AdvancedPrint( 2,23+1,"                                      " );
	AdvancedPrint( 2,24+1,"                                      " );
	AdvancedPrint( 2,25+1,"                                      " );
	AdvancedPrint( 2,23+1,"A LA PLACE D'UNE FLECHE, ON PEUT TAPER" );
	AdvancedPrint( 2,24+1,"E/S/W/D = GAUCHE,  O/P/L/;/[ = DROITE " );
	AdvancedPrint( 2,25+1,"V/B/N/M/' ' = BAS, T/Y/U/5/6/7 = HAUT " );
	lm=get();
	APlot( 0,23+1,16);
	APlot( 0,24+1,16);
	APlot( 0,25+1,16);
	APlot( 1,23+1,7);
	APlot( 1,24+1,7);
	APlot( 1,25+1,7);
	AdvancedPrint( 2,23+1,"                                      " );
	AdvancedPrint( 2,24+1,"                                      " );
	AdvancedPrint( 2,25+1,"                                      " );
}

void aff_fin(){
	char lm;
	short i;
	
	APlot( 0,23+1,22);
	APlot( 0,24+1,22);
	APlot( 0,25+1,22);
	APlot( 1,23+1,4);
	APlot( 1,24+1,4);
	APlot( 1,25+1,4);
	AdvancedPrint( 2,23+1,"   VOUS NE POUVEZ PLUS EFFECTUER DE   ");
	AdvancedPrint( 2,24+1,"   MOUVEMENT.  VOUS POUVEZ IMPRIMER   " );
	AdvancedPrint( 2,25+1,"       VOTRE GRILLE : TAPEZ 'I'       " );
	for(tcount=0;tcount<4000;tcount++);
	lm=get();
	if(lm=='I'){
		lprintf("  PARTIE 2048 -- SCORE FINAL : %d\n",SC);
		for(i=0;i<16;i+=4){
			lprintf("---------------------\n");
			lprintf("| %d | %d | %d | %d |\n",Cpuiss(CA[i]),Cpuiss(CA[i+1]),Cpuiss(CA[i+2]),Cpuiss(CA[i+3]));
		}
		lprintf("---------------------\n");
		AdvancedPrint( 2,23+1,"                                      " );
		AdvancedPrint( 2,24+1,"         PRESSEZ UNE TOUCHE           " );
		AdvancedPrint( 2,25+1,"                                      " );
		lm=get();
		AdvancedPrint( 2,25+1,"                OK !                  " );
		for(tcount=0;tcount<10000;tcount++);
	}
	APlot( 0,23+1,16);
	APlot( 0,24+1,16);
	APlot( 0,25+1,16);
	APlot( 1,23+1,7);
	APlot( 1,24+1,7);
	APlot( 1,25+1,7);
	AdvancedPrint( 2,23+1,"                                      " );
	AdvancedPrint( 2,24+1,"                                      " );
	AdvancedPrint( 2,25+1,"                                      " );

}

void sauvegarde(){
	//print("SORTIE SUR IMPRIMANTE");

}

void tire_2_4(){
	int VA;
	int VL;
	short VI;
	short VQ;
	short VR;
	short i;
	
	if((rand1248()*10/16)<=8) {VA=1;} else {VA=2;}
	VL=rand1248()*CL/16;
	
	for( i=0 ; i <= 15 ; i++ ){
		if( CA[i] == 0 ) {
			VL--;
			if(VL<0) {
				VI=i;
				i=16;
				poke(CA+VI,VA);
			}
		}
	}
	if( VL >= 0 ) { 
		cls(); 
		printf("ERREUR : lE TABLEAU CA EST PLEIN");
		exit(1);
	}

	REFRESH(); 
	VQ = VI / 4 ;
	VR = VI - VQ * 4 ;
	APlot( (char)VR*6+15, (char)VQ*4+7+1,7);
	APlot( (char)VR*6+15, (char)VQ*4+8+1,7);
	APlot( (char)VR*6+11, (char)VQ*4+7+1,1);
	APlot( (char)VR*6+11, (char)VQ*4+8+1,1);
	
	for(tcount=0;tcount<1000;tcount++);
	CL--;
}
 
void joue(){
	char query;
	char *strscore;
	
	init_affichage();
	init_game();
	
	REFRESH();
	tire_2_4();

	AdvancedPrint( 2,24+1,"  APPUYER SUR UNE FLECHE POUR JOUER  ");
	strscore=utoa(SM);
	AdvancedPrint(32,3,strscore);
	DR=0;HA=0;BA=0;GA=0;
	
//---- BOUCLE PRINCIPALE
	do {
		AdvancedPrint( 2,25+1,"<ESC> POUR QUITTER  '?' EXPLICATIONS ");
		AdvancedPrint( 2,24+1,"  APPUYER SUR UNE FLECHE POUR JOUER  " );
		if( SC>SM ) {
			SM=SC;
			strscore=utoa(SM);
			AdvancedPrint(32,3,strscore);
		}
		query=get();
		MV=0;
		if( query==8 || query =='E'|| query =='S'|| query =='W'|| query =='D'|| query =='Q' ){TRGAU();GA=1;}
		if( query==11 || query =='T'|| query =='Y'|| query =='U'|| query =='5' || query =='6'|| query =='7'){TRHAU();HA=1;}
		if( query==10 || query =='V'|| query =='B'|| query =='N'|| query =='M'|| query ==' '){TRBAS();BA=1;}
		if( query==9  || query =='[' || query =='O'|| query =='P'|| query =='L'|| query ==';'){TRDRO();DR=1;}
		if( query=='?'){aff_aide();}
		if( query==27 ) {
			AdvancedPrint(2,24+1,"             QUITTER ?             ");
			AdvancedPrint(2,25+1,"        (O POUR CONFIRMER)         ");
			query=get();
			if( query == 'O' ) break;
		}
		if( query=='H' && timer <10000 ) timer +=1000;
		if( query=='B' && timer > 1000 ) timer -=1000;
		REFRESH();
		AdvancedPrint( 2,25+1,"<ESC> POUR QUITTER  '?' EXPLICATIONS ");
		AdvancedPrint( 2,24+1,"  APPUYER SUR UNE FLECHE POUR JOUER  " );
		strscore=utoa(SC);
		AdvancedPrint(20,3,strscore);
		if( MV > 0 ){
			DR=0;
			GA=0;
			HA=0;
			BA=0;
			for(tcount=0;tcount<timer;tcount++);
			tire_2_4();
		} 
		if( CL == 0 ){
			if(verify_fin()) {
				REFRESH();
				for(tcount=0;tcount<timer;tcount++);
				if( SC>SM ) {
					SM=SC;
					strscore=utoa(SM);
					AdvancedPrint(32,3,strscore);
				}
				aff_fin();
			}
		}
	} while( GA+DR+HA+BA!=4 );
}


void main()
{
	char rp;
	rp='O';
	
		
	text();
	paper(0);
	ink(7);
	
	poke(0x26A,10);
	// on sauvegarde les minuscules
	memcpy(minuscules,(unsigned char*)0xB708,208);
	DEFCH();
	
	do{
		TOPGAGNE=0;
		joue();
		cls();
		do {
			AdvancedPrint(2,3, "VOULEZ VOUS RECOMMENCER (O) ?");
			rp=get();
		} while (rp != 'O' && rp != 'N');
	} while( rp=='O' );
	poke(0x26A,3);
	//on restaure les minuscules
	memcpy((unsigned char*)0xB708,minuscules,208);
	cls();

}
