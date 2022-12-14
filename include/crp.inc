
/*
	?????: Fro ?? ?? Fro1sha	
	????????: ??????? ????? ? CR:MP
	?????:  Copyright ? 2009-2016 TBG

	http://tb-games.ru/	
*/

#if defined _crp_included
	#endinput
#endif
#define _crp_included
#pragma library crp

stock ConvertRusToPwn(text[])
{
	for(new i = 0; i != strlen(text); ++i)
	{
		switch(text[i])
		{
			case '?': text[i] = 'a';
			case '?': text[i] = 'A';
			case '?': text[i] = '?';
		    case '?': text[i] = '?';
			case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'e';
		    case '?': text[i] = 'E';
		    case '?': text[i] = 'e';
		    case '?': text[i] = 'E';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'k';
		    case '?': text[i] = 'K';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'M';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'H';
		    case '?': text[i] = 'o';
		    case '?': text[i] = 'O';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'p';
		    case '?': text[i] = 'P';
		    case '?': text[i] = 'c';
		    case '?': text[i] = 'C';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'y';
		    case '?': text[i] = 'Y';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = 'x';
		    case '?': text[i] = 'X';
		    case '?': text[i] = '?'; // 160
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
		    case '?': text[i] = '?';
			case '*': text[i] = ']';
		}
	}
	
	return 1;
}

stock CRP_GameTextForAll(string[], time, style) 
{
	ConvertRusToPwn(string);
	
	return GameTextForAll(string, time, style);
}

stock CRP_GameTextForPlayer(playerid, string[], time, style) 
{
	ConvertRusToPwn(string);
	
	return GameTextForPlayer(playerid, string, time, style);
}

stock Menu:CRP_CreateMenu(title[], columns, Float:x, Float:y, Float:col1width, Float:col2width = 0.0) 
{
	ConvertRusToPwn(title);
	
	return CreateMenu(title, columns, x, y, col1width, col2width);
}

stock CRP_AddMenuItem(Menu:menuid, column, menutext[]) 
{
	ConvertRusToPwn(menutext);

	return AddMenuItem(menuid, column, menutext);
}

stock CRP_SetMenuColumnHeader(Menu:menuid, column, columnheader[]) 
{
	ConvertRusToPwn(columnheader);
	
	return SetMenuColumnHeader(menuid, column, columnheader);
}

stock Text:CRP_TextDrawCreate(Float:x, Float:y, text[]) 
{
	ConvertRusToPwn(text);
	
	return TextDrawCreate(x, y, text);
}

stock CRP_TextDrawSetString(Text:text, string[]) 
{
	ConvertRusToPwn(string);
	
	return TextDrawSetString(text, string);
}

stock PlayerText:CRP_CreatePlayerTextDraw(playerid, Float:x, Float:y, text[]) 
{
	ConvertRusToPwn(text);
	
	return CreatePlayerTextDraw(playerid, x, y, text);
}

stock CRP_PlayerTextDrawSetString(playerid, PlayerText:text, string[]) 
{
	ConvertRusToPwn(string);
	
	return PlayerTextDrawSetString(playerid, text, string);
}

#if defined _ALS_GameTextForAll
    #undef GameTextForAll
#else
    #define _ALS_GameTextForAll
#endif
#define GameTextForAll CRP_GameTextForAll

#if defined _ALS_GameTextForPlayer
    #undef GameTextForPlayer
#else
    #define _ALS_GameTextForPlayer
#endif
#define GameTextForPlayer CRP_GameTextForPlayer
/*
#if defined _ALS_CreateMenu
    #undef CreateMenu
#else
    #define _ALS_CreateMenu
#endif
#define CreateMenu CRP_CreateMenu

#if defined _ALS_AddMenuItem
    #undef AddMenuItem
#else
    #define _ALS_AddMenuItem
#endif
#define AddMenuItem CRP_AddMenuItem

#if defined _ALS_SetMenuColumnHeader
    #undef SetMenuColumnHeader
#else
    #define _ALS_SetMenuColumnHeader
#endif
#define SetMenuColumnHeader CRP_SetMenuColumnHeader
*/
#if defined _ALS_TextDrawCreate
    #undef TextDrawCreate
#else
    #define _ALS_TextDrawCreate
#endif
#define TextDrawCreate CRP_TextDrawCreate

#if defined _ALS_TextDrawSetString
    #undef TextDrawSetString
#else
    #define _ALS_TextDrawSetString
#endif
#define TextDrawSetString CRP_TextDrawSetString

#if defined _ALS_CreatePlayerTextDraw
    #undef CreatePlayerTextDraw
#else
    #define _ALS_CreatePlayerTextDraw
#endif
#define CreatePlayerTextDraw CRP_CreatePlayerTextDraw

#if defined _ALS_PlayerTextDrawSetString
    #undef PlayerTextDrawSetString
#else
    #define _ALS_PlayerTextDrawSetString
#endif
#define PlayerTextDrawSetString CRP_PlayerTextDrawSetString