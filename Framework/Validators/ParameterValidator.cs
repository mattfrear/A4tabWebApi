using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace Framework.Validators
{
    public abstract class ParameterValidator 
    {
        public List<ParameterError> Errors = new List<ParameterError>();

        public void Validate(bool condition, string parameterName, string errorMessage)
        {
            if (!condition)
            {
                Errors.Add(new ParameterError { ParameterName = parameterName, ErrorMessage = errorMessage });
            }
        }

        public bool HasErrors()
        {
            return Errors.Any();
        }

        public override string ToString()
        {
            var sb = new StringBuilder();
            foreach (var error in Errors)
            {
                sb.Append(error.ErrorMessage);
            }

            return sb.ToString();
        }
    }
}
