using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Phantom_of_the_West.Visual_Novel
{
	internal class VisualNovelUnsubscriber : IDisposable
	{
		private IObserver<IVisualNovel> observer;

		private ObservableVisualNovel visualNovel;

		internal VisualNovelUnsubscriber(IObserver<IVisualNovel> observer, ObservableVisualNovel visualNovel)
		{
			this.observer = observer;
			this.visualNovel = visualNovel;
		}

		public void Dispose()
		{
			visualNovel.Unsubscribe(observer);
		}
	}
}
