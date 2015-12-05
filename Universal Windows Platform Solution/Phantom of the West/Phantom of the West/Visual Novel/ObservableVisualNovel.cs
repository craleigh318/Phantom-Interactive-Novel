using System;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel
{
	public class ObservableVisualNovel : IObservable<IVisualNovel>
	{
		private HashSet<IObserver<IVisualNovel>> observers = new HashSet<IObserver<IVisualNovel>>();

		public IDisposable Subscribe(IObserver<IVisualNovel> observer)
		{
			observers.Add(observer);
			VisualNovelUnsubscriber u = new VisualNovelUnsubscriber(observer, this);
			return u;
		}

		public void Unsubscribe(IObserver<IVisualNovel> observer)
		{
			observers.Remove(observer);
		}

		public void NotifyObservers(IVisualNovel visualNovel)
		{
			foreach (IObserver<IVisualNovel> o in observers)
			{
				o.OnNext(visualNovel);
			}
		}
	}
}
