ClassKey <- class{
	name = null;
	defaultCommand = null;
	lineInAutoExec = null;
	
	constructor(keyname,valveCommand)
	{
		name = keyname;
		defaultCommand = valveCommand;
		setLineInAutoExec(defaultCommand);
	}
	function changeColorWhite()
	{
		printl("*****************");
		printl(" ");
		printl(name+" "+"is white.");
		printl(" ");
		printl("*****************");
	}
	function changeColorBlue()
	{
		printl("*****************");
		printl(" ");
		printl(name+" "+"is blue.");
		printl(" ");
		printl("*****************");
	}
	function changeColorRedOrange()
	{
		printl("*****************");
		printl(" ");
		printl((caller.GetName())+" "+"is red/orange.");
		printl(" ");
		printl("*****************");
	}
	function getName()
	{
		return name;
	}
	function getDefaultCommand()
	{
		return defaultCommand;
	}
	function getLineInAutoExec()
	{
		return lineInAutoExec;
	}
	function setLineInAutoExec(selectedCommand)
	{
		lineInAutoExec = "bind"+" "+name+" "+@""""+selectedCommand+@"""";
	}
}

function selectKey()
{
	selectedKey = caller.GetName();
	selectedKey = (tableOfKeys.rawget(selectedKey));
	selectedKey.changeColorWhite();
}
function clearSelectedKey()
{
	selectedKey = "NOKEY";
}
function selectCommand()
{
	selectedCommand = caller.GetName();
	
	try{selectedKey.setLineInAutoExec(selectedCommand);
	}catch(Exception)
		{
			ScriptPrintMessageCenterAll("Select a key to bind a command.");
			return;
		}
	selectedKey.changeColorBlue();
}
function printTable()
{
	foreach(key, value in tableOfKeys)
	{
		printl(key + ": " + (value.getLineInAutoExec()));
	}
}

ESCAPE <- ClassKey("ESCAPE","cancelselect");
F1 <- ClassKey("F1","vote option1");
F2 <- ClassKey("F2","vote option2");
F3 <- ClassKey("F3","autobuy");
F4 <- ClassKey("F4","rebuy");
F5 <- ClassKey("F5","jpeg");
F6 <- ClassKey("F6","save quick");
F7 <- ClassKey("F7","load quick");
F8 <- ClassKey("F8","quit prompt");
F9 <- ClassKey("F9","echo NOT BOUND");
F10 <- ClassKey("F10","echo NOT BOUND");
F11<- ClassKey("F11","echo NOT BOUND");
F12 <- ClassKey("F12","echo NOT BOUND");
TILDE <- ClassKey("`","toggleconsole");
ONE <- ClassKey("1","slot1");
TWO <- ClassKey("2","slot2");
THREE <- ClassKey("3","slot3");
FOUR <- ClassKey("4","slot4");
FIVE <- ClassKey("5","slot5");
SIX <- ClassKey("6","slot6");
SEVEN <- ClassKey("7","slot7");
EIGHT <- ClassKey("8","slot8");
NINE <- ClassKey("9","slot9");
ZERO <- ClassKey("0","slot10");
MINUS <- ClassKey("-","echo NOT BOUND");
EQUALS <- ClassKey("=","echo NOT BOUND");
BACKSPACE <- ClassKey("BACKSPACE","echo NOT BOUND");
TAB <- ClassKey("TAB","+showscores");
Q <- ClassKey("Q","lastinv");
W <- ClassKey("W","+forward");
E <- ClassKey("E","+use");
R <- ClassKey("R","+reload");
T <- ClassKey("T","+spray_menu")
Y <- ClassKey("Y","messagemode");
U <- ClassKey("U","messagemode2");
I <- ClassKey("I","show_loadout_toggle");
O <- ClassKey("O","echo NOT BOUND");
P <- ClassKey("P","echo NOT BOUND");
RIGHTBRACKET <- ClassKey("[","echo NOT BOUND");
LEFTBRACKET <- ClassKey("]","echo NOT BOUND");
BACKSLASH <- ClassKey("\\","echo NOT BOUND");
CAPSLOCK <- ClassKey("CAPSLOCK","echo NOT BOUND");
A <- ClassKey("A","+moveleft");
S <- ClassKey("S","+back");
D <- ClassKey("D","+moveright");
F <- ClassKey("F","+lookatweapon");
G <- ClassKey("G","drop");
H <- ClassKey("H","echo NOT BOUND");
J <- ClassKey("J","echo NOT BOUND");
K <- ClassKey("K","+voicerecord");
L <- ClassKey("L","echo NOT BOUND");
SEMICOLON <- ClassKey("SEMICOLON","echo NOT BOUND");
QUOTE <- ClassKey("'","echo NOT BOUND");
ENTER <- ClassKey("ENTER","echo NOT BOUND");
SHIFT <- ClassKey("SHIFT","+speed");
Z <- ClassKey("Z","radio1");
X <- ClassKey("X","radio2");
C <- ClassKey("C","radio3");
V <- ClassKey("V","echo NOT BOUND");
B <- ClassKey("B","buymenu");
N <- ClassKey("N","echo NOT BOUND");
M <- ClassKey("M","teammenu");
COMMA <- ClassKey(",","buyammo1");
PERIOD <- ClassKey(".","buyammo2");
FORWARDSLASH <- ClassKey("/","echo NOT BOUND");
RSHIFT <- ClassKey("RSHIFT","echo NOT BOUND");
CTRL <- ClassKey("CTRL","+duck");
WINDOWS <- ClassKey("WINDOWS","echo NOT BOUND");
ALT <- ClassKey("ALT","echo NOT BOUND");
SPACE <- ClassKey("SPACE","+jump");
RALT <- ClassKey("RALT","echo NOT BOUND");
FN <- ClassKey("FN","echo NOT BOUND");
MENU <- ClassKey("MENU","echo NOT BOUND");
RCTRL <- ClassKey("RCTRL","echo NOT BOUND");
PRINTSCREEN <- ClassKey("PRINTSCREEN","echo NOT BOUND");
SCROLLLOCK <- ClassKey("SCROLLLOCK","echo NOT BOUND");
PAUSEBREAK <- ClassKey("PAUSEBREAK","echo NOT BOUND");
INS <- ClassKey("INS","echo NOT BOUND");
HOME <- ClassKey("HOME","echo NOT BOUND");
PGUP <- ClassKey("PGUP","echo NOT BOUND");
DEL <- ClassKey("DEL","echo NOT BOUND");
END <- ClassKey("END","echo NOT BOUND");
PGDN <- ClassKey("PGDN","echo NOT BOUND");
UPARROW <- ClassKey("UPARROW","echo NOT BOUND");
LEFTARROW <- ClassKey("LEFTARROW","echo NOT BOUND");
DOWNARROW <- ClassKey("DOWNARROW","echo NOT BOUND");
RIGHTARROW <- ClassKey("RIGHTARROW","echo NOT BOUND");
NUMLOCK <- ClassKey("NUMLOCK","echo NOT BOUND");
KP_SLASH <- ClassKey("KP_SLASH","echo NOT BOUND");
KP_MULTIPLY <- ClassKey("KP_MULTIPLY","echo NOT BOUND");
KP_MINUS <- ClassKey("KP_MINUS","echo NOT BOUND");
KP_PLUS <- ClassKey("KP_PLUS","echo NOT BOUND");
KP_HOME <- ClassKey("KP_HOME","echo NOT BOUND");
KP_UPARROW <- ClassKey("KP_UPARROW","echo NOT BOUND");
KP_PGUP <- ClassKey("KP_PGUP","echo NOT BOUND");
KP_LEFTARROW <- ClassKey("KP_LEFTARROW","echo NOT BOUND");
KP_5 <- ClassKey("KP_5","echo NOT BOUND");
KP_RIGHTARROW <- ClassKey("KP_RIGHTARROW","echo NOT BOUND");
KP_END <- ClassKey("KP_END","echo NOT BOUND");
KP_DOWNARROW <- ClassKey("KP_DOWNARROW","echo NOT BOUND");
KP_PGDN <- ClassKey("KP_PGDN","echo NOT BOUND");
KP_INS <- ClassKey("KP_INS","echo NOT BOUND");
KP_DEL <- ClassKey("KP_DEL","echo NOT BOUND");
KP_ENTER <- ClassKey("KP_ENTER","echo NOT BOUND");

tableOfKeys <-
{
	ESCAPE = ESCAPE,
	F1 = F1,
	F2 = F2,
	F3 = F3,
	F4 = F4,
	F5 = F5,
	F6 = F6,
	F7 = F7,
	F8 = F8,
	F9 = F9,
	F10 = F10,
	F11 = F11,
	F12 = F12,
	TILDE = TILDE,
	ONE = ONE,
	TWO = TWO,
	THREE = THREE,
	FOUR = FOUR,
	FIVE = FIVE,
	SIX = SIX,
	SEVEN = SEVEN,
	EIGHT = EIGHT,
	NINE = NINE,
	ZERO = ZERO,
	MINUS = MINUS,
	EQUALS = EQUALS,
	BACKSPACE = BACKSPACE,
	TAB = TAB,
	Q = Q,
	W = W,
	E = E,
	R = R,
	Y = Y,
	T = T,
	U = U,
	I = I,
	O = O,
	P = P,
	RIGHTBRACKET = RIGHTBRACKET,
	LEFTBRACKET = LEFTBRACKET,
	BACKSLASH = BACKSLASH,
	CAPSLOCK = CAPSLOCK,
	A = A,
	S = S,
	D = D,
	F = F,
	G = G,
	H = H,
	J = J,
	K = K,
	L = L,
	SEMICOLON = SEMICOLON,
	QUOTE = QUOTE,
	ENTER = ENTER,
	SHIFT = SHIFT,
	Z = Z,
	X = X,
	C = C,
	V = V,
	B = B,
	N = N,
	M = M,
	COMMA = COMMA,
	PERIOD = PERIOD,
	FORWARDSLASH = FORWARDSLASH,
	RSHIFT = RSHIFT,
	CTRL = CTRL,
	WINDOWS = WINDOWS,
	ALT = ALT,
	SPACE = SPACE,
	RALT = RALT,
	FN = FN,
	MENU = MENU
	RCTRL = RCTRL,
	PRINTSCREEN = PRINTSCREEN,
	SCROLLLOCK = SCROLLLOCK,
	PAUSEBREAK = PAUSEBREAK,
	INS = INS,
	HOME = HOME,
	PGUP = PGUP,
	DEL = DEL,
	END = END,
	PGDN = PGDN,
	UPARROW = UPARROW,
	LEFTARROW = LEFTARROW,
	DOWNARROW = DOWNARROW,
	RIGHTARROW = RIGHTARROW,
	NUMLOCK = NUMLOCK,
	KP_SLASH = KP_SLASH,
	KP_MULTIPLY = KP_MULTIPLY,
	KP_MINUS = KP_MINUS,
	KP_PLUS = KP_PLUS,
	KP_HOME = KP_HOME,
	KP_UPARROW = KP_UPARROW,
	KP_PGUP = KP_PGUP,
	KP_LEFTARROW = KP_LEFTARROW,
	KP_5 = KP_5,
	KP_RIGHTARROW = KP_RIGHTARROW,
	KP_END = KP_END,
	KP_DOWNARROW = KP_DOWNARROW,
	KP_PGDN = KP_PGDN,
	KP_INS = KP_INS,
	KP_DEL = KP_DEL,
	KP_ENTER = KP_ENTER
}

selectedKey <- null;
selectedCommand <- null;

