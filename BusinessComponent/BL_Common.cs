using System;
using System.Collections;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Configuration;
using System.Data;
using System.Web;
using System.Data.Common;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Xml;
using System.Net.Mail;
using System.Security.Cryptography;
using System.IO;
using Microsoft.Practices.EnterpriseLibrary.Data;
using Microsoft.Practices.EnterpriseLibrary.Common;
using Microsoft.Practices.EnterpriseLibrary.Data.Sql;
using Microsoft.ApplicationBlocks.ExceptionManagement;
using Microsoft.Practices.EnterpriseLibrary.Logging;
using System.Net;

namespace BusinessComponent
{
    public class BL_Common
    {
        public BL_Common()
        {
            connectionStr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        }

        int _MinimumLength, _MaximumLength;
        bool _IncludeUpper, _IncludeLower, _IncludeNumber, _IncludeSpecial;
        private static RNGCryptoServiceProvider _Random = new RNGCryptoServiceProvider();
        private static byte[] bytes = new byte[4];
        string[] _CharacterTypes;
        string SQLSP;
        SqlParameter sqlParam;
        SqlParameter[] sqlParams;

        private static readonly char[] _Letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ".ToCharArray();
        private static readonly char[] _Numbers = "1234567890".ToCharArray();
        private static readonly char[] _Symbols = "!@#$%^*.".ToCharArray();

        string host = ConfigurationManager.AppSettings["Host"].ToString();
        string userame = ConfigurationManager.AppSettings["Username"].ToString();
        string password = ConfigurationManager.AppSettings["Password"].ToString();
        int port = Convert.ToInt32(ConfigurationManager.AppSettings["Port"].ToString());

        enum CharacterType
        {
            Uppercase,
            Lowercase,
            Special,
            Number
        }

        public bool IncludeUpper
        {
            get
            {
                return _IncludeUpper;
            }
            set
            {
                _IncludeUpper = value;
            }
        }

        public bool IncludeLower
        {
            get
            {
                return _IncludeLower;
            }
            set
            {
                _IncludeLower = value;
            }
        }

        public bool IncludeNumber
        {
            get
            {
                return _IncludeNumber;
            }
            set
            {
                _IncludeNumber = value;
            }
        }

        public bool IncludeSpecial
        {
            get
            {
                return _IncludeSpecial;
            }
            set
            {
                _IncludeSpecial = value;
            }
        }

        public int MinimumLength
        {
            get
            {
                return _MinimumLength;
            }
            set
            {
                if (value > _MaximumLength)
                {
                    throw new ArgumentOutOfRangeException("MinimumLength must be greater than MaximumLength");
                }
                _MinimumLength = value;
            }
        }

        public int MaximumLength
        {
            get
            {
                return _MaximumLength;
            }
            set
            {
                if (value < _MinimumLength)
                {
                    throw new ArgumentOutOfRangeException("MaximumLength must be greater than MinimumLength");
                }
                _MaximumLength = value;
            }
        }


        #region Get cached Datat

        /// <summary>
        /// Method to accept Stored Procedure name and Array of Parameters to get the cached Data
        /// </summary>
        /// <param name="cmdType"></param> 
        /// <param name="spName"></param>
        /// <param name="parameters"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        public DataSet GetCachedData(CommandType cmdType, string spName, SqlParameter[] parameters, int count)
        {
            DataSet dsCache = null;
            string strCacheKeyName = "";
            strCacheKeyName = spName;
            if (parameters != null)
            {
                for (int len = 0; len < parameters.Length; len++)
                {
                    if (parameters[len].Value != null)
                    {
                        strCacheKeyName = strCacheKeyName + parameters[len].Value.ToString();
                    }
                    //strCacheKeyName = strCacheKeyName + parameters[len].ParameterName.ToString();
                }
            }
            try
            {
                dsCache = GetCachedData(strCacheKeyName, count, spName, cmdType, parameters);
            }
            catch (Exception ex)
            {
                string msg = ex.Message.ToString();
                throw (ex);
            }
            return dsCache;

        }

        /// <summary>
        /// Method to accept Stored Procedure name and Parameter name to get the cached Data
        /// </summary>
        /// <param name="cmdType"></param>
        /// <param name="spName"></param>
        /// <param name="parameters"></param>
        /// <param name="count"></param>
        /// <returns></returns>
        public DataSet GetCachedData(CommandType cmdType, string spName, int count, SqlParameter parameter)
        {
            DataSet dsCache = null;
            string strCacheKeyName = "";
            strCacheKeyName = spName;
            if (parameter != null)
            {
                if (parameter.Value != null)
                {
                    strCacheKeyName = strCacheKeyName + parameter.Value.ToString();
                }
            }
            try
            {
                dsCache = GetCachedData(strCacheKeyName, count, spName, cmdType, parameter);
            }
            catch (Exception ex)
            {
                string msg = ex.Message.ToString();
                throw (ex);
            }
            return dsCache;
        }

        private DataSet GetCachedData(string CacheKeyName, int NoOfTopRecords, string SQLQueryOrSP, CommandType cmdType, params SqlParameter[] commandParameters)
        {
            DataSet dsCached = new DataSet();
            try
            {
                if (HttpContext.Current.Cache.Get(CacheKeyName) != null)
                {
                    dsCached = (DataSet)HttpContext.Current.Cache[CacheKeyName];
                }
                else
                {
                    Database dbObj = new SqlDatabase(this.connectionStr);
                    DbCommand command = dbObj.GetStoredProcCommand(SQLQueryOrSP);
                    if (commandParameters != null)
                    {
                        for (int index = 0; index < commandParameters.Length; index++)
                        {
                            dbObj.AddInParameter(command, commandParameters[index].ParameterName, commandParameters[index].DbType, commandParameters[index].Value);
                        }
                    }
                    dsCached = dbObj.ExecuteDataSet(command);
                    HttpContext.Current.Cache.Insert(CacheKeyName, dsCached, null, dtCacheTime, TimeSpan.Zero);
                }
                if (NoOfTopRecords > 0)
                {
                    DataSet ds = new DataSet();
                    ds = dsCached.Clone();
                    for (int j = 0; j < NoOfTopRecords; j++)
                    {
                        ds.Tables[0].Rows.Add(dsCached.Tables[0].Rows[j].ItemArray);
                    }
                    dsCached = ds;
                }
            }
            catch (SqlException ex)
            {

            }
            catch (Exception ex)
            {

            }
            return dsCached;

        }

        #endregion

        public DbCommand CreateSQLCommand(Database objDB, string SPName)
        {
            DbCommand objCommand = null;
            try
            {
                if (SPName.Trim().Length > 0)
                {
                    //Create Command object
                    objCommand = objDB.GetStoredProcCommand(SPName);
                    //Derive Parameters of SP
                    objDB.DiscoverParameters(objCommand);
                    // Assign the provided source columns to these parameters based on parameter order
                    for (int index = 0; index < objCommand.Parameters.Count; index++)
                        objCommand.Parameters[index].SourceColumn = objCommand.Parameters[index].ParameterName.Substring(1, objCommand.Parameters[index].ParameterName.Length - 1);
                }
                else
                {
                    throw new Exception("Stored Procedure Name cannot be empty.");
                }
            }
            catch (Exception ex)
            {
                ExceptionManager.Publish(ex);
                throw ex;
            }
            return objCommand;
        }

        #region Generate Random Code
        public string[] GenerateRandomCode(int NoOfCodes, int MinimumLength, int MaximumLength, bool includeSpecial, bool includeNumber, bool includeUpper, bool includeLower)
        {
            string[] str = new string[NoOfCodes];
            for (int i = 0; i < NoOfCodes; i++)
            {
                str[i] = GenerateRandomCode("", MinimumLength, MaximumLength, includeSpecial, includeNumber, includeUpper, includeLower);
            }
            return str;
        }

        public string[] GenerateRandomCode(string Prefix, int NoOfCodes, int MinimumLength, int MaximumLength, bool includeSpecial, bool includeNumber, bool includeUpper, bool includeLower)
        {
            string[] str = new string[NoOfCodes];
            for (int i = 0; i < NoOfCodes; i++)
            {
                str[i] = GenerateRandomCode(Prefix, MinimumLength, MaximumLength, includeSpecial, includeNumber, includeUpper, includeLower);
            }
            return str;
        }

        public string GenerateRandomCode(int MinimumLength, int MaximumLength, bool includeSpecial, bool includeNumber, bool includeUpper, bool includeLower)
        {
            return GenerateRandomCode("", MinimumLength, MaximumLength, includeSpecial, includeNumber, includeUpper, includeLower);
        }

        /// <summary>
        /// Randomly creates a password.
        /// </summary>
        /// <param name="Prefix"></param>
        /// <param name="MinimumLength"></param>
        /// <param name="MaximumLength"></param>
        /// <param name="includeSpecial"></param>
        /// <param name="includeNumber"></param>
        /// <param name="includeUpper"></param>
        /// <param name="includeLower"></param>
        /// <returns>A random string of characters.</returns>
        public string GenerateRandomCode(string Prefix, int MinimumLength, int MaximumLength, bool includeSpecial, bool includeNumber, bool includeUpper, bool includeLower)
        {
            _MinimumLength = MinimumLength;
            _MaximumLength = MaximumLength;
            _IncludeNumber = includeNumber;
            _IncludeSpecial = includeSpecial;
            _IncludeUpper = includeUpper;
            _IncludeLower = includeLower;
            _CharacterTypes = getCharacterTypes();

            StringBuilder password = new StringBuilder(_MaximumLength);

            //Get a random length for the password.
            int currentPasswordLength = GetNextNumber(_MaximumLength);

            //Only allow for passwords greater than or equal to the minimum length.
            if (currentPasswordLength < _MinimumLength)
            {
                currentPasswordLength = _MinimumLength;
            }

            //Generate the password
            for (int i = 0; i < currentPasswordLength; i++)
            {
                password.Append(getCharacter());
            }

            return Prefix + password.ToString();
        }

        /// <summary>
        /// Determines which character types should be used to generate
        /// the current password.
        /// </summary>
        /// <returns>A string[] of character that should be used to generate the current password.</returns>
        private string[] getCharacterTypes()
        {
            ArrayList characterTypes = new ArrayList();
            foreach (string characterType in Enum.GetNames(typeof(CharacterType)))
            {
                CharacterType currentType = (CharacterType)Enum.Parse(typeof(CharacterType), characterType, false);
                bool addType = false;
                switch (currentType)
                {
                    case CharacterType.Lowercase:
                        addType = IncludeLower;
                        break;
                    case CharacterType.Number:
                        addType = IncludeNumber;
                        break;
                    case CharacterType.Special:
                        addType = IncludeSpecial;
                        break;
                    case CharacterType.Uppercase:
                        addType = IncludeUpper;
                        break;
                }
                if (addType)
                {
                    characterTypes.Add(characterType);
                }
            }
            return (string[])characterTypes.ToArray(typeof(string));
        }

        /// <summary>
        /// Randomly determines a character type to return from the 
        /// available CharacterType enum.
        /// </summary>
        /// <returns>The string character to append to the password.</returns>
        private string getCharacter()
        {
            string characterType = _CharacterTypes[GetNextNumber(_CharacterTypes.Length)];
            CharacterType typeToGet = (CharacterType)Enum.Parse(typeof(CharacterType), characterType, false);
            switch (typeToGet)
            {
                case CharacterType.Lowercase:
                    return _Letters[GetNextNumber(_Letters.Length)].ToString().ToLower();
                case CharacterType.Uppercase:
                    return _Letters[GetNextNumber(_Letters.Length)].ToString().ToUpper();
                case CharacterType.Number:
                    return _Numbers[GetNextNumber(_Numbers.Length)].ToString();
                case CharacterType.Special:
                    return _Symbols[GetNextNumber(_Symbols.Length)].ToString();
            }
            return null;
        }

        public static int GetNextNumber(int max)
        {
            if (max <= 0)
            {
                throw new ArgumentOutOfRangeException("max");
            }
            _Random.GetBytes(bytes);
            int value = BitConverter.ToInt32(bytes, 0) % max;
            if (value < 0)
            {
                value = -value;
            }
            return value;
        }
        #endregion

        #region properties
        public string connectionStr { get; set; }

        protected DateTime dtCacheTime = DateTime.Now.AddMinutes(Convert.ToInt16(ConfigurationManager.AppSettings.Get("CacheTime")));

        #endregion

        public bool TestEmailRegex(string emailAddress)
        {
            //                string patternLenient = @"\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*";
            //                Regex reLenient = new Regex(patternLenient);
            string patternStrict = @"^(([^<>()[\]\\.,;:\s@\""]+"
                  + @"(\.[^<>()[\]\\.,;:\s@\""]+)*)|(\"".+\""))@"
                  + @"((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}"
                  + @"\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+"
                  + @"[a-zA-Z]{2,}))$";
            System.Text.RegularExpressions.Regex reStrict = new System.Text.RegularExpressions.Regex(patternStrict);

            //                      bool isLenientMatch = reLenient.IsMatch(emailAddress);
            //                      return isLenientMatch;

            bool isStrictMatch = reStrict.IsMatch(emailAddress.Trim());
            return isStrictMatch;

        }

        #region SendMail
        /// <summary>
        /// Sends an email 
        /// we get smtp mail value from 'SMTP_Server' key of web.config file.
        /// </summary>
        /// 
        public int SendEMail(string ToAddress, string FromAddress, string Subject, string Body, string ccAddress, string bccAddress, Attachment Attachment)
        {
            try
            {
                MailMessage msg = new MailMessage(FromAddress, ToAddress);
                msg.Subject = Subject;
                msg.Body = Body;
                msg.IsBodyHtml = true;
                if (Attachment != null)
                {
                    msg.Attachments.Add(Attachment);
                }

                SmtpClient mailClient = new SmtpClient(host, port);
                mailClient.Credentials = new NetworkCredential(userame, password);
                mailClient.EnableSsl = true;
                //insert code to log emailer in SQL
                mailClient.Send(msg);
                return 1;
            }
            catch (Exception ex)
            {
                LogFile("SMTP Error", "SendEMail", ex);
                return 0;
            }
        }
        #endregion

        #region Log
        /// <summary>
        /// Log exception in txt file.
        /// </summary>       
        public void LogFile(string sExceptionName, string sEventName, Exception ex)
        {

            string filename = ConfigurationManager.AppSettings["LogFilePath"] + DateTime.Now.ToString("MMM_yyyy") + ".txt";


            if (!File.Exists(filename))
            {
                File.Create(filename);
                TextWriter log = new StreamWriter(filename);
                log.Close();
            }
            else if (File.Exists(filename))
            {
                TextWriter log = new StreamWriter(filename);


                // Write to the file:
                log.Write("-------------------------------------------------");
                log.WriteLine("Data Time:" + DateTime.Now.ToString());
                log.WriteLine("Exception Name:" + sExceptionName);
                log.WriteLine("Event Name:" + sEventName);
                log.WriteLine("Exception:" + ex.StackTrace);
                log.WriteLine("Inner Exception:" + ex.InnerException);
                // Close the stream:
                log.Close();
            }
        }
        #endregion
    }
}
