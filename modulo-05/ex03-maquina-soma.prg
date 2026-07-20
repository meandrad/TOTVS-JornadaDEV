REQUEST HB_CODEPAGE_UTF8

function main()

	local cInput
	local nTotal
	local nQtd
	local nNumber

	nTotal := 0
	nQtd := 0
	hb_cdpselect("UTF8")

	QOut("")
	QOut("=== MÁQUINA DE SOMA ===")
	Qout("Os valores e as quantidades digitadas serão somadas até que seja digitado 0")
	QOut("")

	while .T.
		accept "Digite um número: " to cInput
		nNumber := val(cInput)
		if nNumber == 0
			QOut("Saindo do programa!")
			exit
		endif
		nQtd += 1
		nTotal += nNumber
	enddo

	QOut("")
	QOut("=== MÁQUINA DE SOMA ===")
	QOut("O resultado total é: " +alltrim(str(nTotal)))
	QOut("A quantidade de números digitada é: " +alltrim(str(nQtd)))

return NIL