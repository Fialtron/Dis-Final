domains
	dios = symbol

predicates 
	padre(dios,dios).
	madre(dios,dios).
	abuelo(dios,dios).
	abuela(dios,dios).
	hermano_a(dios,dios).
	desendiente(dios,dios).

clauses
	padre(caos,caos).
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
	
	
	padre(urano,cronos).
	padre(urano,rea).
	padre(cronos,zeus).
	padre(cronos,hera).
	padre(cronos,demeter).
	padre(cronos,hestia).
	padre(cronos,poseidon).
	padre(cronos,hades).
	padre(zeus,hefestos).
	padre(zeus,ares).
	padre(zeus,hebe).
	padre(zeus,hermes).
	padre(zeus,lutia).
	padre(zeus,artemisa).
	padre(zeus,apolo).
	padre(zeus,afrodita).
	padre(zeus,artemisa).
	padre(zeus,heracle).
	
	madre(caos,caos).
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
	
	madre(gea,cronos).
	madre(gea,rea).
	madre(rea,hestia).
	madre(rea,demeter).
	madre(rea,hera).
	madre(rea,zeus).
	madre(rea,poseidon).
	madre(rea,hades).
	madre(hera,hefesto).
	madre(hera,ares).
	madre(hera,dionisio).
	madre(hera,hermes).
	madre(hera,atenea).
	madre(hera,artemisa).
	madre(hera,apolo).
	madre(hera,afrodita).
	abuelo(Dios1,Dios2) :- padre(Dios1,Dios3) and padre(Dios3,Dios2) .
	abuela(Dios1,Dios2) :- madre(Dios1,Dios3) and madre(Dios3,Dios2).
	hermano_a(Dios1,Dios2) :-  padre(Dios3,Dios1) and padre(Dios3,Dios2) and Dios1 <> Dios2.
	hermano_a(Dios1,Dios2) :-  madre(Dios3,Dios1) and madre(Dios3,Dios2) and Dios1 <> Dios2.
	desendiente(Dios1,Dios2) :- padre(Dios2,Dios1).
	desendiente(Dios1,Dios2) :- padre(Dios3,Dios1) and desendiente(Dios3,Dios2).

	
	
	
	
	