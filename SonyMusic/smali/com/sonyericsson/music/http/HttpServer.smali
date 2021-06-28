.class public Lcom/sonyericsson/music/http/HttpServer;
.super Ljava/lang/Object;
.source "HttpServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/http/HttpServer$AcceptThread;
    }
.end annotation


# static fields
.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final URL_TYPE_ALBUM_ART:Ljava/lang/String; = "album_art"

.field public static final URL_TYPE_TRACK:Ljava/lang/String; = "track"

.field private static sInstance:Lcom/sonyericsson/music/http/HttpServer;


# instance fields
.field private mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

.field private final mHttpService:Lorg/apache/http/protocol/HttpService;

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonyericsson/music/http/HttpServer;->INSTANCE_LOCK:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v8, Lcom/sonyericsson/music/http/HttpServer$1;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/16 v2, 0xa

    const/16 v3, 0xa

    const-wide/16 v4, 0x3e8

    move-object v0, v8

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/sonyericsson/music/http/HttpServer$1;-><init>(Lcom/sonyericsson/music/http/HttpServer;IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V

    iput-object v8, p0, Lcom/sonyericsson/music/http/HttpServer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 96
    new-instance v0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {v0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    .line 97
    new-instance v1, Lorg/apache/http/protocol/BasicHttpContext;

    invoke-direct {v1}, Lorg/apache/http/protocol/BasicHttpContext;-><init>()V

    iput-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    .line 99
    new-instance v1, Lorg/apache/http/protocol/ResponseDate;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseDate;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 100
    new-instance v1, Lorg/apache/http/protocol/ResponseServer;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseServer;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 101
    new-instance v1, Lorg/apache/http/protocol/ResponseContent;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseContent;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 102
    new-instance v1, Lorg/apache/http/protocol/ResponseConnControl;

    invoke-direct {v1}, Lorg/apache/http/protocol/ResponseConnControl;-><init>()V

    invoke-virtual {v0, v1}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    .line 104
    new-instance v1, Lorg/apache/http/protocol/HttpService;

    new-instance v2, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;

    invoke-direct {v2}, Lorg/apache/http/impl/DefaultConnectionReuseStrategy;-><init>()V

    new-instance v3, Lorg/apache/http/impl/DefaultHttpResponseFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/DefaultHttpResponseFactory;-><init>()V

    invoke-direct {v1, v0, v2, v3}, Lorg/apache/http/protocol/HttpService;-><init>(Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/HttpResponseFactory;)V

    iput-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mHttpService:Lorg/apache/http/protocol/HttpService;

    .line 107
    new-instance v0, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;-><init>()V

    const-string v1, "*"

    .line 109
    new-instance v2, Lcom/sonyericsson/music/http/HttpTask;

    invoke-direct {v2, p1}, Lcom/sonyericsson/music/http/HttpTask;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2}, Lorg/apache/http/protocol/HttpRequestHandlerRegistry;->register(Ljava/lang/String;Lorg/apache/http/protocol/HttpRequestHandler;)V

    .line 111
    iget-object p1, p0, Lcom/sonyericsson/music/http/HttpServer;->mHttpService:Lorg/apache/http/protocol/HttpService;

    invoke-virtual {p1, v0}, Lorg/apache/http/protocol/HttpService;->setHandlerResolver(Lorg/apache/http/protocol/HttpRequestHandlerResolver;)V

    return-void
.end method

.method public static getHttpServer(Landroid/content/Context;)Lcom/sonyericsson/music/http/HttpServer;
    .locals 1

    .line 214
    sget-object v0, Lcom/sonyericsson/music/http/HttpServer;->sInstance:Lcom/sonyericsson/music/http/HttpServer;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/sonyericsson/music/http/HttpServer;

    invoke-direct {v0, p0}, Lcom/sonyericsson/music/http/HttpServer;-><init>(Landroid/content/Context;)V

    .line 217
    sput-object v0, Lcom/sonyericsson/music/http/HttpServer;->sInstance:Lcom/sonyericsson/music/http/HttpServer;

    :cond_0
    return-object v0
.end method

.method private getWifiIpAddress()Ljava/net/InetAddress;
    .locals 4

    :try_start_0
    const-string v0, "wlan0"

    .line 172
    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 174
    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 176
    invoke-virtual {v1}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v2

    if-nez v2, :cond_0

    .line 177
    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-static {v2}, Lorg/apache/http/conn/util/InetAddressUtils;->isIPv4Address(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return-object v1

    .line 192
    :catch_0
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to find ip"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    return-void
.end method


# virtual methods
.method public getInetAddress()Ljava/net/InetAddress;
    .locals 2

    .line 196
    sget-object v0, Lcom/sonyericsson/music/http/HttpServer;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 197
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 198
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    const/4 v1, 0x0

    .line 200
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 201
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPort()I
    .locals 2

    .line 205
    sget-object v0, Lcom/sonyericsson/music/http/HttpServer;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    const/4 v1, -0x1

    .line 209
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    .line 210
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public startServer()V
    .locals 6

    .line 118
    sget-object v0, Lcom/sonyericsson/music/http/HttpServer;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 126
    :try_start_0
    new-instance v1, Ljava/net/ServerSocket;

    invoke-direct {p0}, Lcom/sonyericsson/music/http/HttpServer;->getWifiIpAddress()Ljava/net/InetAddress;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 127
    new-instance v1, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    iget-object v2, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    iget-object v3, p0, Lcom/sonyericsson/music/http/HttpServer;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v4, p0, Lcom/sonyericsson/music/http/HttpServer;->mHttpContext:Lorg/apache/http/protocol/BasicHttpContext;

    iget-object v5, p0, Lcom/sonyericsson/music/http/HttpServer;->mHttpService:Lorg/apache/http/protocol/HttpService;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;-><init>(Ljava/net/ServerSocket;Ljava/util/concurrent/ExecutorService;Lorg/apache/http/protocol/BasicHttpContext;Lorg/apache/http/protocol/HttpService;)V

    iput-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    .line 129
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 144
    :catch_0
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopServer()V
    .locals 3

    .line 151
    sget-object v0, Lcom/sonyericsson/music/http/HttpServer;->INSTANCE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 154
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V

    .line 155
    iput-object v2, p0, Lcom/sonyericsson/music/http/HttpServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 157
    :cond_0
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    if-eqz v1, :cond_1

    .line 158
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpServer;->mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 159
    iput-object v2, p0, Lcom/sonyericsson/music/http/HttpServer;->mAcceptThread:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 166
    :catch_0
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
