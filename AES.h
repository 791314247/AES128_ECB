/*
 * @Date: 2020-11-12 15:35:55
 * @LastEditors: WR
 * @LastEditTime: 2020-11-16 14:26:16
 * @FilePath: /AES/AES.h
 */

/* typedef define */
typedef unsigned char   aes_uint8_t;
typedef unsigned short  aes_uint16_t;
typedef unsigned long   aes_uint32_t;
typedef char            aes_int8_t;
typedef short           aes_int16_t;
typedef long int        aes_int32_t;

#define AES_DEBUG
#define ENABLE_DECODE

//#define PADDING_MODE_NONE
//#define PADDING_MODE_ZEROS
#define PADDING_MODE_PKCS5_7

#define CACHE_LENGTH  16
#define AES_KEY       "FLAGELEC00000000"


/**
 * PS: 加密算法(从网上找的代码)
 * 参数 string: 明文的字符串数组。
 * 参数 length: 明文的长度。
 * 参数 destin: 目标数组。
 * 参数 bufsz: 目标数组buf长度。
 */
void aes_encryption(const char *string, aes_int32_t length, char *destin, aes_int32_t bufsz);


/**
 * PS: 解密算法(从网上找的代码)
 * 参数 data: 密文的字符串数组。
 * 参数 length: 密文的长度。
 * 参数 destin: 目标数组。
 * 参数 bufsz: 目标数组buf长度。
 */
#ifdef ENABLE_DECODE
void aes_decode(const char *data, aes_int32_t length, char * destin, aes_int32_t bufsz);
#endif
