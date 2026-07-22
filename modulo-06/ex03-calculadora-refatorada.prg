REQUEST HB_CODEPAGE_UTF8

static nResult
static cInput
static nFirstNumber
static nSecondNumber

function main()

	hb_cdpSelect("UTF8")
	print_menu()
	get_operator()
	print_result()

return NIL

procedure print_menu()
	QOut("=== CALCULADORA ===")
	QOut("+ - Soma")
	QOut("- - Subtração")
	QOut("* - Multiplicação")
	QOut("/ - Divisão")
	QOut("^ - Potência")
	QOut("R - Raiz quadrada")
	QOut("")

procedure get_operator()

	accept "Digite o operador da conta: " to cInput

	do case
		case cInput == "+"
			nResult := sum()
		case cInput == "-"
			nResult := sub()
		case cInput == "*"
			nResult := mult()
		case cInput == "/"
			nResult := div()
		case cInput == "^"
			nResult := power()
		case upper(cInput) == "R"
			nResult := square()
		otherwise
			QOut("Operador inválido")
	endcase

procedure print_result
	if nResult != NIL
		QOut("")
		QOut("=== CALCULADORA ===")
		QOut("Resultado da operação: " +alltrim(str(nResult, 10, 2)))
		QOut("====================")
	endif

function sum()

	nFirstNumber := read_number("Digite o primeiro número: ")
	nSecondNumber := read_number("Digite o segundo número: ")
	nResult := nFirstNumber + nSecondNumber

return nResult

function sub()

	nFirstNumber := read_number("Digite o primeiro número: ")
	nSecondNumber := read_number("Digite o segundo número: ")
	nResult := nFirstNumber - nSecondNumber

return nResult

function mult()

	nFirstNumber := read_number("Digite o primeiro número: ")
	nSecondNumber := read_number("Digite o segundo número: ")
	nResult := nFirstNumber * nSecondNumber

return nResult

function power()

	nFirstNumber := read_number("Digite o número: ")
	nSecondNumber := read_number("Digite a potência do número: ")
	nResult := nFirstNumber ^ nSecondNumber

return nResult

function div()

	nFirstNumber := read_number("Digite o primeiro número: ")
	nSecondNumber := read_number("Digite o segundo número: ")
	if nSecondNumber == 0
		QOut("Não é possível fazer divisão por 0")
		return NIL
	endif
	nResult := nFirstNumber / nSecondNumber

return nResult

function square()

	nFirstNumber := read_number("Digite o número: " )
	if nFirstNumber < 0
		QOut("Não existe raiz de número negativo")
		return NIL
	endif
	nResult := sqrt(nFirstNumber)

return nResult

function read_number(cMensagem)

	accept cMensagem to cInput

return val(cInput)