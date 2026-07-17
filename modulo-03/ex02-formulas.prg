REQUEST HB_CODEPAGE_UTF8
#define PI 3.14159

function area_circulo(nRaio)

	local nArea
	nArea := PI * (nRaio ^ 2)

return nArea

function hipotenusa(nCatOposto, nCatAdj)

	local nHipotenusa
	nHipotenusa := sqrt((nCatOposto ^ 2) + (nCatAdj ^ 2))

return nHipotenusa

function imc(nPeso, nAltura)

	local nImc
	nImc := nPeso / (nAltura ^ 2)

return nImc

function main()

	local cEntrada
	local nRaio
	local nCatAdj
	local nCatOposto
	local nPeso
	local nAltura

	hb_cdpSelect("UTF8")

	QOut("ÁREA DA CIRCUNFERÊNCIA")
	QOut("==============================")
	accept "Digite o raio: " to cEntrada
	nRaio = val(cEntrada)
	QOut("Resultado: " +alltrim(str(area_circulo(nRaio), 10, 2)))
	QOut("==============================")
	QOut("")

	QOut("HIPOTENUSA")
	QOut("==============================")
	accept "Digite o cateto adjacente: " to cEntrada
	nCatAdj = val(cEntrada)
	accept "Digite o cateto oposto: " to cEntrada
	nCatOposto = val(cEntrada)
	QOut("Resultado: " +alltrim(str(hipotenusa(nCatOposto, nCatAdj), 10, 2)))
	QOut("==============================")
	QOut("")
	
	QOut("IMC")
	QOut("==============================")
	accept "Digite o peso: " to cEntrada
	nPeso = val(cEntrada)
	accept "Digite a altura: " to cEntrada
	nAltura = val(cEntrada)
	QOut("Resultado: " +alltrim(str(imc(nPeso, nAltura), 10, 2)))
	QOut("==============================")
	QOut("")

return NIL