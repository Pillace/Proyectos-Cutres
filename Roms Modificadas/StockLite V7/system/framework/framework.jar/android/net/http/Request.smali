.class Landroid/net/http/Request;
.super Ljava/lang/Object;
.source "Request.java"


# static fields
.field private static final ACCEPT_ENCODING_HEADER:Ljava/lang/String; = "Accept-Encoding"

.field private static final CONNECTION:Ljava/lang/String; = "Connection"

.field private static final CONTENT_LENGTH_HEADER:Ljava/lang/String; = "content-length"

.field private static final HOST_HEADER:Ljava/lang/String; = "Host"

.field private static final KEEP_ALIVE:Ljava/lang/String; = "keep-alive"

.field private static requestContentProcessor:Lorg/apache/http/protocol/RequestContent;


# instance fields
.field private mBodyLength:I

.field private mBodyProvider:Ljava/io/InputStream;

.field volatile mCancelled:Z

.field private final mClientResource:Ljava/lang/Object;

.field private mConnection:Landroid/net/http/Connection;

.field mEventHandler:Landroid/net/http/EventHandler;

.field mFailCount:I

.field mHost:Lorg/apache/http/HttpHost;

.field mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

.field private mLoadingPaused:Z

.field mPath:Ljava/lang/String;

.field mProxyHost:Lorg/apache/http/HttpHost;

.field private mReceivedBytes:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    sput-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lorg/apache/http/HttpHost;Lorg/apache/http/HttpHost;Ljava/lang/String;Ljava/io/InputStream;ILandroid/net/http/EventHandler;Ljava/util/Map;)V
    .registers 11
    .parameter "method"
    .parameter "host"
    .parameter "proxyHost"
    .parameter "path"
    .parameter "bodyProvider"
    .parameter "bodyLength"
    .parameter "eventHandler"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/apache/http/HttpHost;",
            "Lorg/apache/http/HttpHost;",
            "Ljava/lang/String;",
            "Ljava/io/InputStream;",
            "I",
            "Landroid/net/http/EventHandler;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p8, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-boolean v1, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 74
    iput v1, p0, Landroid/net/http/Request;->mFailCount:I

    .line 78
    iput v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    .line 90
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    .line 93
    iput-boolean v1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 117
    iput-object p7, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    .line 118
    iput-object p2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    .line 119
    iput-object p3, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    .line 120
    iput-object p4, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 121
    iput-object p5, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    .line 122
    iput p6, p0, Landroid/net/http/Request;->mBodyLength:I

    .line 124
    if-nez p5, :cond_4f

    const-string v0, "POST"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4f

    .line 125
    new-instance v0, Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 136
    :cond_34
    :goto_34
    const-string v0, "Host"

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string v0, "Connection"

    const-string v1, "keep-alive"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const-string v0, "Accept-Encoding"

    const-string v1, "gzip"

    invoke-virtual {p0, v0, v1}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p8}, Landroid/net/http/Request;->addHeaders(Ljava/util/Map;)V

    .line 144
    return-void

    .line 127
    :cond_4f
    new-instance v0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    invoke-virtual {p0}, Landroid/net/http/Request;->getUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .line 132
    if-eqz p5, :cond_34

    .line 133
    invoke-direct {p0, p5, p6}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    goto :goto_34
.end method

.method private static canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z
    .registers 5
    .parameter "request"
    .parameter "status"

    .prologue
    const/4 v2, 0x0

    .line 481
    const-string v0, "HEAD"

    invoke-interface {p0}, Lorg/apache/http/HttpRequest;->getRequestLine()Lorg/apache/http/RequestLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/RequestLine;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    move v0, v2

    .line 484
    :goto_12
    return v0

    :cond_13
    const/16 v0, 0xc8

    if-lt p1, v0, :cond_21

    const/16 v0, 0xcc

    if-eq p1, v0, :cond_21

    const/16 v0, 0x130

    if-eq p1, v0, :cond_21

    const/4 v0, 0x1

    goto :goto_12

    :cond_21
    move v0, v2

    goto :goto_12
.end method

.method private setBodyProvider(Ljava/io/InputStream;I)V
    .registers 6
    .parameter "bodyProvider"
    .parameter "bodyLength"

    .prologue
    .line 498
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_e

    .line 499
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bodyProvider must support mark()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 503
    :cond_e
    const v0, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    .line 505
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    int-to-long v1, p2

    invoke-direct {v0, p1, v1, v2}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {p0, v0}, Lorg/apache/http/message/BasicHttpEntityEnclosingRequest;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 507
    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .parameter "name"
    .parameter "value"

    .prologue
    .line 176
    if-nez p1, :cond_d

    .line 177
    const-string v0, "Null http header name"

    .line 178
    .local v0, damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 179
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 181
    .end local v0           #damage:Ljava/lang/String;
    :cond_d
    if-eqz p2, :cond_15

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_37

    .line 182
    :cond_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Null or empty value for header \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0       #damage:Ljava/lang/String;
    invoke-static {v0}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    .line 184
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 186
    .end local v0           #damage:Ljava/lang/String;
    :cond_37
    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {v1, p1, p2}, Lorg/apache/http/message/BasicHttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    return-void
.end method

.method addHeaders(Ljava/util/Map;)V
    .registers 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 194
    .local p1, headers:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 204
    :cond_2
    return-void

    .line 199
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 200
    .local v1, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 201
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 202
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Landroid/net/http/Request;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method declared-synchronized cancel()V
    .registers 2

    .prologue
    .line 377
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 378
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 380
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    .line 381
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    if-eqz v0, :cond_13

    .line 382
    iget-object v0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v0}, Landroid/net/http/Connection;->cancel()V
    :try_end_13
    .catchall {:try_start_2 .. :try_end_13} :catchall_15

    .line 384
    :cond_13
    monitor-exit p0

    return-void

    .line 377
    :catchall_15
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method complete()V
    .registers 3

    .prologue
    .line 460
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 461
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 462
    monitor-exit v0

    .line 463
    return-void

    .line 462
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_a

    throw v1
.end method

.method error(II)V
    .registers 5
    .parameter "errorId"
    .parameter "resourceId"

    .prologue
    .line 526
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    iget-object v1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    iget-object v1, v1, Landroid/net/http/Connection;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Landroid/net/http/EventHandler;->error(ILjava/lang/String;)V

    .line 530
    return-void
.end method

.method getEventHandler()Landroid/net/http/EventHandler;
    .registers 2

    .prologue
    .line 166
    iget-object v0, p0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    return-object v0
.end method

.method getHostPort()Ljava/lang/String;
    .registers 4

    .prologue
    .line 387
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    .line 388
    .local v1, myScheme:Ljava/lang/String;
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getPort()I

    move-result v0

    .line 391
    .local v0, myPort:I
    const/16 v2, 0x50

    if-eq v0, v2, :cond_18

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_24

    :cond_18
    const/16 v2, 0x1bb

    if-eq v0, v2, :cond_2b

    const-string v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 393
    :cond_24
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->toHostString()Ljava/lang/String;

    move-result-object v2

    .line 395
    :goto_2a
    return-object v2

    :cond_2b
    iget-object v2, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v2}, Lorg/apache/http/HttpHost;->getHostName()Ljava/lang/String;

    move-result-object v2

    goto :goto_2a
.end method

.method getUri()Ljava/lang/String;
    .registers 3

    .prologue
    .line 400
    iget-object v0, p0, Landroid/net/http/Request;->mProxyHost:Lorg/apache/http/HttpHost;

    if-eqz v0, :cond_12

    iget-object v0, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v0}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "https"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 402
    :cond_12
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    .line 404
    :goto_14
    return-object v0

    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/net/http/Request;->mHost:Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Lorg/apache/http/HttpHost;->getSchemeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/net/http/Request;->getHostPort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_14
.end method

.method public handleSslErrorResponse(Z)V
    .registers 4
    .parameter "proceed"

    .prologue
    .line 515
    iget-object p0, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .end local p0
    check-cast p0, Landroid/net/http/HttpsConnection;

    move-object v0, p0

    check-cast v0, Landroid/net/http/HttpsConnection;

    move-object v1, v0

    .line 516
    .local v1, connection:Landroid/net/http/HttpsConnection;
    if-eqz v1, :cond_d

    .line 517
    invoke-virtual {v1, p1}, Landroid/net/http/HttpsConnection;->restartConnection(Z)V

    .line 519
    :cond_d
    return-void
.end method

.method readResponse(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 27
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/apache/http/ParseException;
        }
    .end annotation

    .prologue
    .line 248
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mCancelled:Z

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 362
    :goto_8
    return-void

    .line 250
    :cond_9
    const/16 v18, 0x0

    .line 251
    .local v18, statusLine:Lorg/apache/http/StatusLine;
    const/4 v10, 0x0

    .line 252
    .local v10, hasBody:Z
    invoke-virtual/range {p1 .. p1}, Landroid/net/http/AndroidHttpClientConnection;->flush()V

    .line 253
    const/16 v17, 0x0

    .line 255
    .local v17, statusCode:I
    new-instance v11, Landroid/net/http/Headers;

    invoke-direct {v11}, Landroid/net/http/Headers;-><init>()V

    .line 257
    .local v11, header:Landroid/net/http/Headers;
    :cond_16
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->parseResponseHeader(Landroid/net/http/Headers;)Lorg/apache/http/StatusLine;

    move-result-object v18

    .line 258
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v17

    .line 259
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-lt v0, v1, :cond_16

    .line 264
    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v20

    .line 265
    .local v20, v:Lorg/apache/http/ProtocolVersion;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMajor()I

    move-result v22

    invoke-virtual/range {v20 .. v20}, Lorg/apache/http/ProtocolVersion;->getMinor()I

    move-result v23

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getReasonPhrase()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v21

    move/from16 v1, v22

    move/from16 v2, v23

    move/from16 v3, v17

    move-object/from16 v4, v24

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/net/http/EventHandler;->status(IIILjava/lang/String;)V

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-interface {v0, v1}, Landroid/net/http/EventHandler;->headers(Landroid/net/http/Headers;)V

    .line 268
    const/4 v9, 0x0

    .line 269
    .local v9, entity:Lorg/apache/http/HttpEntity;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/net/http/Request;->canResponseHaveBody(Lorg/apache/http/HttpRequest;I)Z

    move-result v10

    .line 271
    if-eqz v10, :cond_70

    .line 272
    move-object/from16 v0, p1

    move-object v1, v11

    invoke-virtual {v0, v1}, Landroid/net/http/AndroidHttpClientConnection;->receiveResponseEntity(Landroid/net/http/Headers;)Lorg/apache/http/HttpEntity;

    move-result-object v9

    .line 276
    :cond_70
    const-string v21, "bytes"

    invoke-virtual {v11}, Landroid/net/http/Headers;->getAcceptRanges()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v19

    .line 279
    .local v19, supportPartialContent:Z
    if-eqz v9, :cond_fa

    .line 280
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v12

    .line 283
    .local v12, is:Ljava/io/InputStream;
    invoke-interface {v9}, Lorg/apache/http/HttpEntity;->getContentEncoding()Lorg/apache/http/Header;

    move-result-object v6

    .line 284
    .local v6, contentEncoding:Lorg/apache/http/Header;
    const/4 v15, 0x0

    .line 285
    .local v15, nis:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 286
    .local v5, buf:[B
    const/4 v7, 0x0

    .line 288
    .local v7, count:I
    if-eqz v6, :cond_120

    :try_start_89
    invoke-interface {v6}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v21

    const-string v22, "gzip"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_120

    .line 290
    new-instance v16, Ljava/util/zip/GZIPInputStream;

    move-object/from16 v0, v16

    move-object v1, v12

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    .end local v15           #nis:Ljava/io/InputStream;
    .local v16, nis:Ljava/io/InputStream;
    move-object/from16 v15, v16

    .line 297
    .end local v16           #nis:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :goto_9f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/http/Connection;->getBuf()[B

    move-result-object v5

    .line 298
    const/4 v13, 0x0

    .line 299
    .local v13, len:I
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    div-int/lit8 v14, v21, 0x2

    .line 300
    .local v14, lowWater:I
    :cond_b0
    :goto_b0
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_164

    .line 301
    monitor-enter p0
    :try_end_b8
    .catchall {:try_start_89 .. :try_end_b8} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_89 .. :try_end_b8} :catch_e3
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_b8} :catch_16a

    .line 302
    :goto_b8
    :try_start_b8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/net/http/Request;->mLoadingPaused:Z

    move/from16 v21, v0
    :try_end_be
    .catchall {:try_start_b8 .. :try_end_be} :catchall_e0

    if-eqz v21, :cond_123

    .line 308
    :try_start_c0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->wait()V
    :try_end_c3
    .catchall {:try_start_c0 .. :try_end_c3} :catchall_e0
    .catch Ljava/lang/InterruptedException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_b8

    .line 309
    :catch_c4
    move-exception v8

    .line 310
    .local v8, e:Ljava/lang/InterruptedException;
    :try_start_c5
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Interrupted exception whilst network thread paused at WebCore\'s request. "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Landroid/net/http/HttpLog;->e(Ljava/lang/String;)V

    goto :goto_b8

    .line 315
    .end local v8           #e:Ljava/lang/InterruptedException;
    :catchall_e0
    move-exception v21

    monitor-exit p0
    :try_end_e2
    .catchall {:try_start_c5 .. :try_end_e2} :catchall_e0

    :try_start_e2
    throw v21
    :try_end_e3
    .catchall {:try_start_e2 .. :try_end_e3} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_e2 .. :try_end_e3} :catch_e3
    .catch Ljava/io/IOException; {:try_start_e2 .. :try_end_e3} :catch_16a

    .line 329
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_e3
    move-exception v21

    move-object/from16 v8, v21

    .line 333
    .local v8, e:Ljava/io/EOFException;
    if-lez v7, :cond_f5

    .line 335
    :try_start_e8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_f5
    .catchall {:try_start_e8 .. :try_end_f5} :catchall_18f

    .line 350
    :cond_f5
    if-eqz v15, :cond_fa

    .line 351
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    .line 355
    .end local v5           #buf:[B
    .end local v6           #contentEncoding:Lorg/apache/http/Header;
    .end local v7           #count:I
    .end local v8           #e:Ljava/io/EOFException;
    .end local v12           #is:Ljava/io/InputStream;
    .end local v15           #nis:Ljava/io/InputStream;
    :cond_fa
    :goto_fa
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    move-object/from16 v21, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getProtocolVersion()Lorg/apache/http/ProtocolVersion;

    move-result-object v22

    invoke-virtual {v11}, Landroid/net/http/Headers;->getConnectionType()I

    move-result v23

    move-object/from16 v0, v21

    move-object v1, v9

    move-object/from16 v2, v22

    move/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/http/Connection;->setCanPersist(Lorg/apache/http/HttpEntity;Lorg/apache/http/ProtocolVersion;I)V

    .line 357
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Landroid/net/http/EventHandler;->endData()V

    .line 358
    invoke-virtual/range {p0 .. p0}, Landroid/net/http/Request;->complete()V

    goto/16 :goto_8

    .line 292
    .restart local v5       #buf:[B
    .restart local v6       #contentEncoding:Lorg/apache/http/Header;
    .restart local v7       #count:I
    .restart local v12       #is:Ljava/io/InputStream;
    .restart local v15       #nis:Ljava/io/InputStream;
    :cond_120
    move-object v15, v12

    goto/16 :goto_9f

    .line 315
    .restart local v13       #len:I
    .restart local v14       #lowWater:I
    :cond_123
    :try_start_123
    monitor-exit p0
    :try_end_124
    .catchall {:try_start_123 .. :try_end_124} :catchall_e0

    .line 317
    :try_start_124
    move-object v0, v5

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, v7

    move-object v0, v15

    move-object v1, v5

    move v2, v7

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v13

    .line 319
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_14b

    .line 320
    add-int/2addr v7, v13

    .line 321
    if-eqz v19, :cond_14b

    move-object/from16 v0, p0

    iget v0, v0, Landroid/net/http/Request;->mReceivedBytes:I

    move/from16 v21, v0

    add-int v21, v21, v13

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/net/http/Request;->mReceivedBytes:I

    .line 323
    :cond_14b
    const/16 v21, -0x1

    move v0, v13

    move/from16 v1, v21

    if-eq v0, v1, :cond_154

    if-lt v7, v14, :cond_b0

    .line 325
    :cond_154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V
    :try_end_161
    .catchall {:try_start_124 .. :try_end_161} :catchall_18f
    .catch Ljava/io/EOFException; {:try_start_124 .. :try_end_161} :catch_e3
    .catch Ljava/io/IOException; {:try_start_124 .. :try_end_161} :catch_16a

    .line 326
    const/4 v7, 0x0

    goto/16 :goto_b0

    .line 350
    :cond_164
    if-eqz v15, :cond_fa

    .line 351
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto :goto_fa

    .line 338
    .end local v13           #len:I
    .end local v14           #lowWater:I
    :catch_16a
    move-exception v21

    move-object/from16 v8, v21

    .line 340
    .local v8, e:Ljava/io/IOException;
    const/16 v21, 0xc8

    move/from16 v0, v17

    move/from16 v1, v21

    if-eq v0, v1, :cond_17d

    const/16 v21, 0xce

    move/from16 v0, v17

    move/from16 v1, v21

    if-ne v0, v1, :cond_196

    .line 342
    :cond_17d
    if-eqz v19, :cond_18e

    if-lez v7, :cond_18e

    .line 345
    :try_start_181
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/http/Request;->mEventHandler:Landroid/net/http/EventHandler;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object v1, v5

    move v2, v7

    invoke-interface {v0, v1, v2}, Landroid/net/http/EventHandler;->data([BI)V

    .line 347
    :cond_18e
    throw v8
    :try_end_18f
    .catchall {:try_start_181 .. :try_end_18f} :catchall_18f

    .line 350
    .end local v8           #e:Ljava/io/IOException;
    :catchall_18f
    move-exception v21

    if-eqz v15, :cond_195

    .line 351
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    :cond_195
    throw v21

    .line 350
    .restart local v8       #e:Ljava/io/IOException;
    :cond_196
    if-eqz v15, :cond_fa

    .line 351
    invoke-virtual {v15}, Ljava/io/InputStream;->close()V

    goto/16 :goto_fa
.end method

.method reset()V
    .registers 5

    .prologue
    .line 421
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "content-length"

    invoke-virtual {v0, v1}, Lorg/apache/http/message/BasicHttpRequest;->removeHeaders(Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    if-eqz v0, :cond_17

    .line 425
    :try_start_b
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_10} :catch_59

    .line 431
    :goto_10
    iget-object v0, p0, Landroid/net/http/Request;->mBodyProvider:Ljava/io/InputStream;

    iget v1, p0, Landroid/net/http/Request;->mBodyLength:I

    invoke-direct {p0, v0, v1}, Landroid/net/http/Request;->setBodyProvider(Ljava/io/InputStream;I)V

    .line 434
    :cond_17
    iget v0, p0, Landroid/net/http/Request;->mReceivedBytes:I

    if-lez v0, :cond_58

    .line 436
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/http/Request;->mFailCount:I

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "*** Request.reset() to range:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/http/HttpLog;->v(Ljava/lang/String;)V

    .line 440
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    const-string v1, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/net/http/Request;->mReceivedBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/message/BasicHttpRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_58
    return-void

    .line 426
    :catch_59
    move-exception v0

    goto :goto_10
.end method

.method sendRequest(Landroid/net/http/AndroidHttpClientConnection;)V
    .registers 5
    .parameter "httpClientConnection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/HttpException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 212
    iget-boolean v0, p0, Landroid/net/http/Request;->mCancelled:Z

    if-eqz v0, :cond_5

    .line 237
    .end local p0
    :cond_4
    :goto_4
    return-void

    .line 226
    .restart local p0
    :cond_5
    sget-object v0, Landroid/net/http/Request;->requestContentProcessor:Lorg/apache/http/protocol/RequestContent;

    iget-object v1, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    iget-object v2, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    invoke-virtual {v2}, Landroid/net/http/Connection;->getHttpContext()Lorg/apache/http/protocol/HttpContext;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/RequestContent;->process(Lorg/apache/http/HttpRequest;Lorg/apache/http/protocol/HttpContext;)V

    .line 228
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    invoke-virtual {p1, v0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestHeader(Lorg/apache/http/HttpRequest;)V

    .line 229
    iget-object v0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    instance-of v0, v0, Lorg/apache/http/HttpEntityEnclosingRequest;

    if-eqz v0, :cond_4

    .line 230
    iget-object p0, p0, Landroid/net/http/Request;->mHttpRequest:Lorg/apache/http/message/BasicHttpRequest;

    .end local p0
    check-cast p0, Lorg/apache/http/HttpEntityEnclosingRequest;

    invoke-virtual {p1, p0}, Landroid/net/http/AndroidHttpClientConnection;->sendRequestEntity(Lorg/apache/http/HttpEntityEnclosingRequest;)V

    goto :goto_4
.end method

.method setConnection(Landroid/net/http/Connection;)V
    .registers 2
    .parameter "connection"

    .prologue
    .line 162
    iput-object p1, p0, Landroid/net/http/Request;->mConnection:Landroid/net/http/Connection;

    .line 163
    return-void
.end method

.method declared-synchronized setLoadingPaused(Z)V
    .registers 3
    .parameter "pause"

    .prologue
    .line 150
    monitor-enter p0

    :try_start_1
    iput-boolean p1, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    .line 153
    iget-boolean v0, p0, Landroid/net/http/Request;->mLoadingPaused:Z

    if-nez v0, :cond_a

    .line 154
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 156
    :cond_a
    monitor-exit p0

    return-void

    .line 150
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 411
    iget-object v0, p0, Landroid/net/http/Request;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method waitUntilComplete()V
    .registers 3

    .prologue
    .line 449
    iget-object v0, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    monitor-enter v0

    .line 452
    :try_start_3
    iget-object v1, p0, Landroid/net/http/Request;->mClientResource:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_8} :catch_d

    .line 456
    :goto_8
    :try_start_8
    monitor-exit v0

    .line 457
    return-void

    .line 456
    :catchall_a
    move-exception v1

    monitor-exit v0
    :try_end_c
    .catchall {:try_start_8 .. :try_end_c} :catchall_a

    throw v1

    .line 454
    :catch_d
    move-exception v1

    goto :goto_8
.end method
