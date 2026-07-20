REQUEST HB_CODEPAGE_UTF8
function main()

	local cEntrada
	local nSalario
	local nReajuste
	local nSalarioTotal

	hb_cdpSelect("UTF8")

	accept "Digite seu salário atual: " to cEntrada
	nSalario := val(cEntrada)

	if nSalario < 1000.00
		nReajuste = 0.15
		nSalarioTotal = nSalario + (nSalario * nReajuste)
	elseif nSalario >= 1000.00 .AND. nSalario <= 2000.00
		nReajuste = 0.12
		nSalarioTotal = nSalario + (nSalario * nReajuste)
	elseif nSalario > 2000.00 .AND. nSalario <= 4000.00
		nReajuste = 0.08
		nSalarioTotal = nSalario + (nSalario * nReajuste)
	else
		nReajuste = 0.05
		nSalarioTotal = nSalario + (nSalario * nReajuste)
	endif

	QOut("=== AJUSTE SALARIAL ===")
	QOut("Salário atual: R$ " +alltrim(str(nSalario)))
	QOut("Porcentagem de reajuste: " +alltrim(str(nReajuste * 100, 10, 0)))
	QQOut("%")
	QOut("Salário reajustado: R$ " +alltrim(str(nSalarioTotal, 10, 2)))
	QOut("========================")

return NIL