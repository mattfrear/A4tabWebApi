namespace Framework.Contracts
{
    public interface IParameterValidator<in T>
    {
        void Validate(T queryOption);
        bool HasErrors();
    }
}
