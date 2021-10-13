domains
	dios,text = symbol

predicates
	start
	descripcion(dios,text).
	padre(dios,dios).
	madre(dios,dios).
	abuelo(dios,dios).
	abuela(dios,dios).
	hermano_a(dios,dios).
	desendiente(dios,dios).
	tio_a(dios,dios).
	primo_a(dios,dios).
	registro(dios,text)

database
	db_descripcion(dios,text).
	
clauses
	start:- consult(diosesdb).
	descripcion(Dios1,Text):- db_descripcion(Dios1,Text). 
	padre(caos,urano).
	padre(caos,gea).
	padre(caos,nix).
	padre(caos,erebo).
	padre(caos,eter).
	padre(caos,hermea).
	padre(urano,afrodita).
	padre(urano,las_meliades).
	padre(urano,los_gigantes).
	padre(urano,las_erinias).
	padre(urano,las_hecatonquiros).
	padre(urano,los_ciclopes).
	padre(urano,mnemosine).
	padre(urano,hiperion).
	padre(urano,tia).
	padre(urano,japeto).
	padre(urano,tetis).
	padre(urano,oceano).
	padre(urano,ceo).
	padre(urano,febe).
	padre(urano,cronos).
	padre(urano,rea).
	padre(urano,crios).
	padre(urano,temis).
	padre(zeus,las_musas).
	padre(hiperion,eos).
	padre(hiperion,selene).
	padre(hiperion,helio).
	padre(oceano,climene).
	padre(oceano,metis).
	padre(oceano,pleyone).
	padre(ceo,leto).
	padre(cronos,zeus).
	padre(cronos,hera).
	padre(cronos,demeter).
	padre(cronos,hestia).
	padre(cronos,poseidon).
	padre(cronos,hades).
	padre(zeus,hefesto).
	padre(zeus,ares).
	padre(zeus,hebe).
	padre(zeus,hermes).
	padre(zeus,ilitia).
	padre(zeus,dioniso).
	padre(zeus,apolo).
	padre(zeus,artemis).
	padre(zeus,persefone).
	padre(zeus,atenea).
	padre(japeto,atlante).
	padre(japeto,prometeo).
	padre(japeto,epimeteo).
	padre(hefesto,pandora).
	padre(prometeo,deucalion).
	padre(epimeteo,pirra).
	padre(atlante,las_pleyades).
	padre(atlante,las_hiades).
	padre(hermes,pan).
	padre(apolo,asclepio).
	madre(caos,nix).
	madre(caos,erebo).
	madre(caos,gea).
	madre(caos,urano).
	madre(caos,eter).
	madre(caos,hermea).
	madre(urano,afrodita).
	madre(gea,las_meliades).
	madre(gea,los_gigantes).
	madre(gea,las_erinias).
	madre(gea,las_hecatonquiros).
	madre(gea,los_ciclopes).
	madre(gea,mnemosine).
	madre(gea,hiperion).
	madre(gea,tia).
	madre(gea,japeto).
	madre(gea,tetis).
	madre(gea,oceano).
	madre(gea,ceo).
	madre(gea,febe).
	madre(gea,cronos).
	madre(gea,rea).
	madre(gea,crios).
	madre(gea,temis).
	madre(mnemosine,las_musas).
	madre(tia,eos).
	madre(tia,selene).
	madre(tia,helio).
	madre(tetis,climene).
	madre(tetis,metis).
	madre(tetis,pleyone).
	madre(febe,leto).
	madre(rea,hestia).
	madre(rea,demeter).
	madre(rea,hera).
	madre(rea,zeus).
	madre(rea,poseidon).
	madre(rea,hades).
	madre(hera,hefesto).
	madre(hera,hebe).
	madre(hera,ares).
	madre(las_pleyades,hermes).
	madre(hera,ilitia).
	madre(semele,dioniso).
	madre(leto,apolo).
	madre(leto,artemis).
	madre(demeter,persefone).
	madre(metis,atenea).
	madre(climene,atlante).
	madre(climene,prometeo).
	madre(climene,epimeteo).
	madre(hefesto,pandora).
	madre(pandora,pirra).
	madre(pleyone,las_pleyades).
	madre(pleyone,las_hiades).
	madre(coronide,asclepio).
	madre(afrodita,eros).
	
	

	abuelo(Dios1,Dios2) :- padre(Dios1,Dios3) and padre(Dios3,Dios2) .
	abuela(Dios1,Dios2) :- madre(Dios1,Dios3) and madre(Dios3,Dios2).
	hermano_a(Dios1,Dios2) :-  padre(Dios3,Dios1) and padre(Dios3,Dios2) and Dios1 <> Dios2 or
				   madre(Dios3,Dios1) and madre(Dios3,Dios2) and Dios1 <> Dios2.
	desendiente(Dios1,Dios2) :- padre(Dios2,Dios1).
	desendiente(Dios1,Dios2) :- padre(Dios3,Dios1) and desendiente(Dios3,Dios2).
	tio_a(Dios1,Dios2) :- padre(Dios3,Dios2) and hermano_a(Dios1,Dios3), Dios1 <> Dios2 or madre(Dios3,Dios2) and hermano_a(Dios1,Dios3), Dios1 <> Dios2, !. 
	primo_a(Dios1,Dios2) :- padre(Dios3,Dios2) and padre(Dios4,Dios1) and hermano_a(Dios3,Dios4) or
				madre(Dios3,Dios2) and madre(Dios4,Dios1) and hermano_a(Dios3,Dios4).	
	registro(Dios1,Text) :- asserta(db_descripcion(Dios1,Text)) and save(diosesdb).