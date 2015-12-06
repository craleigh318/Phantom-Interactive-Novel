using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_1
{
	internal class Chapter1
	{
		internal static Dictionary<int, StoryChoiceListDelegate> IDToChoices
		{
			get;
			private set;
		} = new Dictionary<int, StoryChoiceListDelegate>
		{
			{1001, Ch1Title},
			{1002, Ch1IAmDrKaden},
			{1003, Ch1ThisIsNewFerando},
			{1004, Ch1IDrinkElixir},
			{1005, Ch1ILeaveHotel},
			{1006, Ch1IGoToAlley},
			{1007, Ch1OfficerSeesMe},
			{1008, Ch1MyFaceDisappears},
			{1009, Ch1IOpenMyEyes},
			{1010, Ch1IPossessOfficer},
			{1011, Ch1ILookAtMyHands},
			{1012, Ch1IGoToOfficersHome},
			{1013, Ch1ISleep},
		};

		private static IStoryChoiceList Ch1Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch1Title", 1002) });
		}

		private static IStoryChoiceList Ch1IAmDrKaden()
		{
			return StoryChoiceList.FromResource("I-am-Dr-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IAmDrKaden", 1003) });
		}

		private static IStoryChoiceList Ch1ThisIsNewFerando()
		{
			return StoryChoiceList.FromResource("Cityscape-from-Window.png", new IStoryChoice[] { StoryChoice.FromResource("ch1ThisIsNewFerando", 1004) });
		}

		private static IStoryChoiceList Ch1IDrinkElixir()
		{
			return StoryChoiceList.FromResource("Dr-Kaden-Drinks-Elixir.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IDrinkElixir", 1005) });
		}

		private static IStoryChoiceList Ch1ILeaveHotel()
		{
			return StoryChoiceList.FromResource("Dr-Kaden-Walking-among-Citizens.png", new IStoryChoice[] { StoryChoice.FromResource("ch1ILeaveHotel", 1006) });
		}

		private static IStoryChoiceList Ch1IGoToAlley()
		{
			return StoryChoiceList.FromResource("Dr-Kaden-Ill.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IGoToAlley", 1007) });
		}

		private static IStoryChoiceList Ch1OfficerSeesMe()
		{
			return StoryChoiceList.FromResource("Officer-Notices-Dr-Kaden.png", new IStoryChoice[] { StoryChoice.FromResource("ch1OfficerSeesMe", 1008) });
		}

		private static IStoryChoiceList Ch1MyFaceDisappears()
		{
			return StoryChoiceList.FromResource("Phantom-Reveal.png", new IStoryChoice[] { StoryChoice.FromResource("ch1MyFaceDisappears", 1009) });
		}

		private static IStoryChoiceList Ch1IOpenMyEyes()
		{
			return StoryChoiceList.FromResource("Phantom-Reveal-with-Eyes.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IOpenMyEyes", 1010) });
		}

		private static IStoryChoiceList Ch1IPossessOfficer()
		{
			return StoryChoiceList.FromResource("Possess-Police-Officer.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IPossessOfficer", 1011) });
		}

		private static IStoryChoiceList Ch1ILookAtMyHands()
		{
			return StoryChoiceList.FromResource("Officer-Hands.png", new IStoryChoice[] { StoryChoice.FromResource("ch1ILookAtMyHands", 1012) });
		}

		private static IStoryChoiceList Ch1IGoToOfficersHome()
		{
			return StoryChoiceList.FromResource("Drive-to-Officer-Home.png", new IStoryChoice[] { StoryChoice.FromResource("ch1IGoToOfficersHome", 1013) });
		}

		private static IStoryChoiceList Ch1ISleep()
		{
			return StoryChoiceList.FromResource("Officer-on-Bed.png", new IStoryChoice[] { StoryChoice.FromResource("ch1ISleep", 2001) });
		}
	}
}
