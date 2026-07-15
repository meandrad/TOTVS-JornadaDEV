REQUEST HB_CODEPAGE_UTF8
FUNCTION main ()
	Local cValue, nValue
	Local nDiscount := 0
	Local nTotal := 0

	hb_cdpSelect("UTF8")

	accept "Digite o valor: " to cValue
	nValue := Val(cValue)

	if nValue > 100
		nDiscount := nValue * 0.10
	ENDIF
	nTotal = nValue - nDiscount
	QOut("O valor total é: R$", nTotal)
RETURN NIL