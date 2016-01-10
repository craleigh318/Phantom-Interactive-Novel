using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_18
{
	internal class Chapter18 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{18001, Ch18Title},
			{18002, Ch18pTimeLater},
			{18003, Ch18cTimeLater},
			{18004, Ch18sTimeLater},
			{18005, Ch18vTimeLater},
			{18101, Ch18pStadium},
			{18102, Ch18pIEnterStage},
			{18103, Ch18pCountlessPhantoms},
			{18104, Ch18pIGreetPhantoms},
			{18105, Ch18pGrownCommunity},
			{18106, Ch18pNextChapter},
			{18107, Ch18pInfiltrateSociety},
			{18108, Ch18pYeah},
			{18109, Ch18pWeWillRule},
			{18110, Ch18pApplause},
			{18201, Ch18cRaylenPark},
			{18202, Ch18cFoxtrotStoppedHiss},
			{18203, Ch18cCaitlynWantsStrawberry},
			{18204, Ch18cIWantVanilla},
			{18205, Ch18cWeBuyIceCream},
			{18206, Ch18cWeEat},
			{18207, Ch18cWeGoToFlat},
			{18208, Ch18cWeCuddle},
			{18209, Ch18cIExaminePhoto},
			{18210, Ch18cCaitlynSeesPhoto},
			{18211, Ch18cFormerAngst},
			{18212, Ch18cWeLookedCute},
			{18213, Ch18cThingsDoNotWorkOut},
			{18301, Ch18sSupermarket},
			{18302, Ch18sWeBuyGroceries},
			{18303, Ch18sWeMightStay},
			{18304, Ch18sAlwaysAPleasure},
			{18305, Ch18sWeGoToFlat},
			{18306, Ch18sWeCuddle},
			{18307, Ch18sSarahKnowsMeBetter},
			{18308, Ch18sSoAmI},
			{18309, Ch18sWeKiss},
			{18310, Ch18sIExaminePhoto},
			{18311, Ch18sSarahSeesPhoto},
			{18312, Ch18sYeahItIs},
			{18313, Ch18sWeLookedCute},
			{18314, Ch18sINuzzleSarah},
			{18315, Ch18csIBurnPhoto},
			{18401, Ch18vGoddessOfPride},
			{18402, Ch18vContinentIsWell},
			{18403, Ch18vCaitlynAndYukioResearch},
			{18404, Ch18vCaitlynAndYukioTogether},
			{18405, Ch18vSarahReports},
			{18406, Ch18vElodieCarleighAndHewittStudy},
			{18407, Ch18vCarleighHonors},
			{18408, Ch18vICannotSeeRebecca},
			{18409, Ch18vSunSets},
			{18901, Ch18TheEnd}
		};

		internal Chapter18() : base(dictionary, 18101, 18900)
		{
		}

		private static StoryChoiceList Ch18Title()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			Route route = flags.StoryRoute;
			switch (route)
			{
				case Route.Caitlyn:
					nextState = 18003;
					break;
				case Route.Sarah:
					nextState = 18004;
					break;
				case Route.VaNal:
					nextState = 18005;
					break;
				default:
					nextState = 18002;
					break;
			}
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch18Title", nextState) });
		}

		private static StoryChoiceList Ch18pTimeLater()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pTimeLater", 18101) });
		}

		private static StoryChoiceList Ch18cTimeLater()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch18csTimeLater", 18201) });
		}

		private static StoryChoiceList Ch18sTimeLater()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch18csTimeLater", 18301) });
		}

		private static StoryChoiceList Ch18vTimeLater()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vTimeLater", 18401) });
		}

		private static StoryChoiceList Ch18pStadium()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Entrance.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pStadium", 18102) });
		}

		private static StoryChoiceList Ch18pIEnterStage()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pIEnterStage", 18103) });
		}

		private static StoryChoiceList Ch18pCountlessPhantoms()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Phantom-Crowd.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pCountlessPhantoms", 18104) });
		}

		private static StoryChoiceList Ch18pIGreetPhantoms()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pIGreetPhantoms", 18105) });
		}

		private static StoryChoiceList Ch18pGrownCommunity()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pGrownCommunity", 18106) });
		}

		private static StoryChoiceList Ch18pNextChapter()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pNextChapter", 18107) });
		}

		private static StoryChoiceList Ch18pInfiltrateSociety()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pInfiltrateSociety", 18108) });
		}

		private static StoryChoiceList Ch18pYeah()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pYeah", 18109) });
		}

		private static StoryChoiceList Ch18pWeWillRule()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field-Raised-Fist.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pWeWillRule", 18110) });
		}

		private static StoryChoiceList Ch18pApplause()
		{
			return StoryChoiceList.FromResource("Phantom-Epilogue-Stadium-Field-Raised-Fist.png", new IStoryChoice[] { StoryChoice.FromResource("ch18pApplause", 18901) });
		}

		private static StoryChoiceList Ch18cRaylenPark()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			bool foxtrotHissed = (flags.Ch9FoxtrotReacted == FoxtrotReaction.Hissed);
			if (foxtrotHissed)
			{
				nextState = 18202;
			}
			else
			{
				nextState = 18203;
			}
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Park.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cRaylenPark", nextState) });
		}

		private static StoryChoiceList Ch18cFoxtrotStoppedHiss()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Park.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cFoxtrotStoppedHiss", 18203) });
		}

		private static StoryChoiceList Ch18cCaitlynWantsStrawberry()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Ice-Cream-Vendor.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cCaitlynWantsStrawberry", 18204) });
		}

		private static StoryChoiceList Ch18cIWantVanilla()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Ice-Cream-Vendor.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cIWantVanilla", 18205) });
		}

		private static StoryChoiceList Ch18cWeBuyIceCream()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Ice-Cream-Vendor.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cWeBuyIceCream", 18206) });
		}

		private static StoryChoiceList Ch18cWeEat()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Eating-Ice-Cream.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cWeEat", 18207) });
		}

		private static StoryChoiceList Ch18cWeGoToFlat()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-In-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch18csWeGoToFlat", 18208) });
		}

		private static StoryChoiceList Ch18cWeCuddle()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Fireplace.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cWeCuddle", 18209) });
		}

		private static StoryChoiceList Ch18cIExaminePhoto()
		{
			return StoryChoiceList.FromResource("Epilogue-Rebecca-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cIExaminePhoto", 18210) });
		}

		private static StoryChoiceList Ch18cCaitlynSeesPhoto()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Caitlyn-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cCaitlynSeesPhoto", 18211) });
		}

		private static StoryChoiceList Ch18cFormerAngst()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Caitlyn-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cFormerAngst", 18212) });
		}

		private static StoryChoiceList Ch18cWeLookedCute()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Caitlyn-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cWeLookedCute", 18213) });
		}

		private static StoryChoiceList Ch18cThingsDoNotWorkOut()
		{
			return StoryChoiceList.FromResource("Caitlyn-Epilogue-Caitlyn-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18cThingsDoNotWorkOut", 18315) });
		}

		private static StoryChoiceList Ch18sSupermarket()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Grocery-Shopping.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sSupermarket", 18302) });
		}

		private static StoryChoiceList Ch18sWeBuyGroceries()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Grocer.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sWeBuyGroceries", 18303) });
		}

		private static StoryChoiceList Ch18sWeMightStay()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Grocer.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sWeMightStay", 18304) });
		}

		private static StoryChoiceList Ch18sAlwaysAPleasure()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Grocer.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sAlwaysAPleasure", 18305) });
		}

		private static StoryChoiceList Ch18sWeGoToFlat()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-In-Car.png", new IStoryChoice[] { StoryChoice.FromResource("ch18csWeGoToFlat", 18306) });
		}

		private static StoryChoiceList Ch18sWeCuddle()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Fireplace.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sWeCuddle", 18307) });
		}

		private static StoryChoiceList Ch18sSarahKnowsMeBetter()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Fireplace.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sSarahKnowsMeBetter", 18308) });
		}

		private static StoryChoiceList Ch18sSoAmI()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Fireplace.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sSoAmI", 18309) });
		}

		private static StoryChoiceList Ch18sWeKiss()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Fireplace-Kiss.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sWeKiss", 18310) });
		}

		private static StoryChoiceList Ch18sIExaminePhoto()
		{
			return StoryChoiceList.FromResource("Epilogue-Rebecca-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sIExaminePhoto", 18311) });
		}

		private static StoryChoiceList Ch18sSarahSeesPhoto()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Sarah-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sSarahSeesPhoto", 18312) });
		}

		private static StoryChoiceList Ch18sYeahItIs()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Sarah-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sYeahItIs", 18313) });
		}

		private static StoryChoiceList Ch18sWeLookedCute()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Sarah-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sWeLookedCute", 18314) });
		}

		private static StoryChoiceList Ch18sINuzzleSarah()
		{
			return StoryChoiceList.FromResource("Sarah-Epilogue-Sarah-Sees-Photo.png", new IStoryChoice[] { StoryChoice.FromResource("ch18sINuzzleSarah", 18315) });
		}

		private static StoryChoiceList Ch18csIBurnPhoto()
		{
			return StoryChoiceList.FromResource("Epilogue-Rebecca-Photo-Burns.png", new IStoryChoice[] { StoryChoice.FromResource("ch18csIBurnPhoto", 18901) });
		}

		private static StoryChoiceList Ch18vGoddessOfPride()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Va'Nal-Kaden-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vGoddessOfPride", 18402) });
		}

		private static StoryChoiceList Ch18vContinentIsWell()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Va'Nal-Kaden-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vContinentIsWell", 18403) });
		}

		private static StoryChoiceList Ch18vCaitlynAndYukioResearch()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vCaitlynAndYukioResearch", 18404) });
		}

		private static StoryChoiceList Ch18vCaitlynAndYukioTogether()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Caitlyn-and-Yukio.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vCaitlynAndYukioTogether", 18405) });
		}

		private static StoryChoiceList Ch18vSarahReports()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vSarahReports", 18406) });
		}

		private static StoryChoiceList Ch18vElodieCarleighAndHewittStudy()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			int score = flags.Ch5NumCorrectMathAnswers;
			if (score >= 3)
			{
				nextState = 18407;
			}
			else
			{
				nextState = 18408;
			}
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Students.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vElodieCarleighAndHewittStudy", nextState) });
		}

		private static StoryChoiceList Ch18vCarleighHonors()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Students.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vCarleighHonors", 18408) });
		}

		private static StoryChoiceList Ch18vICannotSeeRebecca()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Va'Nal-Kaden-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vICannotSeeRebecca", 18409) });
		}

		private static StoryChoiceList Ch18vSunSets()
		{
			return StoryChoiceList.FromResource("Va'Nal-Epilogue-Sunset.png", new IStoryChoice[] { StoryChoice.FromResource("ch18vSunSets", 18901) });
		}

		private static StoryChoiceList Ch18TheEnd()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("theEnd", -1) });
		}
	}
}
