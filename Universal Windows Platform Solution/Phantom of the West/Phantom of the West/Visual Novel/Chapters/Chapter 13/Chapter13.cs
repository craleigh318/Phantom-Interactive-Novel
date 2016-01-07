using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_13
{
	internal class Chapter13 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{13001, Ch13Title},
			{13002, Ch13IAwaken},
			{13003, Ch13IPace},
			{13004, Ch13IConcentrate},
			{13005, Ch13IClearMyMind},
			{13006, Ch13RebeccaAppears},
			{13007, Ch13IsRebeccaVaNal},
			{13008, Ch13RebeccaHasNoPlaceForMe},
			{13009, Ch13StopItRebecca},
			{13010, Ch13RebeccaVanishes},
			{13011, Ch13IWashMyFace},
			{13012, Ch13IGetCaitlynAndYukio},
			{13013, Ch13WeWalkToBallroom},
			{13014, Ch13IFeelLightheaded},
			{13015, Ch13ILeanOnWall},
			{13016, Ch13AnxietyAttack},
			{13017, Ch13IAmAMonster},
			{13018, Ch13IShouldNotGo},
			{13019, Ch13IHaveToGo},
			{13020, Ch13YukioIsRight},
			{13021, Ch13IGoToBalcony},
			{13022, Ch13AmIUpset},
			{13023, Ch13IWasNeverTheProblem},
			{13024, Ch13WeKnowRealProblem},
			{13025, Ch13RebeccaMadeMeBad},
			{13026, Ch13TooLateForRebecca},
			{13027, Ch13RebeccaWasNotThere},
			{13028, Ch13BaqerIsGloomy},
			{13029, Ch13ICanBeAnyoneIWant},
			{13030, Ch13ILookWonderful},
			{13031, Ch13BeWhomRebeccaWants},
			{13032, Ch13GodsGaveInput},
			{13033, Ch13CoworkersWillDoubt},
			{13034, Ch13BekShtiiIsDoubted},
			{13035, Ch13YeahYeahOKISay},
			{13036, Ch13IEncounterOfficer},
			{13037, Ch13PoliceReceivedComplaint},
			{13038, Ch13OhReallyIAsk},
			{13039, Ch13DidIDealWithScientists},
			{13040, Ch13HotScoop},
			{13041, Ch13HotScoopInJail},
			{13042, Ch13OfficerIsAboutToShockMe},
			{13043, Ch13ICounterOfficer},
			{13044, Ch13OfficerSummonsAgent},
			{13045, Ch13IAmVacuumed},
			{13046, Ch13ItIsDark},
			{13047, Ch13TheyTakeMeAway},
			{13048, Ch13DoNotRevealMyRealName},
			{13049, Ch13KatieIsEmbarrassing},
			{13050, Ch13KatieFoolsThem},
			{13051, Ch13LaughingFades}
		};

		internal Chapter13() : base(dictionary, 13002)
		{
		}

		private static StoryChoiceList Ch13Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13Title", 13002) });
		}

		private static StoryChoiceList Ch13IAwaken()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IAwaken", 13003) });
		}

		private static StoryChoiceList Ch13IPace()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Daydreams.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IPace", 13004) });
		}

		private static StoryChoiceList Ch13IConcentrate()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Headache.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IConcentrate", 13005) });
		}

		private static StoryChoiceList Ch13IClearMyMind()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Headache.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IClearMyMind", 13006) });
		}

		private static StoryChoiceList Ch13RebeccaAppears()
		{
			return StoryChoiceList.FromResource("Rebecca-Hallucination-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch13RebeccaAppears", 13007) });
		}

		private static StoryChoiceList Ch13IsRebeccaVaNal()
		{
			return StoryChoiceList.FromResource("Rebecca-Hallucination-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IsRebeccaVaNal", 13008) });
		}

		private static StoryChoiceList Ch13RebeccaHasNoPlaceForMe()
		{
			return StoryChoiceList.FromResource("Rebecca-Hallucination-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch13RebeccaHasNoPlaceForMe", 13009) });
		}

		private static StoryChoiceList Ch13StopItRebecca()
		{
			return StoryChoiceList.FromResource("Rebecca-Hallucination-Talks.png", new IStoryChoice[] { StoryChoice.FromResource("ch13StopItRebecca", 13010) });
		}

		private static StoryChoiceList Ch13RebeccaVanishes()
		{
			return StoryChoiceList.FromResource("Rebecca-Hallucination-Vanishes.png", new IStoryChoice[] { StoryChoice.FromResource("ch13RebeccaVanishes", 13011) });
		}

		private static StoryChoiceList Ch13IWashMyFace()
		{
			return StoryChoiceList.FromResource("Sarah-Splashes-Face.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IWashMyFace", 13012) });
		}

		private static StoryChoiceList Ch13IGetCaitlynAndYukio()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Knock-Door.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IGetCaitlynAndYukio", 13013) });
		}

		private static StoryChoiceList Ch13WeWalkToBallroom()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Walkway.png", new IStoryChoice[] { StoryChoice.FromResource("ch13WeWalkToBallroom", 13014) });
		}

		private static StoryChoiceList Ch13IFeelLightheaded()
		{
			return StoryChoiceList.FromResource("Formal-Sarah-Walkway.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IFeelLightheaded", 13015) });
		}

		private static StoryChoiceList Ch13ILeanOnWall()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall.png", new IStoryChoice[] { StoryChoice.FromResource("ch13ILeanOnWall", 13016) });
		}

		private static StoryChoiceList Ch13AnxietyAttack()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch13AnxietyAttack", 13017) });
		}

		private static StoryChoiceList Ch13IAmAMonster()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IAmAMonster", 13018) });
		}

		private static StoryChoiceList Ch13IShouldNotGo()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IShouldNotGo", 13019) });
		}

		private static StoryChoiceList Ch13IHaveToGo()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IHaveToGo", 13020) });
		}

		private static StoryChoiceList Ch13YukioIsRight()
		{
			return StoryChoiceList.FromResource("Sarah-Leans-Wall-with-Tentacles.png", new IStoryChoice[] { StoryChoice.FromResource("ch13YukioIsRight", 13021) });
		}

		private static StoryChoiceList Ch13IGoToBalcony()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IGoToBalcony", 13022) });
		}

		private static StoryChoiceList Ch13AmIUpset()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-Alone.png", new IStoryChoice[] { StoryChoice.FromResource("ch13AmIUpset", 13023) });
		}

		private static StoryChoiceList Ch13IWasNeverTheProblem()
		{
			return StoryChoiceList.FromResource("Baqer-Balcony-Behind.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IWasNeverTheProblem", 13024) });
		}

		private static StoryChoiceList Ch13WeKnowRealProblem()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-with-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13WeKnowRealProblem", 13025) });
		}

		private static StoryChoiceList Ch13RebeccaMadeMeBad()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-with-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13RebeccaMadeMeBad", 13026) });
		}

		private static StoryChoiceList Ch13TooLateForRebecca()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-with-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13TooLateForRebecca", 13027) });
		}

		private static StoryChoiceList Ch13RebeccaWasNotThere()
		{
			return StoryChoiceList.FromResource("Sarah-Balcony-with-Baqer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13RebeccaWasNotThere", 13028) });
		}

		private static StoryChoiceList Ch13BaqerIsGloomy()
		{
			return StoryChoiceList.FromResource("Balcony-Sezja.png", new IStoryChoice[] { StoryChoice.FromResource("ch13BaqerIsGloomy", 13029) });
		}

		private static StoryChoiceList Ch13ICanBeAnyoneIWant()
		{
			return StoryChoiceList.FromResource("Balcony-Sezja-Sees-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13ICanBeAnyoneIWant", 13030) });
		}

		private static StoryChoiceList Ch13ILookWonderful()
		{
			return StoryChoiceList.FromResource("Balcony-Sezja-Sees-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13ILookWonderful", 13031) });
		}

		private static StoryChoiceList Ch13BeWhomRebeccaWants()
		{
			return StoryChoiceList.FromResource("Balcony-Sezja-Sees-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13BeWhomRebeccaWants", 13032) });
		}

		private static StoryChoiceList Ch13GodsGaveInput()
		{
			return StoryChoiceList.FromResource("Balcony-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch13GodsGaveInput", 13033) });
		}

		private static StoryChoiceList Ch13CoworkersWillDoubt()
		{
			return StoryChoiceList.FromResource("Balcony-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch13CoworkersWillDoubt", 13034) });
		}

		private static StoryChoiceList Ch13BekShtiiIsDoubted()
		{
			return StoryChoiceList.FromResource("Balcony-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch13BekShtiiIsDoubted", 13035) });
		}

		private static StoryChoiceList Ch13YeahYeahOKISay()
		{
			return StoryChoiceList.FromResource("Balcony-Bek'Shtii.png", new IStoryChoice[] { StoryChoice.FromResource("ch13YeahYeahOKISay", 13036) });
		}

		private static StoryChoiceList Ch13IEncounterOfficer()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IEncounterOfficer", 13037) });
		}

		private static StoryChoiceList Ch13PoliceReceivedComplaint()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13PoliceReceivedComplaint", 13038) });
		}

		private static StoryChoiceList Ch13OhReallyIAsk()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13OhReallyIAsk", 13039) });
		}

		private static StoryChoiceList Ch13DidIDealWithScientists()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13DidIDealWithScientists", 13040) });
		}

		private static StoryChoiceList Ch13HotScoop()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13HotScoop", 13041) });
		}

		private static StoryChoiceList Ch13HotScoopInJail()
		{
			return StoryChoiceList.FromResource("Officer-Talks-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13HotScoopInJail", 13042) });
		}

		private static StoryChoiceList Ch13OfficerIsAboutToShockMe()
		{
			return StoryChoiceList.FromResource("Officer-Gun-to-Sarah.png", new IStoryChoice[] { StoryChoice.FromResource("ch13OfficerIsAboutToShockMe", 13043) });
		}

		private static StoryChoiceList Ch13ICounterOfficer()
		{
			return StoryChoiceList.FromResource("Sarah-Disarms-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13ICounterOfficer", 13044) });
		}

		private static StoryChoiceList Ch13OfficerSummonsAgent()
		{
			return StoryChoiceList.FromResource("Sarah-Disarms-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch13OfficerSummonsAgent", 13045) });
		}

		private static StoryChoiceList Ch13IAmVacuumed()
		{
			return StoryChoiceList.FromResource("Ghost-Hunter.png", new IStoryChoice[] { StoryChoice.FromResource("ch13IAmVacuumed", 13046) });
		}

		private static StoryChoiceList Ch13ItIsDark()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13ItIsDark", 13047) });
		}

		private static StoryChoiceList Ch13TheyTakeMeAway()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13TheyTakeMeAway", 13048) });
		}

		private static StoryChoiceList Ch13DoNotRevealMyRealName()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13DoNotRevealMyRealName", 13049) });
		}

		private static StoryChoiceList Ch13KatieIsEmbarrassing()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13KatieIsEmbarrassing", 13050) });
		}

		private static StoryChoiceList Ch13KatieFoolsThem()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13KatieFoolsThem", 13051) });
		}

		private static StoryChoiceList Ch13LaughingFades()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch13LaughingFades", 14001) });
		}
	}
}
