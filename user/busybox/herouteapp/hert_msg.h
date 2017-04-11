
#ifndef __HE_ROUTE_MSG_HEADER__
#define __HE_ROUTE_MSG_HEADER__

/*
** C: route, S: platform
**
**
*/

#define CONN_REQ      1            /* ���ӽ�������	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY*/
#define CONN_RESP     2            /* ���ӽ�����Ӧ	S->C, DATA_FORMAT: MSGHEADER + OPTION */
#define PUSH_DATA     3            /* ��������	˫��, DATA_FORMAT: MSGHEADER + OPTION + BODY */
#define PING_REQ     12	           /* ��������	C->S, DATA_FORMAT: MSGHEADER */
#define PING_RESP    13	           /* ������Ӧ	S->C, DATA_FORMAT: MSGHEADER */


//---------------------------------------------------------------------------
//
// HEADER DEFINE
//
//---------------------------------------------------------------------------

#define MAX_LENGTH_SIZE 4

typedef struct tagMsgHeader
{
    CHAR MsgType;
    CHAR MsgLength[MAX_LENGTH_SIZE];
}HERT_MSGHEADER;

#define GET_MSG_TYPE(a)  (0x0f & (a >> 4))

//---------------------------------------------------------------------------
//
// OPTION DEFINE
//
//---------------------------------------------------------------------------
/* ���ӽ�������-OPTION */
typedef struct tagConnReqOption
{
    CHAR nHighLength;  /* ѡ��1��Э���������ַ�����ʽ�� */
    CHAR nLowLength;
    CHAR *pProtocol;
    CHAR nVer;         /* ѡ��2��Э��汾 */
    CHAR nConnFlag;    /* ѡ��3�����ӱ�־, Bit(7)=user flag, Bit(6)=pass flag, other is reserve */
    CHAR nHighTime;    /* ѡ��4����������ʱ�䣨256��=0x0100�� */
    CHAR nLowTime;
}HERT_MSG_OPTION_CONN_REQ;

#define SET_USER_TRUE(a)  (0xff & (a | 0x80))
#define SET_USER_FALSE(a) (0xff & (a & 0xEF))

#define SET_PASS_TRUE(a)  (0xff & (a | 0x40))
#define SET_PASS_FALSE(a) (0xff & (a & 0xBF))

#define CONN_REQ_OPT1_PRT_DES  { 0x0, 0x03,'E', 'D', 'P'}

#define CONN_REQ_OPT2_PRT_VER  { 0x01 }

typedef enum ConnRspErrCode
{
    CNRSPERR_SUCCESS = 0x0,     /* 0�����ӳɹ� */
    CNRSPERR_FAILED_PROTOCOL,   /* 1����֤ʧ��-Э�鲻ƥ�� */
    CNRSPERR_FAILED_DEVID,      /* 2����֤ʧ��-�豸ID��Ȩʧ�� */
    CNRSPERR_FAILED_SERVER,     /* 3����֤ʧ��-������ʧ�� */
    CNRSPERR_FAILED_AUTH,       /* 4����֤ʧ��-�û��������Ȩʧ�� */
    CNRSPERR_FAILED_NOAUTH,     /* 5����֤ʧ��-δ��Ȩ */
}CNRSPERR;

/* ���ӽ�����Ӧ-OPTION */
typedef struct tagConnRspOption
{
    CHAR nRever;           /* ѡ��1������ѡ�� */
    CHAR nErrCode;         /* ѡ��2��������   */
}HERT_MSG_OPTION_CONN_RSP;

/* ��������-OPTION */
typedef struct tagPushDataOption
{
    CHAR nHighLength;     /* ѡ��1��Ŀ�ĵ�ַ���ַ�����ʽ�� */
    CHAR nLowLength;
    CHAR *pData;
}HERT_MSG_OPTION_PUSH_DATA;

//---------------------------------------------------------------------------
//
// BODY DEFINE
//
//---------------------------------------------------------------------------
/* ���ӽ�������-BODY */
typedef struct tagConnReqBody
{
    CHAR nDevHighLength;  /* ��Ϣ��-�豸ID���ַ�����ʽ�� */
    CHAR nDevLowLength;
    CHAR nUserHighLength; /* ��Ϣ��-�û�ID���ַ�����ʽ�� */
    CHAR nUserLowLength;
    CHAR *pUserData;
    CHAR nPassHighLength; /* ��Ϣ��-��Ȩ��Ϣ���ַ�����ʽ�� */
    CHAR nPassLowLength;
    CHAR *pPassData;
}HERT_MSG_BODY_CONN_REQ;



/* ��������-BODY_REQUSET_CONST_PART */
typedef struct tagReqPushDataConstPart
{
    DWORD version;          /* Э��汾 */
    CHAR  msgType[64];      /* ��Ϣ���� */
    CHAR  msgSeq[20];       /* ��Ϣ���: ��1��ʼ��������Ӧ��Ϣ���Ӧ��������Ϣ�����ͬ */
}HERT_MSG_REQ_PUSH_DATA_CONSTPART;

/* ��������-BODY_RESPONSE_CONST_PART */
typedef struct tagRspPushDataConstPart
{
    DWORD version;          /* Э��汾 */
    CHAR  msgType[64];      /* ��Ϣ���� */
    CHAR  msgSeq[20];       /* ��Ϣ���: ��1��ʼ��������Ӧ��Ϣ���Ӧ��������Ϣ�����ͬ */
    DWORD errorCode;        /* ������ */
    CHAR  description[256]; /* ����	*/
}HERT_MSG_RSP_PUSH_DATA_CONSTPART;

/* ��������-BODY_REQUSET_VAR_PART_INIT */
typedef struct tagReqPushDataVarPart_Init
{
    CHAR  devID[64];      /* �豸��� */
    DWORD deviceType;     /* �豸���� */
    CHAR  IP[32];         /* �豸IP */
}HERT_MSG_REQ_PUSH_DATA_VARPART_INIT;

/* ��������-BODY_REPONSE_VAR_PART_INIT */
typedef struct tagRspPushDataVarPart_Init
{
    DWORD cycle;          /* �����������ڣ���λ�룬Ĭ��120���ݲ�ʹ�ã� */
    CHAR  time[32];       /* ʱ�� */
    CHAR  timeZone[16];   /* ʱ��, ��Χ-12~+12 */
    CHAR  platformVersion[32];    /* ƽ̨�汾 */
    CHAR  password[128];  /* ƽ̨������豸����,AES���� */
}HERT_MSG_RSP_PUSH_DATA_VARPART_INIT;


/* ��������-BODY_REQUSET_VAR_PART_ABILITY_NOTIFY */
typedef struct tagReqPushDataVarPart_Ability_Notify
{
    CHAR  devID[64];        /* �豸��� */
    CHAR  devName[128];     /* �豸���� */
    CHAR  fac[32];          /* �豸���� */
    CHAR  type[32];         /* �豸�ͺ� */
    CHAR  softVersion[256]; /* �̼��汾�� */
}HERT_MSG_REQ_PUSH_DATA_VARPART_ABILITY_NOTIFY;


/* ��������-BODY_REPONSE_VAR_PART_SPACE */
typedef struct tagRspPushDataVarPart_Space
{
    CHAR   diskStatus;       /* 0������ 1:������ */
    DDWORD totalSpace;       /* �ܴ洢�ռ�, ��λMB */
    DDWORD usedSpace;        /* ���ÿռ�, ��λMB */
    DDWORD leftSpace;        /* ʣ������, ��λMB */
}HERT_MSG_RSP_PUSH_DATA_VARPART_SPACE;

/* ��������-BODY_REPONSE_VAR_PART_STATUS */
#if 0
typedef struct tagRspPushDataVarPart_DevInfo
{
    CHAR   devName[128];     /* �豸���� */
    CHAR   devType[32];      /* �豸���� */
    CHAR   devID[64];        /* ��ʶ�� */
    CHAR   mac[32];          /* mac */
    CHAR   ConnectTime[16];  /* ����ʱ��, ��λ���� */
}HERT_MSG_RSP_PUSH_DATA_VARPART_DEVINFO;
#else
typedef HERT_COM_SUBDEV_BODY HERT_MSG_RSP_PUSH_DATA_VARPART_DEVINFO;
#endif

typedef struct tagRspPushDataVarPart_Status
{
    DWORD  devStatus;             /* ����״̬,0������,1�������� */
    DWORD  runStatus;             /* ��������,0����,1����,2���� */
    DWORD  downbandwidth;         /* ���д���,��λKB/S */
    CHAR   broadbandRate[16];     /* ����ռ����, �ٷ��� */
    DWORD  wifiStatus;        /* wifi����������״̬, 0 ��, 1 �� */
    CHAR   devNum;            /* this item is No need send */
    HERT_MSG_RSP_PUSH_DATA_VARPART_DEVINFO *pDevList; /* ������Ϣ */
}HERT_MSG_RSP_PUSH_DATA_VARPART_STATUS;


/* ��������-BODY_REQUEST_VAR_PART_DOWNLOAD */
typedef struct tagReqPushDataVarPart_Download
{
    CHAR   contentID[128];     /* ͼƬ��� */
    CHAR   URL[256];           /* ����URL */
    CHAR   contentName[128];   /*ͼƬ����*/
}HERT_MSG_REQ_PUSH_DATA_VARPART_DOWNLOAD;


/* ��������-BODY_REQUEST_VAR_PART_DOWNLOAD_COMP */
typedef struct tagReqPushDataVarPart_Download_Comp
{
    CHAR   contentID[128];     /* ͼƬ��� */
}HERT_MSG_REQ_PUSH_DATA_VARPART_DOWNLOAD_COMP;

/* ��������-BODY_REQUSET_VAR_GET_UPDATE */
typedef struct tagReqPushDataVarPart_GetUpdate
{
    CHAR  devID[64];          /* ��ʶ�� */
    DWORD type;               /* �����ͻ�������, 2��·���� */
    CHAR  currentVersion[32]; /* ��ǰ�汾 */
}HERT_MSG_REQ_PUSH_DATA_VARPART_GET_UPDATE;

/* ��������-BODY_REPONSE_VAR_GET_UPDATE */
typedef struct tagRspPushDataVarPart_GetUpdate
{
    CHAR  needUpdate;                /* �Ƿ���Ҫ����, 0����������, 1��ǿ������, 2����ǿ������ */
    CHAR  updateUrl[256];            /* �����ļ�URL, ��������ʱ���޴��ֶ� */
    CHAR  updateDescription[256];    /* ����ԭ��˵��, ����˵��ͨ�����ߣ�|���ָ� */
}HERT_MSG_RSP_PUSH_DATA_VARPART_GET_UPDATE;

typedef struct tagFileInfo
{
   CHAR   fileID[32];        /* �ļ���� 0��ʾ������δ���� */
   CHAR   fileName[256];     /* �����ļ����� */
   CHAR   fileType[32];      /* �����ļ����� RMVB��AVI�� */
   DWORD  fileStatus;        /* ����״̬ 0�������� 1����ͣ 2������� 3: δ���� */
   DWORD  fileSize;          /* �����ļ���С ��λMB */
   CHAR   fileAddress[256];  /* �����ļ���ַ ����BT���أ����ֶα�ʾ�ļ���·�� */
   DWORD  fileCompleteSize;  /* �������ļ���С ��λMB */
}FILE_INFO;

typedef struct tagDownloadMission
{
    CHAR       missionID[32];        /* ������ 0��ʾ������δ���� */
    CHAR       missionName[256];     /* �������� ���ļ�ʱ�����ļ��� */
    CHAR       missionType[32];      /* �������� RMVB��AVI�� */
    DWORD      missionStatus;        /* ����״̬ 0�������� 1����ͣ 2������� 3: δ���� */
    DWORD      missionSize;          /* �����С ��λMB */
    DWORD      missionCurSpeed;      /* ��ǰ�����ٶ� ��λKB/S */
    DWORD      missionCompleteSize;  /* �����ش�С ��λMB */
    CHAR       missionEndTime[32];   /* �ݲ�ʹ�ã���ʽyyyy-mm-ddHH:MM:SS */
    CHAR       missionDuration[16];  /* ��λ S */
    DWORD      dlFileNum;            /* ��������ļ�����,����ǵ��ļ����أ�ֵΪ0 */
    FILE_INFO  *pFileList;           /* �ļ��б� */
}DOWNLOAD_MISSION;

typedef struct tagReqPushDataVarPart_AddDownloadMission
{
    CHAR  dlAddress[256];  /* �������� */
}HERT_MSG_REQ_PUSH_DATA_VARPART_ADD_DOWNLOAD_MISSION;

typedef struct tagRspPushDataVarPart_AddDownloadMission
{
    CHAR   missionNum;               /* this item is No need send */
    DOWNLOAD_MISSION *pMissionInfo;  /* ������Ϣ */
}HERT_MSG_RSP_PUSH_DATA_VARPART_ADD_DOWNLOAD_MISSION;

typedef struct tagReqPushDataVarPart_DeviceOperate
{
    DWORD  operType;       /* 1:·����WIFI���� */
    CHAR   operPara[128];  /* operTypeΪ1ʱ, 0:��WIFI����, 1:�ر�WIFI���� */
}HERT_MSG_REQ_PUSH_DATA_VARPART_DEVICEOPERATE;

struct ether_addr{
	unsigned char mac[6];
};
#define DOMAIN_SIZE 250
struct domain_info{
	char  domain[DOMAIN_SIZE];
	struct ether_addr  mac;
	struct in_addr  ip;
	 time_t time;
} domain_tmp;
struct domain_queue_type{
struct domain_info *data;
struct domain_info *next;
};

struct mymesg{
	long mtype;
 	struct domain_info domain_tmp;
};

struct dev_index_type{
		struct ether_addr mac;
		int num;
	    struct in_addr  ip;
        HERT_MSG_RSP_PUSH_DATA_VARPART_DEVINFO  *devinfo;
        struct domain_queue_type *domain_queue;
	  };

struct dev_infos_type{
 struct ether_addr mac;
 HERT_MSG_RSP_PUSH_DATA_VARPART_DEVINFO devinfo;
};
struct mac_list_type{
 int  num;
 struct dev_infos_type *dev_infos;
 };
struct flow_length_req{
long mtype;
struct dev_infos_type dev_info;
};
struct flow_type_rsp{
long mtype;
unsigned long  long  length;
struct dev_infos_type dev_info;
};
struct flow_type_queue{
struct  flow_type_rsp *next;
unsigned long  long  length;
struct dev_infos_type dev_info;
};


/* parse: ��������-·���������ϱ���Ӧ */
RETCODE Parse_Msg_BodyConstPartRsp(IN CHAR *ptMsg, IN DWORD buffsize,
                          OUT HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody);

/* parse: ��������-·���������ϱ����� */
RETCODE Parse_Msg_BodyConstPartReq(IN CHAR *ptMsg, IN DWORD buffsize,
                          OUT HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody);

/* build: ���ӽ�������	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_ConnReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_CONN_REQ *ptMsgOption, IN HERT_MSG_BODY_CONN_REQ *ptMsgBody);

/* parse: ���ӽ�����Ӧ	S->C, DATA_FORMAT: MSGHEADER + OPTION */
RETCODE Parse_Msg_ConnRsp(CHAR *ptMsg, IN DWORD nDataLength, HERT_MSG_OPTION_CONN_RSP *ptMsgOption);

/* build: ��������	C->S, DATA_FORMAT: MSGHEADER */
RETCODE Build_Msg_PingReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen);

/* build: ��������-��ȡ��ʼ����Ϣ����	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_InitInfoReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_REQ_PUSH_DATA_VARPART_INIT *ptMsgVarBody);

/* parse: ��������-��ȡ��ʼ����Ϣ��Ӧ	S->C, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Parse_Msg_InitInfoRsp(IN CHAR *ptMsg, IN DWORD buffsize,
                          OUT HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          OUT HERT_MSG_RSP_PUSH_DATA_VARPART_INIT *ptMsgVarBody);

/* build: ��������-·���������ϱ�����	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_AbilityNotifyReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_REQ_PUSH_DATA_VARPART_ABILITY_NOTIFY *ptMsgVarBody);


/* build: ��������-��ѯ·�����洢��Ϣ��Ӧ	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_RouteSpaceRsp(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_RSP_PUSH_DATA_VARPART_SPACE *ptMsgVarBody);

/* build: ��������-��ѯ·��������״̬��Ӧ	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
/* build: ��������-�����ϱ�·����״̬����	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_RouteStatusRsp(IN OUT CHAR **ptMsg, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_RSP_PUSH_DATA_VARPART_STATUS *ptMsgVarBody,int isSendRequest);

/* parse: ��������-ͼƬ����֪ͨ����	S->C, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Parse_Msg_DownloadReq(IN CHAR *ptMsg, IN DWORD datalength, 
                          OUT HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          OUT HERT_MSG_REQ_PUSH_DATA_VARPART_DOWNLOAD *ptMsgVarBody);

/* build: ��������-ͼƬ����֪ͨ��Ӧ	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_DownloadRsq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody);

/* parse: ��������-·���������ϱ�����	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Parse_Msg_DownloadCompReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen, IN HERT_MSGHEADER *ptMsgHeader, 
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_REQ_PUSH_DATA_VARPART_DOWNLOAD_COMP *ptMsgVarBody);


/* build: ��������-·���������ϱ�����	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_GetUpgradeInfoReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_REQ_PUSH_DATA_VARPART_GET_UPDATE *ptMsgVarBody);

/* parse: ��������-·���������ϱ�����    S->C, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Parse_Msg_GetUpdateRsp(IN CHAR *ptMsg, IN DWORD buffsize,
                          OUT HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          OUT HERT_MSG_RSP_PUSH_DATA_VARPART_GET_UPDATE *ptMsgVarBody);
                          
/* parse: ����������������	S->C, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Parse_Msg_AddDownloadMissionReq(IN CHAR *ptMsg, IN DWORD datalength, 
                          OUT HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          OUT HERT_MSG_REQ_PUSH_DATA_VARPART_ADD_DOWNLOAD_MISSION *ptMsgVarBody);
                          
/* build: ��������������Ӧ	C->S, DATA_FORMAT: MSGHEADER + OPTION + BODY */
RETCODE Build_Msg_AddDownloadMissionRsp(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_RSP_PUSH_DATA_VARPART_ADD_DOWNLOAD_MISSION *ptMsgVarBody);

RETCODE Parse_Msg_DeviceOperateReq(IN CHAR *ptMsg, IN DWORD datalength, OUT HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          OUT HERT_MSG_REQ_PUSH_DATA_VARPART_DEVICEOPERATE *ptMsgVarBody);
                                                  
RETCODE Build_Msg_DeviceOperateRsp(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody);

RETCODE Build_Msg_DownloadCompReq(IN OUT CHAR *ptMsg, IN DWORD buffsize, OUT DWORD *nDataLen,
                          IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_REQ_PUSH_DATA_CONSTPART *ptMsgConstBody,
                          IN HERT_MSG_REQ_PUSH_DATA_VARPART_DOWNLOAD_COMP *ptMsgVarBody);

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

#define STR(a) #a

#define GET_STR_LENGTH(a) ((a) ? strlen(a) : 0) 

#define GET_LENGTH_PUSH_OPTION() (2 * sizeof(CHAR))

int GetLengthFromTwoBytes(CHAR nHighLength, CHAR nLowLength);

int GetHighLowFromString(CHAR *pdata, CHAR *nHighLength, CHAR *nLowLength);

CHAR *SetMsgLengthItem(CHAR *ptr, DWORD nMsgLen, int *nDataLen);

RETCODE Parse_Msg_Type(IN CHAR *ptMsg, OUT CHAR *msgType);
RETCODE Parse_Msg_Data(IN CHAR *ptMsg, OUT CHAR **pptMsgData, OUT DWORD *nMsgDataLen);
RETCODE Parse_Msg_ConnRsp(IN CHAR *ptMsg, IN DWORD nDataLength, OUT HERT_MSG_OPTION_CONN_RSP *ptMsgOption);

RETCODE Parse_Msg_PushData_Type(IN CHAR *ptMsg, IN int nDataLen, OUT CHAR *msgType, IN int nMsgTypeBuf);

CHAR *ParseJsonString(CHAR *pData, CHAR *szItemName, CHAR *szItemValue);

RETCODE Build_Msg_DomainStauteRsp(IN OUT CHAR **ptMsg, OUT DWORD *nDataLen,
		IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
		IN struct dev_index_type  *ptMsgVarBody);
RETCODE Build_Msg_ConNotifyRsp(IN OUT CHAR **ptMsg, OUT DWORD *nDataLen,
		IN HERT_MSG_OPTION_PUSH_DATA *ptMsgOption, IN HERT_MSG_RSP_PUSH_DATA_CONSTPART *ptMsgConstBody,
		IN struct flow_type_queue    *ptMsgVarBody);

#endif /* __HE_ROUTE_MSG_HEADER__ */
