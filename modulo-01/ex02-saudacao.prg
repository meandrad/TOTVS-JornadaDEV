REQUEST HB_CODEPAGE_UTF8

FUNCTION main()
	Local cNome := "Melissa"
	Local cCidade := "Santo André"

	hb_cdpSelect( "UTF8" )

	QOut("Olá, Mundo!")
	QOUt("Meu nome é " +cNome)
	QOut("Sou de " +cCidade)
	QOut("Pronto para aprender ADVPL!")

RETURN NIL