REQUEST HB_CODEPAGE_UTF8
FUNCTION main()
	local cA, nA
	local cB, nB

	hb_cdpSelect("UTF8")

	accept "Digite o valor de A: " to cA
	accept "Digite o valor de B: " to cB

	nA := val(cA)
	nB := val(cB)

	QOut("O valor da soma é: " + AllTrim(str(nA + nB)))
	QOut("O valor da subtração é: " + AllTrim(str(nA - nB)))
	QOut("O valor da multiplicação é: " + AllTrim(str(nA * nB)))
	if nB <> 0
		QOut("O valor da divisão é: " + AllTrim(str(nA / nB)))
	else
		QOut("O valor de B não pode ser zero, digite outro número")
	endif

RETURN NIL