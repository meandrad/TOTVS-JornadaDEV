REQUEST HB_CODEPAGE_UTF8
function main()

	local cNomeFuncionario
	local nSalarioBruto
	local lAtivo
	local dDataAdmissao
	local cDepto

	hb_cdpSelect("UTF8")

	cNomeFuncionario := "Melissa Andrade"
	nSalarioBruto := 3500.00
	lAtivo := .T.
	dDataAdmissao := SToD("20260701")
	cDepto := "CW-832"

	QOut("Informações funcionário")
	QOut("==========================")
	QOut("Nome: " +cNomeFuncionario)
	QOut("Salário Bruto: R$ " +alltrim(str(nSalarioBruto)))
	QOut("Funcionário ativo: " +iif(lAtivo, "Sim", "Não"))
	QOut("Data de Admissão: " +DToC(dDataAdmissao))
	QOut("Departamento: " +cDepto)
	QOut("==========================")

return NIL