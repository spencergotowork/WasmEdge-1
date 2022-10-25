/* DO NOT EDIT THIS FILE - it is machine generated */
#include <jni.h>
/* Header for class org_wasmedge_WasmEdge */

#ifndef _Included_org_wasmedge_WasmEdge
#define _Included_org_wasmedge_WasmEdge
#ifdef __cplusplus
extern "C" {
#endif
/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    getVersion
 * Signature: ()Ljava/lang/String;
 */
JNIEXPORT jstring JNICALL Java_org_wasmedge_WasmEdge_getVersion
  (JNIEnv *, jobject);

/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    getMajorVersion
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_org_wasmedge_WasmEdge_getMajorVersion
  (JNIEnv *, jobject);

/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    getMinorVersion
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_org_wasmedge_WasmEdge_getMinorVersion
  (JNIEnv *, jobject);

/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    getPatchVersion
 * Signature: ()J
 */
JNIEXPORT jlong JNICALL Java_org_wasmedge_WasmEdge_getPatchVersion
  (JNIEnv *, jobject);

/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    setErrorLevel
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_org_wasmedge_WasmEdge_setErrorLevel
  (JNIEnv *, jobject);

/*
 * Class:     org_wasmedge_WasmEdge
 * Method:    setDebugLevel
 * Signature: ()V
 */
JNIEXPORT void JNICALL Java_org_wasmedge_WasmEdge_setDebugLevel
  (JNIEnv *, jobject);

#ifdef __cplusplus
}
#endif
#endif
