# language: ru

@tree
@classname=ModuleExceptionPath

Функционал: HTTPStatusCodes.Tests.Tests_HTTPStatusCodesServer
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

@OnServer
Сценарий: FindCodeById
	И я выполняю код встроенного языка на сервере
	| 'Tests_HTTPStatusCodesServer.FindCodeById(Контекст());' |

@OnServer
Сценарий: FindIdByCode
	И я выполняю код встроенного языка на сервере
	| 'Tests_HTTPStatusCodesServer.FindIdByCode(Контекст());' |

@OnServer
Сценарий: FindReasonPhraseById
	И я выполняю код встроенного языка на сервере
	| 'Tests_HTTPStatusCodesServer.FindReasonPhraseById(Контекст());' |

@OnServer
Сценарий: StatusCodesClass
	И я выполняю код встроенного языка на сервере
	| 'Tests_HTTPStatusCodesServer.StatusCodesClass(Контекст());' |

@OnServer
Сценарий: StatusCodes
	И я выполняю код встроенного языка на сервере
	| 'Tests_HTTPStatusCodesServer.StatusCodes(Контекст());' |