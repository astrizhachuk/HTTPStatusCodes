// @unit-test
Procedure FindCodeById( Context ) Экспорт

	Id = "CONTInue";
	Result = HTTPStatusCodesClientServerCached.FindCodeById( Id );	
	AssertIsTrue( Result, 100 );
	
	Id = "БАБАБАБАБАББУ";
	Result = HTTPStatusCodesClientServerCached.FindCodeById( Id );	
	AssertIsTrue( Result, Undefined );
	
	Id = 10;
	Result = HTTPStatusCodesClientServerCached.FindCodeById( Id );	
	AssertIsTrue( Result, Undefined );

EndProcedure

// @unit-test
Procedure FindIdByCode( Context ) Экспорт
	
	Code = 100;
	Result = HTTPStatusCodesClientServerCached.FindIdByCode( Code );	
	AssertIsTrue( Result, "CONTINUE" );
	
	Code = 9000;
	Result = HTTPStatusCodesClientServerCached.FindIdByCode( Code );	
	AssertIsTrue( Result, Undefined );
	
	Code = "а100";
	Result = HTTPStatusCodesClientServerCached.FindIdByCode( Code );	
	AssertIsTrue( Result, Undefined );
	
EndProcedure

// @unit-test
Procedure FindReasonPhraseById( Context ) Экспорт
	
	Id = "CONTInue";
	Result = HTTPStatusCodesClientServerCached.FindReasonPhraseById( Id );	
	AssertIsTrue( Result, "Continue" );
	
	Id = 10;
	Result = HTTPStatusCodesClientServerCached.FindReasonPhraseById( Id );	
	AssertIsTrue( Result, Undefined );
	
EndProcedure

// @unit-test
Procedure StatusCodesClass( Context ) Экспорт
	
	StatusCode = 0;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );
	
	StatusCode = -1;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );

	StatusCode = 99;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );
	
	StatusCode = "фыва";
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );

	StatusCode = 600;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );
	
	StatusCode = 102;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, "Informational" );
	
	StatusCode = 199;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );

	StatusCode = 102;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsInformational( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 199;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsInformational( StatusCode );	
	AssertIsTrue( Result, False );
	
	StatusCode = 202;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, "Success" );
	
	StatusCode = 299;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );
	
	StatusCode = 202;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsSuccess( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 299;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsSuccess( StatusCode );	
	AssertIsTrue( Result, False );
	
	StatusCode = 302;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, "Redirection" );
	
	StatusCode = 399;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );	
	
	StatusCode = 302;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsRedirection( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 399;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsRedirection( StatusCode );	
	AssertIsTrue( Result, False );
	
	StatusCode = 402;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, "ClientError" );
	
	StatusCode = 499;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );	

	StatusCode = 402;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsClientError( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 499;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsClientError( StatusCode );	
	AssertIsTrue( Result, False );
	
	StatusCode = 502;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, "ServerError" );
	
	StatusCode = 599;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.StatusCodesClass( StatusCode );	
	AssertIsTrue( Result, Undefined );
	
	StatusCode = 502;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsServerError( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 599;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsServerError( StatusCode );	
	AssertIsTrue( Result, False );

EndProcedure

// @unit-test
Procedure StatusCodes( Context ) Экспорт
	
	// is1xxInformational
	StatusCode = 100;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsContinue( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 101;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsSwitchingProtocols( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 102;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsProcessing( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 103;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsCheckpoint( StatusCode );	
	AssertIsTrue( Result, True );

	//is2xxSuccessful
	StatusCode = 200;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsOk( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 201;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsCreated( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 202;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsAccepted( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 203;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNonAuthoritative( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 204;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNoContent( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 205;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsResetContent( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 206;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPartialContent( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 207;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsMultiStatus( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 208;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsAlreadyReported( StatusCode );	
	AssertIsTrue( Result, True );
	
	StatusCode = 226;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsIMUsed( StatusCode );	
	AssertIsTrue( Result, True );
	
	// is3xxRedirection
	StatusCode = 300;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsMultipleChoices( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 301;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsMovedPermanently( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 302;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsFound( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 303;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsSeeOther( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 304;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNotModified( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 305;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUseProxy( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 307;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsTemporaryRedirect( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 308;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPermanentRedirect( StatusCode );	
	AssertIsTrue( Result, True );	
	
	// is4xxClientError

	StatusCode = 400;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsBadRequest( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 401;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUnauthorized( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 402;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPaymentRequired( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 403;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsForbidden( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 404;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNotFound( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 405;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsMethodNotAllowed( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 406;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNotAcceptable( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 407;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsProxyAuthentication( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 408;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsRequestTimeout( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 409;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsConflict( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 410;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsGone( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 411;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsLengthRequired( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 412;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPreconditionFailed( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 413;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPayloadTooLarge( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 414;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsURITooLong( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 415;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUnsupportedMedia( StatusCode );	
	AssertIsTrue( Result, True );	

	StatusCode = 416;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsRequestedRangeNotSatisfiable( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 417;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsExpectationFailed( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 418;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsImATeapot( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 421;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsDestinationLocked( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 422;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUnprocessableEntity( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 423;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsLocked( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 424;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsFailedDependency( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 426;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUpgradeRequired( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 428;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsPreconditionRequired( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 429;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsTooManyRequests( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 431;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsRequestHeaderTooLarge( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 451;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsUnavailableReasons( StatusCode );	
	AssertIsTrue( Result, True );
	
	// is5xxServerError
	StatusCode = 500;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsInternalServerError( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 501;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNotImplemented( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 502;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsBadGateway( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 503;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsServiceUnavailable( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 504;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsGatewayTimeout( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 505;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsHTTPVersionNotSupported( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 506;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsVariantAlsoNegotiates( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 507;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsInsufficientStorage( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 508;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsLoopDetected( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 509;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsBandwidthLimitExceeded( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 510;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNotExtended( StatusCode );	
	AssertIsTrue( Result, True );

	StatusCode = 511;
	Result = False;
	Result = HTTPStatusCodesClientServerCached.IsNetworkAuthentication( StatusCode );	
	AssertIsTrue( Result, True );
	
EndProcedure

#Region Private

Procedure AssertIsTrue(LeftValue, RightValue, Message = "")
	
	If ( LeftValue <> RightValue ) Then
		
		Raise(StrTemplate("<%1> != <%2>: %3", LeftValue, RightValue, Message));
	
	EndIf;
	
EndProcedure

#EndRegion
