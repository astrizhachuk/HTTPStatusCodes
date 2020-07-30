# language: ru

@tree
@classname=ModuleExceptionPath

Функционал: HTTPStatusCodes.Tests.Tests_HTTPStatusCodesClient
	Как Разработчик
	Я Хочу чтобы возвращаемое значение метода совпадало с эталонным
	Чтобы я мог гарантировать работоспособность метода

Сценарий: FindCodeById
	И я выполняю код встроенного языка
	| 'Tests_HTTPStatusCodesClient.FindCodeById(Контекст());' |

Сценарий: FindIdByCode
	И я выполняю код встроенного языка
	| 'Tests_HTTPStatusCodesClient.FindIdByCode(Контекст());' |

Сценарий: FindReasonPhraseById
	И я выполняю код встроенного языка
	| 'Tests_HTTPStatusCodesClient.FindReasonPhraseById(Контекст());' |

Сценарий: StatusCodesClass
	И я выполняю код встроенного языка
	| 'Tests_HTTPStatusCodesClient.StatusCodesClass(Контекст());' |

Сценарий: StatusCodes
	И я выполняю код встроенного языка
	| 'Tests_HTTPStatusCodesClient.StatusCodes(Контекст());' |