REQUEST HB_CODEPAGE_UTF8

procedure menu()
	QOut("=== JOKENPO MODULAR ===")
	QOut("1 - Pedra")
	QOut("2 - Papel")
	QOut("3 - Tesoura")
	QOut("")

function sortear_jogada()

	local cJogada
	local nJogada

	nJogada := hb_randomint(1, 3)

	do case
		case nJogada = 1
			cJogada := "Pedra"
		case nJogada = 2
			cJogada := "Papel"
		case nJogada = 1
			cJogada := "Tesoura"
	endcase

return cJogada

function jogada(nJogada)

	local cJogada

	do case
		case nJogada = 1
			cJogada := "Pedra"
		case nJogada = 2
			cJogada := "Papel"
		case nJogada = 3
			cJogada := "Tesoura"
	endcase

return cJogada

function valida_jogada(nJogadaUser)

	local lValidacao

	lValidacao := .F.

	if nJogadaUser >= 1 .AND. nJogadaUser <= 3
		lValidacao := .T.
	endif

return lValidacao

function duelo()

	local nJogador



return nJogador

function definir_vencedor(nJogada1, nJogada2, nJogada3)

	local cVencedor



return cVencedor

function main()

	local cJogadaUser
	local nJogadaUser
	local cJogada
	local lValidacao

	hb_cdpselect("UTF8")

	do while .T.
		menu()
		do while .T.
			accept "Escolha sua arma: " to cJogadaUser
			nJogadaUser := val(cJogadaUser)
			lValidacao := valida_jogada(nJogadaUser)
			if lValidacao == .F.
				QOut("Jogada inválida")
			else
				exit
			endif
		enddo
		cJogada := jogada(nJogadaUser)
		QOut("Jogada User: " +alltrim(cJogada))
	enddo


return NIL