REQUEST HB_CODEPAGE_UTF8

function get_time()

	local tTime

	tTime := hb_datetime()

return tTime

function format_time(tTime)

	local cTimeFormated

	cTimeFormated := hb_TToC(tTime)
	cTimeFormated := substr(cTimeFormated, 10, 8)

return ctimeFormated

procedure display_hour(cTimeFormated)
	QOut("=== Relógio modular ===")
	QOut("São " +alltrim(cTimeformated) + " horas")

function main()

	local tTime
	local cTime
	local nIndex

	hb_cdpselect("UTF8")

	for nIndex := 1 to 30
		CLS //limpa a tela
		tTime := get_time()
		cTime := format_time(tTime)
		display_hour(cTime)
		hb_idlesleep(1)
	next

return NIL