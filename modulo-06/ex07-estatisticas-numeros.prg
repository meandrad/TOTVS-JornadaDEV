REQUEST HB_CODEPAGE_UTF8

function get_numbers()

	local cInput
	local aNumbers := {}
	local nIndex

	nIndex := 1

	do while nIndex <= 10
		accept "Digite o " + alltrim(str(nIndex)) + " número: " to cInput
		aadd(aNumbers, val(cInput))
		nIndex += 1
	enddo

return aNumbers

function sum(aNumbers)

	local nResult
	local nLen
	local nIndex

	nResult := 0
	nLen := len(aNumbers)

	for nIndex := 1 to nLen
		nResult += aNumbers[nIndex]
	next

return nResult

function average(aNumbers)

	local nResult

	nResult := sum(aNumbers) / len(aNumbers)

return nResult

procedure print_results(aNumbers, nMenor, nMaior, nSum, nMedia)
	local nIndex
	nIndex := 1

	QOut("")
	QOut("Array em ordem crescente: { ")
	for nIndex := 1 to len(aNumbers)
		QQOut(alltrim(str(aNumbers[nIndex])))
		if nIndex < len(aNumbers)
			QQOut(", ")
		endif
	next
	QQOut(" }")
	QOut("Menor número do array: " +alltrim(str(nMenor)))
	QOut("Maior número do array: " +alltrim(str(nMaior)))
	QOut("Soma dos números do array: " +alltrim(str(nSum)))
	QOut("Média dos números do array: " +alltrim(str(nMedia)))
	QOut("")

function main()

	local nMaior
	local nMenor
	local nSum
	local nMedia
	local aNumbers := {}

	hb_cdpSelect("UTF8")
	aNumbers := asort(get_numbers())
	nMenor := aNumbers[1]
	nMaior := aNumbers[len(aNumbers)]
	nSum := sum(aNumbers)
	nMedia := average(aNumbers)
	print_results(aNumbers, nMenor, nMaior, nSum, nMedia)

return NIL