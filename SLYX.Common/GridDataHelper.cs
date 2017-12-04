using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SLYX.Common
{
    /// <summary>
    /// 列表数据，封装列表的行数据与总记录数
    /// </summary>
    /// <typeparam name="T"></typeparam>
    public class GridDataHelper<T>
    {
        public GridDataHelper()
            : this(new List<T>(), 0)
        { }

        public GridDataHelper(IEnumerable<T> rowst, int totalt)
        {
            rows = rowst;
            total = totalt;
        }

        /// <summary>
        /// 获取或设置 行数据
        /// </summary>
        public IEnumerable<T> rows { get; set; }

        /// <summary>
        /// 获取或设置 数据行数
        /// </summary>
        public int total { get; set; }
    }
}
