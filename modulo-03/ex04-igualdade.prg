function main()

	local cString1
	local cString2
	local lCompare1
	local lCompare2

	hb_cdpSelect("UTF8")


	cString1 := "Harbour"
	cString2 := "Harb"

	lCompare1 := cString1 = cString2
	lCompare2 := cString1 == cString2

	QOut("Comparação entre strings")
	QOut("===============================")
	QOut("String 1: " +cString1)
	QOut("String 2: " +cString2)
	QOut("")
	QOut("Resultado com =  : " + iif(lCompare1, ".T.", ".F."))
	QOut("Resultado com == : " + iif(lCompare2, ".T.", ".F."))

return NIL