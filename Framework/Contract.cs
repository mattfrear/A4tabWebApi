using System;

namespace Framework
{
    public static class Contract
    {
        public static void Requires(bool condition)
        {
            if (!condition)
            {
                throw new Exception();
            }
        }

        public static void Requires(bool condition, string userMessage)
        {
            if (!condition)
            {
                throw new Exception(userMessage);
            }
        }
    }
}
