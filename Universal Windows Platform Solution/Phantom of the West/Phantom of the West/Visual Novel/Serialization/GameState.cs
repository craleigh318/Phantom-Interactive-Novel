using Phantom_of_the_West.Visual_Novel.Serialization.Event_Flagging;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel.Serialization
{
	[DataContract]
	public class GameState
	{
		[DataMember]
		internal EventFlagsCollection EventFlags
		{
			get;
			set;
		}

		[DataMember]
		internal int ID
		{
			get;
			set;
		}
	}
}
