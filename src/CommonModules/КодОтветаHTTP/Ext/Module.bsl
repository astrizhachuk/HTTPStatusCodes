// КодОтветаHTTP: Работа с кодами ответов HTTP для 1С:Предприятие 8
//
// Copyright 2019 Alexander Strizhachuk
//
//   Licensed under the Apache License, Version 2.0 (the "License");
//   you may not use this file except in compliance with the License.
//   You may obtain a copy of the License at
//
//       http://www.apache.org/licenses/LICENSE-2.0
//
//   Unless required by applicable law or agreed to in writing, software
//   distributed under the License is distributed on an "AS IS" BASIS,
//   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//   See the License for the specific language governing permissions and
//   limitations under the License.
//
//
// URL:    https://github.com/astrizhachuk/CodeStatusHTTP
// e-mail: strizhhh@mail.ru
// Версия: 1.0.0
//
// Требования: платформа 1С версии 8.3.10 и выше.
#Область ПрограммныйИнтерфейс

// Поиск числового кода ответа HTTP по его идентификатору (См. КодыОтветаHTTP()).
//
// Параметры:
//  Имя - Строка - идентификатор для кода ответа HTTP.
// 
// Возвращаемое значение:
//	- Неопределено - если код по идентификатору не найден.
//	- Число - код ответа HTTP.
//
Функция НайтиКодПоИдентификатору( Знач Идентификатор ) Экспорт
	
	Перем КодыОтвета;
	Перем Результат;

	КодыОтвета = КодОтветаHTTPПовтИсп.КодыОтветаHTTP();
	
	Результат = Неопределено;
	
	Попытка
	
		Результат = КодыОтвета[ ВРег(Идентификатор) ];
	
	Исключение
		
		Результат = Неопределено;
	
	КонецПопытки;

	Возврат Результат;
 
КонецФункции

// Поиск идентификатора кода ответа HTTP по его числовому коду (См. КодыОтветаHTTP()).
//
// Параметры:
//  Код - Число - код ответа HTTP. 
// 
// Возвращаемое значение:
//	- Неопределено - если идентификатор не найдено.
//	- Строка - идентификатор для кода ответа HTTP.
//
Функция НайтиИдентификаторПоКоду( Знач Код ) Экспорт
	
	Перем ИдентификаторыКодовОтвета;
	
	ИдентификаторыКодовОтвета = КодОтветаHTTPПовтИсп.ИдентификаторыКодовОтветаHTTP();

	Возврат ИдентификаторыКодовОтвета.Получить( Код );

КонецФункции

// Поиск описания для кода ответа HTTP по его идентификатору (См. КодыОтветаHTTP()).
//
// Параметры:
//  Имя - Строка - идентификатор для кода ответа HTTP.
// 
// Возвращаемое значение:
//	- Неопределено - если описание не найдено.
//	- Строка - описание кода ответа HTTP.
//
Функция НайтиОписаниеПоИдентификатору( Знач Идентификатор ) Экспорт
	
	Перем ОписанияКодовОтвета;
	
	ОписанияКодовОтвета = КодОтветаHTTPПовтИсп.ОписанияКодовОтветаHTTP();
	
	Возврат ОписанияКодовОтвета.Получить( ВРег(Идентификатор) );

КонецФункции

#Область Informational_1xx

Функция isContinue( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().CONTINUE );
	
КонецФункции

Функция isSwitchingProtocols( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().SWITCHING_PROTOCOLS );
	
КонецФункции

Функция isProcessing( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PROCESSING );
	
КонецФункции

Функция isCheckpoint( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().CHECKPOINT );
	
КонецФункции

#КонецОбласти

#Область Success_2xx

Функция isOk( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().OK );

КонецФункции

Функция isCreated( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().CREATED );

КонецФункции

Функция isAccepted( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().ACCEPTED );

КонецФункции

Функция isNonAuthoritative( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NON_AUTHORITATIVE_INFORMATION );

КонецФункции

Функция isNoContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NO_CONTENT );

КонецФункции

Функция isResetContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().RESET_CONTENT );

КонецФункции

Функция isPartialContent( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PARTIAL_CONTENT );

КонецФункции

Функция isMultiStatus( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().MULTI_STATUS );

КонецФункции

Функция isAlreadyReported( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().ALREADY_REPORTED );

КонецФункции

Функция isIMUsed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().IM_USED );

КонецФункции

#КонецОбласти

#Область Redirection_3xx

Функция isMultipleChoices( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().MULTIPLE_CHOICES );

КонецФункции

Функция isMovedPermanently( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().MOVED_PERMANENTLY );

КонецФункции

Функция isFound( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().FOUND );

КонецФункции

Функция isSeeOther( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().SEE_OTHER );

КонецФункции

Функция isNotModified( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NOT_MODIFIED );

КонецФункции

Функция isUseProxy( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().USE_PROXY );

КонецФункции

Функция isTemporaryRedirect( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().TEMPORARY_REDIRECT );

КонецФункции

Функция isPermanentRedirect( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PERMANENT_REDIRECT );

КонецФункции

#КонецОбласти

#Область ClientError_4xx

Функция isBadRequest( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().BAD_REQUEST );

КонецФункции

Функция isUnauthorized( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().UNAUTHORIZED );

КонецФункции

Функция isPaymentRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PAYMENT_REQUIRED );

КонецФункции

Функция isForbidden( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().FORBIDDEN );

КонецФункции

Функция isNotFound( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NOT_FOUND );

КонецФункции

Функция isMethodNotAllowed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().METHOD_NOT_ALLOWED );

КонецФункции

Функция isNotAcceptable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NOT_ACCEPTABLE );

КонецФункции

Функция isProxyAuthentication( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PROXY_AUTHENTICATION_REQUIRED );

КонецФункции

Функция isRequestTimeout( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().REQUEST_TIMEOUT );

КонецФункции

Функция isConflict( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().CONFLICT );

КонецФункции

Функция isGone( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().GONE );

КонецФункции

Функция isLengthRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().LENGTH_REQUIRED );

КонецФункции

Функция isPreconditionFailed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PRECONDITION_FAILED );

КонецФункции

Функция isPayloadTooLarge( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PAYLOAD_TOO_LARGE );

КонецФункции

Функция isURITooLong( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().URI_TOO_LONG );

КонецФункции

Функция isUnsupportedMedia( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().UNSUPPORTED_MEDIA_TYPE );

КонецФункции

Функция isRequestedRangeNotSatisfiable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().REQUESTED_RANGE_NOT_SATISFIABLE );

КонецФункции

Функция isExpectationFailed( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().EXPECTATION_FAILED );

КонецФункции

Функция isImATeapot( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().I_AM_A_TEAPOT );

КонецФункции

Функция isDestinationLocked( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().DESTINATION_LOCKED );

КонецФункции

Функция isUnprocessableEntity( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().UNPROCESSABLE_ENTITY );

КонецФункции

Функция isLocked( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().LOCKED );

КонецФункции

Функция isFailedDependency( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().FAILED_DEPENDENCY );

КонецФункции

Функция isUpgradeRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().UPGRADE_REQUIRED );

КонецФункции

Функция isPreconditionRequired( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().PRECONDITION_REQUIRED );

КонецФункции

Функция isTooManyRequests( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().TOO_MANY_REQUESTS );

КонецФункции

Функция isRequestHeaderTooLarge( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().REQUEST_HEADER_FIELDS_TOO_LARGE );

КонецФункции

Функция isUnavailableReasons( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().UNAVAILABLE_FOR_LEGAL_REASONS );

КонецФункции

#КонецОбласти

#Область ServerError_5xx

Функция isInternalServerError( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().INTERNAL_SERVER_ERROR );

КонецФункции

Функция isNotImplemented( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NOT_IMPLEMENTED );

КонецФункции

Функция isBadGateway( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().BAD_GATEWAY );

КонецФункции

Функция isServiceUnavailable( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().SERVICE_UNAVAILABLE );

КонецФункции

Функция isGatewayTimeout( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().GATEWAY_TIMEOUT );

КонецФункции

Функция isHTTPVersionNotSupported( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().HTTP_VERSION_NOT_SUPPORTED );

КонецФункции

Функция isVariantAlsoNegotiates( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().VARIANT_ALSO_NEGOTIATES );

КонецФункции

Функция isInsufficientStorage( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().INSUFFICIENT_STORAGE );

КонецФункции

Функция isLoopDetected( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().LOOP_DETECTED );

КонецФункции

Функция isBandwidthLimitExceeded( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().BANDWIDTH_LIMIT_EXCEEDED );

КонецФункции

Функция isNotExtended( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NOT_EXTENDED );

КонецФункции

Функция isNetworkAuthentication( Знач Код ) Экспорт
	
	Возврат ( Код = КодыОтветаHTTP().NETWORK_AUTHENTICATION_REQUIRED );

КонецФункции

#КонецОбласти

#КонецОбласти

#Область СлужебныйПрограммныйИнтерфейс

// Соответствие кодов ответа HTTP и их краткому имени, используемого для
// именнованого обращения к элементам структуры.
//	100, "CONTINUE", "Continue"
//	200, "OK", "OK"
// 
// Возвращаемое значение:
//   - ФиксированнаяСтруктура - соответствия числовых кодов и краткого имени ответа:
//		* Ключ - Строка - краткое имя для кода ответа HTTP.
//		* Значение - Число - код ответа HTTP.
//
// Пример:
//	CONTINUE = КодОтветаHTTP.КодыОтветаHTTP().CONTINUE;
//
Функция КодыОтветаHTTP() Экспорт
	
	Возврат КодОтветаHTTPПовтИсп.КодыОтветаHTTP();
	
КонецФункции

#КонецОбласти