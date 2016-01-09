using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel.Chapters.Chapter_16
{
	internal class Chapter16 : VoicedChapter
	{
		internal static Dictionary<int, StoryChoiceListDelegate> dictionary = new Dictionary<int, StoryChoiceListDelegate>
		{
			{16001, Ch16Title},
			{16002, Ch16DoIGiveUp},
			{16003, Ch16HerBrotherWon},
			{16004, Ch16WhyAreGodsHere},
			{16005, Ch16IDrankBekShtiisBlood},
			{16006, Ch16IsThatReallyWhy},
			{16007, Ch16SezjaSaidSo},
			{16008, Ch16WhatDoIDream},
			{16009, Ch16VaNalKnows},
			{16010, Ch16WhyDoIKeepDreaming},
			{16011, Ch16SenseStopped},
			{16012, Ch16HowWouldSheFeelAtReunion},
			{16013, Ch16ImNotSure},
			{16014, Ch16DoINotRemember},
			{16015, Ch16RememberWhat},
			{16016, Ch16TimeAgo},
			{16017, Ch16WhatTimeAgo},
			{16018, Ch16IWasAtAirport},
			{16019, Ch16WhatDidRebeccaSay},
			{16020, Ch16LongTimeNoSee},
			{16021, Ch16WhatDidSheSayAfter},
			{16022, Ch16NoHurtFeelings},
			{16023, Ch16WhatDidYouSay},
			{16024, Ch16IAmStillBadWithPeople},
			{16025, Ch16BeSuccessful},
			{16026, Ch16FindSomeoneElse},
			{16027, Ch16DoThatOK},
			{16028, Ch16RebeccaAndIHugged}
		};

		internal Chapter16() : base(dictionary, 16003)
		{
		}

		private static StoryChoiceList Ch16Title()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16Title", 16002) });
		}

		private static StoryChoiceList Ch16DoIGiveUp()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16DoIGiveUp", 16003) });
		}

		private static StoryChoiceList Ch16HerBrotherWon()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16HerBrotherWon", 16004) });
		}

		private static StoryChoiceList Ch16WhyAreGodsHere()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhyAreGodsHere", 16005) });
		}

		private static StoryChoiceList Ch16IDrankBekShtiisBlood()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16IDrankBekShtiisBlood", 16006) });
		}

		private static StoryChoiceList Ch16IsThatReallyWhy()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16IsThatReallyWhy", 16007) });
		}

		private static StoryChoiceList Ch16SezjaSaidSo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16SezjaSaidSo", 16008) });
		}

		private static StoryChoiceList Ch16WhatDoIDream()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhatDoIDream", 16009) });
		}

		private static StoryChoiceList Ch16VaNalKnows()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16VaNalKnows", 16010) });
		}

		private static StoryChoiceList Ch16WhyDoIKeepDreaming()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhyDoIKeepDreaming", 16011) });
		}

		private static StoryChoiceList Ch16SenseStopped()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16SenseStopped", 16012) });
		}

		private static StoryChoiceList Ch16HowWouldSheFeelAtReunion()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16HowWouldSheFeelAtReunion", 16013) });
		}

		private static StoryChoiceList Ch16ImNotSure()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16ImNotSure", 16014) });
		}

		private static StoryChoiceList Ch16DoINotRemember()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16DoINotRemember", 16015) });
		}

		private static StoryChoiceList Ch16RememberWhat()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16RememberWhat", 16016) });
		}

		private static StoryChoiceList Ch16TimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16TimeAgo", 16017) });
		}

		private static StoryChoiceList Ch16WhatTimeAgo()
		{
			return StoryChoiceList.FromResource("Black.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhatTimeAgo", 16018) });
		}

		private static StoryChoiceList Ch16IWasAtAirport()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16IWasAtAirport", 16019) });
		}

		private static StoryChoiceList Ch16WhatDidRebeccaSay()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhatDidRebeccaSay", 16020) });
		}

		private static StoryChoiceList Ch16LongTimeNoSee()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16LongTimeNoSee", 16021) });
		}

		private static StoryChoiceList Ch16WhatDidSheSayAfter()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhatDidSheSayAfter", 16022) });
		}

		private static StoryChoiceList Ch16NoHurtFeelings()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16NoHurtFeelings", 16023) });
		}

		private static StoryChoiceList Ch16WhatDidYouSay()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16WhatDidYouSay", 16024) });
		}

		private static StoryChoiceList Ch16IAmStillBadWithPeople()
		{
			PotWVN vn = PotWVN.MainVN;
			EventFlagsCollection flags = vn.EventFlags;
			int nextState;
			bool phantomRoute = (flags.StoryRoute == Route.Phantom);
			if (phantomRoute)
			{
				nextState = 16025;
			}
			else
			{
				nextState = 16026;
			}
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16IAmStillBadWithPeople", nextState) });
		}

		private static StoryChoiceList Ch16BeSuccessful()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16BeSuccessful", 16027) });
		}

		private static StoryChoiceList Ch16FindSomeoneElse()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16FindSomeoneElse", 16027) });
		}

		private static StoryChoiceList Ch16DoThatOK()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16DoThatOK", 16028) });
		}

		private static StoryChoiceList Ch16RebeccaAndIHugged()
		{
			return StoryChoiceList.FromResource("Kaden-and-Rebecca-Hug-at-Airport.png", new IStoryChoice[] { StoryChoice.FromResource("ch16RebeccaAndIHugged", 17001) });
		}
	}
}
