using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DAO.Interfaces
{
    public interface IEmployee: IDao<IEmployee>
    {
        DataTable LoginAdmin(string userName, string password);
        DataTable LoginNurse(string userName, string password);

        DataTable VerifyNurse(short id);
    }
}
