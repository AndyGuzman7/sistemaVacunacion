using DAO.Model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DAO.Model;

namespace DAO.Interfaces
{
    public interface IConsultation: IDao<ConsultationM>
    {

        void Insert(ConsultationM c, List<NurseData> nurses);
    }
}
