REQUEST HB_CODEPAGE_UTF8

function main ()

	local nValor
	local cInput

	hb_cdpSelect("UTF8")

	QOut("Números negativos ou zero encerram o programa")
	while .T.
		nValor := 0
		accept "Digite um número: " to cInput
		nValor := val(cInput)
		if nValor <= 0
			QOut("Saindo do programa!")
			exit
		endif
		nValor := nValor * 2
		QOut("O dobro do valor é: " +alltrim(str(nValor)))
	enddo
return NIL