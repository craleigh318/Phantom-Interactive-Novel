﻿using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System.Runtime.Serialization;

namespace Phantom_of_the_West.Visual_Novel.Serialization
{
	[DataContract]
	public class GameState
	{
		[DataMember]
		internal EventFlagsCollection EventFlags
		{
			get;
			private set;
		}

		[DataMember]
		internal int ID
		{
			get;
			private set;
		}

		internal GameState(EventFlagsCollection eventFlags, int id)
		{
			EventFlags = eventFlags;
			ID = id;
		}
	}
}
