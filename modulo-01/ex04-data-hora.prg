REQUEST HB_CODEPAGE_UTF8

FUNCTION main()
	Local cNome := "Melissa Andrade"
	Local cCidade := "Santo André"
	Local cData := DToC(Date())
	Local cHora := Time()

	hb_cdpSelect( "UTF8" )

	Qout("=======================")
	Qout(" FICHA DE APRESENTAÇÃO ")
	Qout("=======================")
	QOut("Nome : " +cNome)
	QOut("Cidade : " +cCidade)
	QOut("Data : " +cData)
	QOut("Hora : " +cHora)
	QOut("Curso : Harbour/ADVPL")
	Qout("=======================")
	
RETURN NIL