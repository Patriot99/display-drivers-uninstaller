﻿'These values are not saved to Settings.xml (if need to save/load, use AppSettings)
' Add all commandline args you need or want here (with default setting)

Namespace Display_Driver_Uninstaller

	Public Class AppLaunchOptions
		Public Property Arguments As String = Nothing
		Public Property ArgumentsArray As String() = Nothing

		Public Property Silent As Boolean = False
		Public Property Shutdown As Boolean = False
		Public Property Restart As Boolean = False
		Public Property NoSafeModeMsg As Boolean = False

		Public Property CleanComplete As Boolean = False

		Public Property CleanNvidia As Boolean = False
		Public Property CleanAmd As Boolean = False
		Public Property CleanIntel As Boolean = False
		Public Property CleanRealtek As Boolean = False
		Public Property CleanSoundBlaster As Boolean = False

		Public Property PreventWinUpdateArg As Boolean = False

		Public Property RemoveMonitors As Boolean = False

		Public Property NoRestorePoint As Boolean = False

		Public Property RemoveCrimsonCache As Boolean = False
		Public Property RemoveAMDDirs As Boolean = False
		Public Property RemoveAudioBus As Boolean = False
		Public Property RemoveAMDKMPFD As Boolean = False
		Public Property RemoveNvidiaDirs As Boolean = False
		Public Property RemovePhysX As Boolean = False
		Public Property Remove3DTVPlay As Boolean = False
		Public Property RemoveGFE As Boolean = False
		Public Property RemoveNVBROADCAST As Boolean = False
		Public Property RemoveNVCP As Boolean = False
		Public Property KeepNVCPopt As Boolean = False
		Public Property RemoveINTELCP As Boolean = False
		Public Property RemoveAMDCP As Boolean = False
		Public Property RemoveVulkan As Boolean = False
		Public Property NoSetupAPI As Boolean = False



		Public ReadOnly Property HasCleanArg As Boolean
			Get
				Return (CleanNvidia OrElse CleanAmd OrElse CleanIntel OrElse CleanRealtek OrElse CleanSoundBlaster)
			End Get
		End Property

#Region "Visit links"

		' Remember to update HasLinkArg and LoadArgs() !
		Public VisitDonate As Boolean = False
		Public VisitPatron As Boolean = False
		Public VisitDiscord As Boolean = False
		Public VisitSVN As Boolean = False
		Public VisitGuru3DNvidia As Boolean = False
		Public VisitGuru3DAMD As Boolean = False
		Public VisitDDUHome As Boolean = False
		Public VisitGeforce As Boolean = False
		Public VisitOffer As Boolean = False

		Public ReadOnly Property HasLinkArg As Boolean
			Get
				If VisitDonate OrElse
			 VisitPatron OrElse
			 VisitDiscord OrElse
			 VisitSVN OrElse
			 VisitGuru3DNvidia OrElse
			 VisitGuru3DAMD OrElse
			 VisitDDUHome OrElse
			 VisitGeforce OrElse
			 VisitOffer Then

					Return True
				End If

				Return False
			End Get
		End Property

#End Region

		Public Sub LoadArgs(ByVal args() As String)
			If args IsNot Nothing AndAlso args.Length > 0 Then
				ArgumentsArray = args
				Arguments = String.Join(" ", args)

				For Each Argument As String In args
					Select Case True
						Case StrContainsAny(Argument, True, "-5648674614687") : Application.IsDebug = True
						Case StrContainsAny(Argument, True, "-processkilled") : Application.Settings.ProcessKilled = True
						Case StrContainsAny(Argument, True, "-visitdonate") : VisitDonate = True
						Case StrContainsAny(Argument, True, "-visitpatron") : VisitPatron = True
						Case StrContainsAny(Argument, True, "-visitdiscord") : VisitDiscord = True
						Case StrContainsAny(Argument, True, "-visitsvn") : VisitSVN = True
						Case StrContainsAny(Argument, True, "-visitguru3dnvidia") : VisitGuru3DNvidia = True
						Case StrContainsAny(Argument, True, "-visitguru3damd") : VisitGuru3DAMD = True
						Case StrContainsAny(Argument, True, "-visitdduhome") : VisitDDUHome = True
						Case StrContainsAny(Argument, True, "-visitgeforce") : VisitGeforce = True
						Case StrContainsAny(Argument, True, "-visitoffer") : VisitOffer = True


						Case StrContainsAny(Argument, True, "-Silent") : Silent = True
						Case StrContainsAny(Argument, True, "-Shutdown") : Shutdown = True
						Case StrContainsAny(Argument, True, "-Restart") : Restart = True
						Case StrContainsAny(Argument, True, "-NoSafeModeMsg") : NoSafeModeMsg = True
						Case StrContainsAny(Argument, True, "-cleancomplete") : CleanComplete = True
						Case StrContainsAny(Argument, True, "-CleanNvidia") : CleanNvidia = True
						Case StrContainsAny(Argument, True, "-CleanAmd") : CleanAmd = True
						Case StrContainsAny(Argument, True, "-CleanIntel") : CleanIntel = True
						Case StrContainsAny(Argument, True, "-CleanRealtek") : CleanRealtek = True
						Case StrContainsAny(Argument, True, "-CleanSoundBlaster") : CleanSoundBlaster = True

						Case StrContainsAny(Argument, True, "-PreventWinUpdate") : PreventWinUpdateArg = True
						Case StrContainsAny(Argument, True, "-NoRestorePoint") : NoRestorePoint = True
						Case StrContainsAny(Argument, True, "-RemovePhysx") : RemovePhysX = True
						Case StrContainsAny(Argument, True, "-RemoveGFE") : RemoveGFE = True
						Case StrContainsAny(Argument, True, "-RemoveNVBROADCAST") : RemoveNVBROADCAST = True
						Case StrContainsAny(Argument, True, "-RemoveNVCP") : RemoveNVCP = True
						Case StrContainsAny(Argument, True, "-KeepNVCPopt") : KeepNVCPopt = True
						Case StrContainsAny(Argument, True, "-RemoveINTELCP") : RemoveINTELCP = True
						Case StrContainsAny(Argument, True, "-RemoveAMDCP") : RemoveAMDCP = True
						Case StrContainsAny(Argument, True, "-RemoveAMDKMPFD") : RemoveAMDKMPFD = True
						Case StrContainsAny(Argument, True, "-RemoveAudioBus") : RemoveAudioBus = True
						Case StrContainsAny(Argument, True, "-RemoveVulkan") : RemoveVulkan = True
						Case StrContainsAny(Argument, True, "-NoSetupAPI") : NoSetupAPI = True
						Case StrContainsAny(Argument, True, "-removemonitors") : RemoveMonitors = True
						Case StrContainsAny(Argument, True, "-RemoveNvidiaDirs") : RemoveNvidiaDirs = True
						Case StrContainsAny(Argument, True, "-RemoveAMDDirs") : RemoveAMDDirs = True
						Case StrContainsAny(Argument, True, "-Remove3DTVPlay") : Remove3DTVPlay = True
						Case StrContainsAny(Argument, True, "-RemoveCrimsonCache") : RemoveCrimsonCache = True
						Case StrContainsAny(Argument, True, "-cleanallgpus")
							RemoveVulkan = True
							RemoveAudioBus = True
							RemoveAMDKMPFD = True
							RemoveAMDCP = True
							RemoveINTELCP = True
							RemoveNVCP = True
							RemoveNVBROADCAST = True
							RemoveGFE = True
							RemovePhysX = True
							CleanIntel = True
							CleanAmd = True
							CleanNvidia = True
							RemoveNvidiaDirs = True
							RemoveAMDDirs = True
							RemoveMonitors = True
							Remove3DTVPlay = True
							RemoveCrimsonCache = True
							'	TODO: Add cmdline args for those RemoveXXXX properties
							'	Case StrContainsAny(Argument, True, "-RemNvidiaDirs") : RemoveNvidiaDirs = True

							'	ALSO: change default values for those RemoveXXXX properties if needed
							'	They are used if launched with cmdLine 'CleanNvidia', 'CleanAmd' or 'CleanIntel'
					End Select
				Next
			Else
				Arguments = Nothing
			End If
		End Sub

	End Class
End Namespace