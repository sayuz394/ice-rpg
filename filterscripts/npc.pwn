#include <a_samp>

#define FILTERSCRIPT
public OnFilterScriptInnit(){
	ConnectNPC("Police","patrol");
	return 1;
}
public OnFilterScriptExit(){
	ConnectNPC("Police","patrol");
	return 1;
}
