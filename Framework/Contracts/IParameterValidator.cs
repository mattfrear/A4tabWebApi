namespace Framework.Contracts
{
    public interface IParameterValidator<in T>
    {
        void Validate(T tabQueryOption);
        bool HasErrors();
    }
}
