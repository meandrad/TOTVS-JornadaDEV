REQUEST HB_CODEPAGE_UTF8
function main()
	local cEntrada
	local cNome
	local dDataNascimento
	local nPreco
	local nIdade
	local nDesconto

	hb_cdpSelect("UTF8")
	nDesconto := 0
	set date format to "DD/MM/YYYY"

	accept "Digite seu nome: " to cNome
	accept "Digite sua data de nascimento no modelo DD/MM/YYY: " to cEntrada
	dDataNascimento = CToD(cEntrada)
	nIdade = int((date() - dDataNascimento) / 365)
	accept "Digite o preço do produto: " to cEntrada
	nPreco = val(cEntrada)

	if nIdade >= 60
		nDesconto = nPreco * 0.125
	endif

	QOut("")
	QOut("DADOS DA COMPRA")
	QOut("==============================")
	QOut("Nome: " +cNome)
	QOut("Idade: " +alltrim(str(nIdade)))
	QOut("Preço: R$ " +alltrim(str(nPreco)))
	QOut("Desconto: R$ " +alltrim(str(nDesconto, 10, 2)))
	QOut("Total: R$ " +alltrim(str((nPreco - nDesconto), 10, 2)))
	QOut("==============================")
	QOut("")