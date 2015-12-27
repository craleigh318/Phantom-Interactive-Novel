using System;
using System.Collections.Generic;

namespace Phantom_of_the_West.Visual_Novel
{
	public class ObservableVisualNovel : IObservable<IVisualNovel>
	{
		private HashSet<WeakReference<IObserver<IVisualNovel>>> observers = new HashSet<WeakReference<IObserver<IVisualNovel>>>();

		public IDisposable Subscribe(IObserver<IVisualNovel> observer)
		{
			WeakReference<IObserver<IVisualNovel>> weakObserver = new WeakReference<IObserver<IVisualNovel>>(observer);
			observers.Add(weakObserver);
			VisualNovelUnsubscriber u = new VisualNovelUnsubscriber(weakObserver, this);
			return u;
		}

		public void NotifyObservers(IVisualNovel visualNovel)
		{
			foreach (WeakReference<IObserver<IVisualNovel>> weakO in observers)
			{
				IObserver<IVisualNovel> o = null;
				weakO.TryGetTarget(out o);
				if (o == null)
				{
					RemoveReference(weakO);
				}
				o.OnNext(visualNovel);
			}
		}

		internal void RemoveReference(WeakReference<IObserver<IVisualNovel>> reference)
		{
			observers.Remove(reference);
		}
	}
}
