REQUEST HB_CODEPAGE_UTF8
function main()

	local cInput
	local nDia

	hb_cdpSelect("UTF8")

	do while .T.
		accept "Digite o dia da semana: " to cInput
		nDia := val(cInput)
		if nDia >= 1 .AND. nDia <= 7
			QOut("Dia: ",{"Segunda-Feira", "Terça-Feira", "Quarta-feira", "Quinta-feira", "Sexta-Feira", "Sábado", "Domingo"}[nDia])
			exit
		else
			QOut("Dia inválido")
		endif
	enddo

return NIL