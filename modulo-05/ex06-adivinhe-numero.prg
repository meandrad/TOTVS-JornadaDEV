REQUEST HB_CODEPAGE_UTF8
function main()

	local nIndex
	local nRandom
	local nNumber
	local cInput
	local lAcertou

	lAcertou := .F.

	hb_cdpselect("UTF8")

	QOut("")
	QOut("=== JOGO DA ADVINHAÇÃO ===")
	QOut("Regras:")
	Qout("Você tem 7 tentativas para acertar o número secreto")
	QOut("O número secreto é um número entre 1 e 100")

	nRandom := hb_randomint(1, 100)
	
	for nIndex := 1 to 7
		do while .T.
			QOut("")
			accept alltrim(str(nIndex)) + " º Tentativa: " to cInput
			nNumber := val(cInput)
			if nNumber >= 1 .AND. nNumber <= 100
				exit
			endif
			QOut("Número inválido. Digite um número entre 1 e 100")
		enddo

		if nNumber > nRandom
			QOut("Seu número é maior que o número secreto")
		elseif nNumber < nRandom
			QOut("Seu número é menor que o número secreto")
		else
			QOut("")
			QOut("=== JOGO DA ADVINHAÇÃO ===")
			QOut("Parabéns! Você acertou na " + alltrim(str(nIndex)) + "ª tentativa.")
			QOut("O número secreto era: " +alltrim(str(nRandom, 3)))
			lAcertou := .T.
			exit
		endif
	
	next

	if ! lAcertou
		QOut("")
		QOut("=== JOGO DA ADVINHAÇÃO ===")
		QOut("Tente novamente!")
		QOut("O número secreto era: " +alltrim(str(nRandom)))
	endif

return NIL