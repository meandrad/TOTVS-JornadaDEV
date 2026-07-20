REQUEST HB_CODEPAGE_UTF8
function main()

	local cInput
	local nMes

	hb_cdpSelect("UTF8")

	accept "Digite o número do mês: " to cInput
	nMes := val(cInput)

	if nMes >= 1 .AND. nMes <= 12
		QOut("Mes: ", {"Janeiro", "Fevereiro", "Março", "Abril", "Maio", "Junho", "Julho", "Agosto",;
		"Setembro", "Outubro", "Novembro", "Dezembro"}[nMes])
	else
		QOut("Mês inválido")
	endif

return NIL