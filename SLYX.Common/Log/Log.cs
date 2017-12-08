﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using log4net;
namespace SLYX.Common.Log
{
    /// <summary>
    /// 日志
    /// </summary>
    public class Log
    {
        private ILog logger;
        public Log(ILog log)
        {
            this.logger = log;
        }
        public void Debug(object message)
        {
            this.logger.Debug(message);
        }
        public void Error(object message)
        {
            this.logger.Error(message);
        }
        public void Info(object message)
        {
            this.logger.Info(message);
        }
        public void Warn(object message)
        {
            this.logger.Warn(message);
        }
    }
}