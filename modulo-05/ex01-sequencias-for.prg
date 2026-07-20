REQUEST HB_CODEPAGE_UTF8

function main ()

	local nIndex

	hb_cdpSelect("UTF8")

	QOut("=== Item A ===")
	for nIndex := 1 to 100
		QOut(alltrim(str(nIndex)))
	next

	QOut("=== Item B ===")
	for nIndex := -50 to 50
		QOut(alltrim(str(nIndex)))
	next

	QOut("=== Item C ===")
	for nIndex := 80 to 5 step -1
		QOut(alltrim(str(nIndex)))
	next

return NIL