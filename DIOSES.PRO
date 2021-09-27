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
	padre(urano,cronos).
	padre(urano,rea).
	padre(cronos,zeus).
	padre(cronos,hera).
	padre(cronos,demeter).
	padre(cronos,hestia).
	padre(cronos,poseidon).
	padre(cronos,hades).
	padre(zeus,hefesto).
	padre(zeus,ares).
	padre(zeus,dionisio).
	padre(zeus,hermes).
	padre(zeus,atenea).
	padre(zeus,artemisa).
	padre(zeus,apolo).
	padre(zeus,afrodita).
	madre(caos,caos).
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

	
	
	
	
	