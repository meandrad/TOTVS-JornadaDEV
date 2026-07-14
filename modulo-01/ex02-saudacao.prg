REQUEST HB_CODEPAGE_UTF8

FUNCTION main()
	Local cNome := "Melissa Andrade"
	Local cCidade := "Santo André"

	hb_cdpSelect( "UTF8" )

	QOUt("Meu nome é " +cNome)
	QOut("Sou de " +cCidade)
	QOut("Pronto para aprender ADVPL!")
RETURN NIL