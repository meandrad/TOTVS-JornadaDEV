REQUEST HB_CODEPAGE_UTF8

function mediaPond(nNota1, nNota2, nNota3, nNota4)

	local nMediaPond

	nMediaPond = ((nNota1 * 1) + (nNota2 * 2) + (nNota3 * 3) + (nNota4 * 4))
	nMediaPond = nMediaPond / 10

return nMediaPond

function main()

	local cEntrada
	local nNota1
	local nNota2
	local nNota3
	local nNota4

	hb_cdpSelect("UTF8")

	accept "Digite a primeira nota: " to cEntrada
	nNota1 = val(cEntrada)
	accept "Digite a segunda nota: " to cEntrada
	nNota2 = val(cEntrada)
	accept "Digite a terceira nota: " to cEntrada
	nNota3 = val(cEntrada)
	accept "Digite a quarta nota: " to cEntrada
	nNota4 = val(cEntrada)

	QOut("")
	QOut("A média ponderada do aluno é: " +alltrim(str(mediaPond(nNota1, nNota2, nNota3, nNota4), 10, 2)))

return NIL