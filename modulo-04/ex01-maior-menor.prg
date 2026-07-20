REQUEST HB_CODEPAGE_UTF8
function main()

	local cEntrada
	local nA
	local nB

	hb_cdpSelect("UTF8")

	accept "Digite o primeiro número: " to cEntrada
	nA := val(cEntrada)
	accept "Digite o segundo número: " to cEntrada
	nB := val(cEntrada)
	
	if nA == nB
		QOut("Números iguais")
	else
		if nA > nB
			QOut("O maior número é: " +alltrim(str(nA)))
			QOut("O menor número é: " +alltrim(str(nB)))
		else
			QOut("O maior número é: " +alltrim(str(nB)))
			QOut("O menor número é: " +alltrim(str(nA)))
		endif
	endif

return NIL