REQUEST HB_CODEPAGE_UTF8

static nResult
static cInput
static nFirstNumber
static nSecondNumber

function soma()

	accept "Digite o primeiro número: " to cInput
	nFirstNumber := val(cInput)
	accept "Digite o segundo número: " to cInput
	nSecondNumber := val(cInput)
	nResult := nFirstNumber + nSecondNumber

return nResult

function subtracao()

	accept "Digite o primeiro número: " to cInput
	nFirstNumber := val(cInput)
	accept "Digite o segundo número: " to cInput
	nSecondNumber := val(cInput)
	nResult := nFirstNumber - nSecondNumber

return nResult

function multiplicacao()

	accept "Digite o primeiro número: " to cInput
	nFirstNumber := val(cInput)
	accept "Digite o segundo número: " to cInput
	nSecondNumber := val(cInput)
	nResult := nFirstNumber * nSecondNumber

return nResult

function potencia()

	accept "Digite o número: " to cInput
	nFirstNumber := val(cInput)
	accept "Digite a potência do número: " to cInput
	nSecondNumber := val(cInput)

	nResult := nFirstNumber ^ nSecondNumber

return nResult

function divisao()

	accept "Digite o primeiro número: " to cInput
	nFirstNumber := val(cInput)
	accept "Digite o segundo número: " to cInput
	nSecondNumber := val(cInput)

	if nSecondNumber == 0
		QOut("Não é possível fazer divisão por 0")
		return NIL
	endif

	nResult := nFirstNumber / nSecondNumber

return nResult

function raiz()

	accept "Digite o número: " to cInput
	nFirstNumber := val(cInput)

	if nFirstNumber < 0
		QOut("Não existe raiz de número negativo")
		return NIL
	endif

	nResult := sqrt(nFirstNumber)

return nResult

function main()

	local cOperator

	hb_cdpSelect("UTF8")

	QOut("=== CALCULADORA ===")
	QOut("+ - Soma")
	QOut("- - Subtração")
	QOut("* - Multiplicação")
	QOut("/ - Divisão")
	QOut("^ - Potência")
	QOut("R - Raiz quadrada")
	QOut("")

	accept "Digite o operador da conta: " to cOperator

	do case
		case cOperator == "+"
			nResult := soma()
		case cOperator == "-"
			nResult := subtracao()
		case cOperator == "*"
			nResult := multiplicacao()
		case cOperator == "/"
			nResult := divisao()
		case cOperator == "^"
			nResult := potencia()
		case upper(cOperator) == "R"
			nResult := raiz()
		otherwise
			QOut("Operador inválido")
	endcase

	if nResult != NIL
		QOut("")
		QOut("=== CALCULADORA ===")
		QOut("Resultado da operação: " +alltrim(str(nResult, 10, 2)))
		QOut("====================")
	endif

return NIL