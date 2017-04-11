#ifndef __HEROUTER_HEADER_WEBS__
#define __HEROUTER_HEADER_WEBS__



#define JSON_BUFFER_SIZE 1024*10    /*keep the same with system*/
#define MAX_IMG_SIZE 1024*1024*6  /*max size is 6M*/

#define UPLOAD_IMG_TAG   "/herouter/AppRequest/UploadIMG/"
#define DOWNLOAD_IMG_TAG "/herouter/AppRequest/DownloadIMG/"

#define AES_APP_KEY    "app.heluyou@2014\0"
#define AES_ONENET_KEY "daya_!234qawashkdf\0"

#define MAX_PICTURE_NUMBER 3
#define PICTURE_URL_SIZE 130
#define NUMBER_TWO 2

#define MAX_ENCRYPT_LEN 1024

/*Terminal access rulse part*/
#define MAX_ACCESS_RULES_SIZE 512*3  /*one rule about 34bytes,max 32 rules*/
#define MAX_QOS_RULES_SIZE 512*5  /*one rule about less 70 bytes,max 32 rules*/
#define MAX_ACCESS_RULES_NUMBER 32
#define MAX_QOS_RULES_NUMBER 32
#define MAX_TIME_PERIOD_NUM 2
#define INTERNET_RULES_SEPERATOR ","
#define INTERNET_TIME_SEPERATOR "&"
#define INTERNET_QOS_SEPERATOR ";"
#define IPTV_QOS_RULENAME_FLAG "IPTV_"

/* BODY_REQUSET_CONST_PART */
typedef struct tagWebsMsgReqBody
{
    DWORD version;          /* Э��汾 */
    CHAR  msgSeq[20];       /* ��Ϣ���: ��1��ʼ��������Ӧ��Ϣ���Ӧ��������Ϣ�����ͬ */
}HERT_WEBS_MSG_REQ_BODY;

typedef struct tagWebsMsgReqDevPassBody
{
    CHAR  random[64];           /* ����� */
    CHAR  adminPassword[130];   /* �������ժҪ */
}HERT_WEBS_MSG_REQ_VAR_DEVPASS_BODY;

typedef struct tagWebsMsgReqUploadPicBody
{
    CHAR  fileName[130];    /* �ļ����� */
    DWORD fileSize;         /* �ļ���С, ��λKbyte,����1Kbyte������1Kbyte */
}HERT_WEBS_MSG_REQ_VAR_UPLOAD_PIC_BODY;

typedef struct tagWebsMsgReqUpgradeBody
{
    CHAR  routerVersion[64];    /* ���µİ汾��Ϣ */
}HERT_WEBS_MSG_REQ_VAR_UPGRADE_BODY;

typedef struct tagWebsMsgReqSetNetWorkBody
{
    CHAR  random[64];          /* ����� */
    CHAR  adminPassword[130];  /* �������ժҪ */
    CHAR  netType;             /* ������ӷ�ʽ */
    CHAR  netAccount[32];      /* ����˺� */
    CHAR  netPassword[32];     /* ����˺����� */
    CHAR  wifiName[32];        /* Wifi���� */
    CHAR  wifiPassword[32];    /* Wifi���� */
    /*for static ip setting*/
    CHAR  ipv4Address[32];    /* IP��ַ */
    CHAR  subnetMask[32];     /* �������� */
    CHAR  gateway[32];        /* ���� */
    CHAR  dnsServer[32];      /* ��ѡDNS*/
    CHAR  dnsServerBackup[32];    /* ����DNS */
 }HERT_WEBS_MSG_REQ_VAR_SETNET_BODY;

typedef struct tagWebsMsgReqFaultDectBody
{
    DWORD faultType;           /* �������� */
}HERT_WEBS_MSG_REQ_VAR_FAULTDECT_BODY;

typedef struct tagWebsMsgReqWPSWBody
{
    CHAR  wpsSwitch;           /* WPS����,1:��, 0:�ر� */
}HERT_WEBS_MSG_REQ_VAR_WPSW_BODY;


typedef struct tagWebsMsgReqChannelBody
{
    CHAR  workingChannel[32];           /* WPS����,1:��, 0:�ر� */
}HERT_WEBS_MSG_REQ_VAR_CHANNEL_BODY;

typedef struct tagWebsMsgReqDevAllowBody
{
    CHAR  mac[32];            /* mac */
    CHAR  AllowAdd;           /* ����/�ܾ������ʶ,1:�������, 0:�ܾ����� */
}HERT_WEBS_MSG_REQ_VAR_DEVALLOW_BODY;

typedef struct tagWebsMsgReqAddDevBody
{
    DWORD dwDevNum;            /* �豸��Ŀ */
    HERT_WEBS_MSG_REQ_VAR_DEVALLOW_BODY *pDevAddList;
}HERT_WEBS_MSG_REQ_VAR_ADDDEV_BODY;

/* HERT_WEBS_MSG_RSP_BODY */
typedef struct tagWebsMsgRspBody
{
    DWORD version;          /* Э��汾 */
    CHAR  msgSeq[20];       /* ��Ϣ���: ��1��ʼ��������Ӧ��Ϣ���Ӧ��������Ϣ�����ͬ */
    DWORD errorCode;        /* ������ */
}HERT_WEBS_MSG_RSP_BODY;

/* HERT_WEBS_MSG_RSP_SUBDEV_BODY */
#if 0
typedef struct tagWebsMsgRspsubDevBody
{
    CHAR  devName[128];        /* �豸���ƣ� */
    CHAR  devType[32];         /* �豸���� */
    CHAR  devID[64];           /* ��ʶ�� */
    CHAR  mac[32];             /* Mac */
    CHAR  connectTime[16];     /* ����ʱ��, ��λ���� */
}HERT_WEBS_MSG_RSP_SUBDEV_BODY;
#else
typedef HERT_COM_SUBDEV_BODY HERT_WEBS_MSG_RSP_SUBDEV_BODY;
#endif

/* HERT_WEBS_MSG_RSP_STATUS_BODY */
typedef struct tagWebsMsgRspStatusBody
{
    CHAR  devStatus;           /* ����״̬, 0:����, 1:������ */
    CHAR  broadbandRate[10];   /* ����ռ����,�ٷ��� */
    DWORD wifiStatus;          /* wifi����������״̬, 0 ��, 1 �� */
    DWORD downbandwidth;           /* ʵʱ����, ��λK bit */
    DWORD runStatus;          /* ·��������״̬, 0������, 1������, 2��æµ */
    DWORD dwDevNumber;         /* ������Ŀ */
    HERT_WEBS_MSG_RSP_SUBDEV_BODY *pDev;   /* ������Ϣ */
}HERT_WEBS_MSG_RSP_STATUS_BODY;

/* HERT_WEBS_MSG_RSP_SPACE_BODY */
typedef struct tagWebsMsgRspSpaceBody
{
    CHAR    diskStatus;           /* U��״̬, 0������, 1:������ */
    DDWORD  totalSpace;           /* �ܴ洢�ռ�, ��λMB */
    DDWORD  usedSpace;            /* ���ÿռ�, ��λMB */
    DDWORD  leftSpace;            /* ʣ������, ��λMB */
}HERT_WEBS_MSG_RSP_SPACE_BODY;

/* HERT_WEBS_MSG_RSP_ABILITY_BODY */
typedef struct tagWebsMsgRspAbilityBody
{
    CHAR    devName[130];          /* �豸���� */
    CHAR    fac[32];               /* �豸���� */
    CHAR    type[32];              /* �豸�ͺ� */
    CHAR    softVersion[256];      /* �̼��汾�� */
    CHAR    softUpdate;            /* �Ƿ��й̼��汾����, 0���޹̼��汾����, 1���й̼��汾���� */
    CHAR    softUpdateDis[256];    /* �̼��汾�������� */
}HERT_WEBS_MSG_RSP_ABILITY_BODY;

/* HERT_WEBS_MSG_RSP_PICINFO_BODY */
typedef struct tagWebsMsgRspPicInfoBody
{
    CHAR    picUrl[130];                   /* ��Ƭ���ص�ַ */
    CHAR    smallPicUrl[130];              /* ����ͼ���ص�ַ */
}HERT_WEBS_MSG_RSP_PICINFO_BODY;

/* HERT_WEBS_MSG_RSP_PICLIST_BODY */
typedef struct tagWebsMsgRspPicListBody
{
    DWORD    imgCount;                           /* ��Ƭ���� */
    HERT_WEBS_MSG_RSP_PICINFO_BODY *pPicList;    /* ��Ƭ���ص�ַ�б� */
}HERT_WEBS_MSG_RSP_PICLIST_BODY;


/* HERT_WEBS_MSG_RSP_UPLOAD_IMG_BODY */
typedef struct tagWebsMsgRspUploadImgBody
{
    CHAR    picUrl[128];                   /* ��Ƭ���ص�ַ */
}HERT_WEBS_MSG_RSP_UPLOAD_IMG_BODY;


/* HERT_WEBS_MSG_RSP_FAULTITEM_BODY */
typedef struct tagWebsMsgRspFaultItemBody
{
    CHAR    faultType[32];                   /* �������� */
    CHAR    faultReason[128];                /* ����ԭ�� */
    CHAR    faultProcess[32];                /* ������ */
    CHAR    faultAllSteps[512];              /* ���ϴ�������в��� */
}HERT_WEBS_MSG_RSP_FAULTITEM_BODY;

/* HERT_WEBS_MSG_RSP_FAULTDECT_BODY */
typedef struct tagWebsMsgRspFaultDectBody
{
    DWORD dwFaultNumber;                           /* ������Ŀ */
    HERT_WEBS_MSG_RSP_FAULTITEM_BODY *pFaultItem;  /* ������Ϣ */
}HERT_WEBS_MSG_RSP_FAULTDECT_BODY;

/* HERT_WEBS_MSG_RSP_DEVITEM_BODY */
typedef struct tagWebsMsgRspDevItemBody
{
    CHAR    devName[128];               /* �豸���� */
    CHAR    devType[32];                /* �豸���� */
    CHAR    devID[64];                  /* ��ʶ�� */
    CHAR    mac[32];                    /* Mac */
}HERT_WEBS_MSG_RSP_DEVITEM_BODY;

/* HERT_WEBS_MSG_RSP_DEVTOADD_BODY */
typedef struct tagWebsMsgRspDevToAddBody
{
    DWORD dwDevNumber;                           /* �豸��Ŀ */
    HERT_WEBS_MSG_RSP_DEVITEM_BODY *pDevItem;  /* �豸��Ϣ */
}HERT_WEBS_MSG_RSP_DEVTOADD_BODY;

typedef struct tagWebsMsgReqGuestManageBody
{
    CHAR wifiSwitch;       /* ���߿��� 0:�ر� 1:�� */	
    CHAR passwordSwitch;        /* ���뿪�� 0:�ر� 1:��*/
    CHAR password[32];     /* �������������뿪�أ�Ϊ1ʱ����Ҫ�������� */
    short openTime;  /* ����ʱ�� ��λ:Сʱ -1:���� */
}HERT_WEBS_MSG_REQ_VAR_GUEST_MANAGE_BODY;

typedef struct tagWebsMsgRspGuestManageBody
{
    CHAR  wifiSwitch;      /* ���߿��� 0:�ر� 1:�� */	
    CHAR  passwordSwitch;  /* ���뿪�� 0:�ر� 1:�� */
    CHAR  password[32];    /* �������������뿪�أ�Ϊ1ʱ����Ҫ�������� */
    int   openTime;        /* ����ʱ�� ��λ:Сʱ -1:���� */
    int   remainTime;      /* ʣ��ʱ�� ��λ������ ����Ϊ��-1 */
}HERT_WEBS_MSG_RSP_VAR_GUEST_MANAGE_BODY;

CHAR *ParseJsonString(CHAR *pData, CHAR *pszItemName, CHAR *pszItemValue);

char hertUtil_isWifiOn();
char *hertUtil_getSN();
char *hertUtil_getPassword();
int hertUtil_isStorageExist(void);
int hertUtil_getStorageSize(char *path, long long *freeSize, long long *totalSize);

int base64encoder(unsigned char *pData, unsigned int nlength, char * outstr, 
			 const unsigned int max_str_out);

int base64decoder (char * eapstr, unsigned char *pData, unsigned int *nlength);

long hertUtil_getFileSize(const char *filename);

int hertUtil_setNetConfig4App(HERT_WEBS_MSG_REQ_VAR_SETNET_BODY * NetConfig);

int hertUtil_aes_ecb_128_Encrypt(const unsigned char *sMsg, int cbMsg, unsigned char *sEncryptMsg, int *cbEncryptMsg);
int hertUtil_aes_ecb_128_Decrypt(unsigned char* inBuf,int len,unsigned char* outBuf);

void hertUtil_BuildErrMsgRsp(DWORD errorCode,const char* msgType,char *pszOutputData, int nBufferLen,HERT_WEBS_MSG_REQ_BODY *pReqBody);

int hertUtil_readMac(char *buf);

int hertUtil_getIsNeedUpgrade();

typedef enum
{
   HERT_ERR_SUCCESS         = 0,
   HERT_ERR_INVALID_JSON    = 0xa001,   /* Json��Ϣ��ʽ���� */
   HERT_ERR_INTERNEL_FALSE  = 0xa002,   /* �������ڲ����� */
   HERT_ERR_DISK_NOENOUGH   = 0xa003,   /* ���̿ռ䲻�� */
   HERT_ERR_AUTH_FAILED     = 0xa004,   /* �����֤ʧ�� */
   HERT_ERR_DISK_NOEXIST    = 0xa005,   /* ���̲����� */
   HERT_ERR_PICTURE_NOEXIST = 0xa006,   /* ��Ƭ(�б�)������ */
   HERT_ERR_UPGRADE_DOWN    = 0xa007,   /* ���ع̼������ļ�ʧ�� */
   HERT_ERR_UPGRADE_PROCESS = 0xa008,   /* �̼������� */
   HERT_ERR_UPGRADE_NONEED  = 0xa009,   /* ����̼����� */
   HERT_ERR_UNKNOW_MSGTYPE  = 0xa00a,   /* δ֪��Ϣ���� */
}HERT_ERR_NO;


/***********************************
** Error logging                   *
***********************************/
#ifndef LOGDEBUG
#define LOGDEBUG(fmt)         vpcom_log fmt ;
#endif
#ifndef LOGINFO
#define LOGINFO(fmt)          vpcom_logInfo fmt ;
#endif
#ifndef LOGERROR
#define LOGERROR(fmt)         vpcom_logErr fmt ;
#endif
#ifndef LOG
#define LOG(fmt)              vpcom_log fmt ;
#endif

typedef enum
{
   VPCOM_LOG_OFF     = 0,
   VPCOM_LOG_EMERG   = 1,   
   VPCOM_LOG_CRIT    = 2,
   VPCOM_LOG_ALERT   = 3,
   VPCOM_LOG_ERROR   = 4,
   VPCOM_LOG_WARNING = 5,
   VPCOM_LOG_NOTICE  = 6,
   VPCOM_LOG_INFO    = 7,
   VPCOM_LOG_DEBUG   = 8
}VPCOM_LOGLEVEL;

void vpcom_log(const char*szFile, int nLine, const char *format,...);
void vpcom_logInfo(const char*szFile, int nLine,  const char *format,...);
void vpcom_logErr(const char*szFile, int nLine, const char *format,...);             
VPCOM_LOGLEVEL vpcom_GetLogLevel();
void vpcom_SetLogLevel(VPCOM_LOGLEVEL level);

char* hertUtil_getDeviceType();
char* hertUtil_getFirmwareVersion();
int hertUtil_getHerouteUpImg();
void hertUtil_DelNetFiltMac(char *filterMac);
void hertUtil_AddNetFiltMac(char *filterMac);
int hertUtil_IsInFile(const char *szFile, const char *szfindstr);
VPCOM_LOGLEVEL hertUtil_getLoglevel();



typedef struct tagIpReachItem 
{
    unsigned long ip;
    unsigned int  nReachable;
    unsigned long expires;
    char   mac[32];          /* mac */
    unsigned char hostname[16];
} IPREACHITEM;


/* time Period */
typedef struct tagWebsMsgTimePeriodInfo
{
    CHAR    startTime[32];            /* ��ʼʱ�� hh:mm */
    CHAR    endTime[32];              /* ����ʱ�� hh:mm */
}HERT_WEBS_MSG_TIME_PERIOD_INFO;

/*MSG_GET_TERMINAL_STATUS_REQ*/
typedef struct tagWebsMsgReqTerminalStatusBody
{
    CHAR  devMac[32];    /* Mac��ַ */
}HERT_WEBS_MSG_REQ_TERMINAL_STATUS_BODY;

/* HERT_WEBS_MSG_RSP_TERMINAL_STATUS_BODY */
typedef struct tagWebsMsgRspTerminalStatusBody
{
    DWORD  accessControl;           /* 0:��ֹ 1:���� */
    DWORD  netLimit;                /* 0���� 1���� 2����*/
    DWORD  periodNum;              /*ʱ�������*/
    HERT_WEBS_MSG_TIME_PERIOD_INFO *netTime; /*����ʱ��*/
}HERT_WEBS_MSG_RSP_TERMINAL_STATUS_BODY;

/*MSG_SET_TERMINAL_ACCESS_REQ*/
typedef struct tagWebsMsgReqSetTerminalBody
{
    CHAR   devMac[32];               /* Mac��ַ */
    DWORD  accessControl;           /* 0:��ֹ 1:���� */
    DWORD  netLimit;                /* 0���� 1���� 2����*/
    DWORD  periodNum;              /*ʱ�������*/
    HERT_WEBS_MSG_TIME_PERIOD_INFO *netTime; /*����ʱ��*/
}HERT_WEBS_MSG_REQ_SET_TERMINAL_BODY;


int hertUtil_IsAssicString(char *pszString);

int hertParse_internetRules(char *interRules,char *mac,int *accCon,int *netLimit,char *timeStart,char *timeEnd);
int hertUtil_getAccessRulesInNvram(const char *tarMAC, HERT_WEBS_MSG_REQ_SET_TERMINAL_BODY *rulesBody);
int hertUtil_updateAccessRulesInNvram(HERT_WEBS_MSG_REQ_SET_TERMINAL_BODY rulesBody);
int hertUtil_GetNvram_Values(char *pszTitle, char *szOutput, int nBuffSize);
int hertUtil_updateQOSSetting(const char *tarMac,const int group);
int herUtil_updateInterRules();
void updateArryRules();

extern int getIfIp(char *ifname, char *if_addr);
extern char* getLanIfName(void);
extern int initInternet(void);

#define HERT_LOGINFO(format, ...)   if ( VPCOM_LOG_NOTICE <= vpcom_GetLogLevel() ) \
                                         { LOGINFO((__FUNCTION__, __LINE__,  format, ##__VA_ARGS__)); }

#define HERT_LOGERR(format, ...)    if ( VPCOM_LOG_ERROR <= vpcom_GetLogLevel() ) \
                                         { LOGERROR((__FUNCTION__, __LINE__, format, ##__VA_ARGS__)); }

#define HERT_LOGDEBUG(format, ...)  if ( VPCOM_LOG_DEBUG <= vpcom_GetLogLevel() ) \
                                         { LOGDEBUG(( __FUNCTION__, __LINE__, format, ##__VA_ARGS__)); }

#define HERT_AES_DEBUG(funcprintlog) \
    if (hertUtil_IsInFile("/var/aesdebug","DEBUG")) \
    { \
        funcprintlog;\
    }
	
void hertUtil_setLoglevel();

DWORD hertUtil_getWorkStatus();

#endif /* __HEROUTER_HEADER_WEBS__ */
