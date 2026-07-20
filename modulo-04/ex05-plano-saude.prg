REQUEST HB_CODEPAGE_UTF8
function main()

	local cInput
	local nIdade
	local nQtd
	local nSeguro
	local nTotal

	hb_cdpSelect("UTF8")

	QOut("=== SEGURADORA DEV ===")
	accept "Digite a sua idade: " to cInput

	nIdade := val(cInput)
	if nIdade < 0
		QOut("Idade inválida")
		return NIL
	endif

	accept "Deseja incluir dependentes? Informe SIM ou NAO: " to cInput
	cInput := upper(cInput)

	if cInput == "SIM"
		QOut("")
		QOut("Cada dependente possui um acréscimo de R$ 90,00 no valor mensal do plano")
		accept "Informe a quantidade de dependentes: " to cInput
		nQtd := val(cInput)
		if nQtd < 0
			QOut("Quantidade inválida")
			return NIL
		endif
	elseif cInput == "NAO"
		nQtd := 0
	else
		QOut("Opção inválida")
		return NIL
	endif

	do case
		case nIdade <= 25
			nSeguro := 180.00
		case nIdade >= 26 .AND. nIdade <= 40
			nSeguro := 260.00
		case nIdade >= 41 .AND. nIdade <= 60
			nSeguro := 380.00
		case nIdade > 60
			nSeguro := 520.00
	endcase

	nTotal := nSeguro + (90 * nQtd)

	QOut("")
	QOut("=== SEGURADORA DEV ===")
	QOut("Valor do seguro de acordo com a idade: R$ " +alltrim(str(nSeguro)))
	QOut("Valor do seguro + dependentes: R$ " +alltrim(str(nTotal)))
	QOut("======================")
return NIL