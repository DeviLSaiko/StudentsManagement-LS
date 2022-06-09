using FeesApplication;
using FeesRemoting;

namespace Fees.FeesFactory
{
    public static class FeesFactory
    {
        public static IFees CreateFeesObject()
        {
            return new FeesApp();
        }
    }
}
