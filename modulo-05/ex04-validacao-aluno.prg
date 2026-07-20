REQUEST HB_CODEPAGE_UTF8
function lerNota(cMensagem)

	local nNota
	local cInput

	do while .T.
			accept cMensagem to cInput
			nNota := val(cInput)
			if nNota >= 0 .AND. nNota <= 10
				exit
			endif
			QOut("A nota precisa ser de 0 a 10")
		enddo

return nNota

function main()

	local cNome
	local cDisciplina
	local nN1
	local nN2
	local nNotaFinal

	hb_cdpselect("UTF8")

	do while .T.
		accept "Digite seu nome: " to cNome
		if len(trim(cNome)) != 0
			exit
		endif
		QOut("O nome não pode estar em branco")
	enddo

	do while .T.
		accept "Digite a disciplina: " to cDisciplina
		cDisciplina := upper(cDisciplina)
		if len(cDisciplina) == 3
			exit
		endif
 		QOut("O nome da disciplina deve seguir o padrão. EX: MAT, POR...")
	enddo

	nN1 := lerNota("Digite a primeira nota (0 a 10): ")
	nN2 := lerNota("Digite a segunda nota (0 a 10): ")
	nNotaFinal := (nN1 + nN2) / 2

	QOut("")
	QOut("=== NOTA FINAL ===")
	QOut("Nome: " +alltrim(cNome))
	QOut("Matéria: " +alltrim(cDisciplina))
	QOut("Média final: " +alltrim(str(nNotaFinal, 10, 2)))
	QOut("")

return NIL