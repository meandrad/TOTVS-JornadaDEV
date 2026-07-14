REQUEST HB_CODEPAGE_UTF8
FUNCTION main()
	local cNome := "Melissa"
	Local cCidade := "Santo André"

	hb_cdpSelect( "UTF8" )

	Qout("=======================")
	Qout(" FICHA DE APRESENTAÇÃO ")
	Qout("=======================")
	QOut("Nome : " +cNome)
	QOut("Cidade : " +cCidade)
	QOut("Curso : Harbour/ADVPL")