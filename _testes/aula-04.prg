REQUEST HB_CODEPAGE_UTF8
Function main()

	local cEntrada
	local nQtd
	local nOpcao
	local nPreco := 0
	local nTotal := 0
	local nDesc := 0

	hb_cdpSelect("UTF8")

	QOut("============ LANCHONETE DEV ============")
	QOut("1 - Hambúrguer .... R$ 18,00")
	QOut("2 - Batata Frita .... R$ 12,00")
	QOut("3 - Refrigerante .... R$ 7,00")
	QOut("0 - Sair")
	QOut("")
	QOut("Para pedidos acima de R$ 50,00 obtenha 10% de desconto")
	QOut("")

	do while .T.
		accept "Digite o código do item desejado: " to cEntrada
		nOpcao := val(cEntrada)

		if (nOpcao == 0)
			exit
		endif

		accept "Digite a quantidade do item desejado: " to cEntrada
		nQtd = val(cEntrada)

		do case
			case nOpcao == 1
				nPreco += 18.00 * nQtd
			case nOpcao == 2
				nPreco += 12.00 * nQtd
			case nOpcao == 3
				nPreco += 7.00 * nQtd
			otherwise
				QOut("Código inválido.")
		endcase
		nQtd := 0
	enddo

	if nPreco > 50
		nDesc = nPreco * 0.10
	endif

	nTotal = nPreco - nDesc

	QOut("")
	QOut("=========================================")
	QOut("Desconto: R$ " +alltrim(str(nDesc, 10, 2)))
	QOut("Total do pedido: R$ " + alltrim(str(nTotal, 10, 2)))
	QOut("Obrigada por escolher a lanchonete DEV")

return NIL