.class Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;
.super Ljava/lang/Object;
.source "HttpServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

.field final synthetic val$socket:Ljava/net/Socket;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;Ljava/net/Socket;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;->this$0:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    iput-object p2, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;->val$socket:Ljava/net/Socket;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 253
    new-instance v0, Lorg/apache/http/impl/DefaultHttpServerConnection;

    invoke-direct {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 255
    :try_start_0
    iget-object v3, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;->val$socket:Ljava/net/Socket;

    new-instance v4, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v4}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    invoke-virtual {v0, v3, v4}, Lorg/apache/http/impl/DefaultHttpServerConnection;->bind(Ljava/net/Socket;Lorg/apache/http/params/HttpParams;)V

    .line 256
    iget-object v3, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;->this$0:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    invoke-static {v3}, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->access$100(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;)Lorg/apache/http/protocol/HttpService;

    move-result-object v3

    iget-object v4, p0, Lcom/sonyericsson/music/http/HttpServer$AcceptThread$1;->this$0:Lcom/sonyericsson/music/http/HttpServer$AcceptThread;

    invoke-static {v4}, Lcom/sonyericsson/music/http/HttpServer$AcceptThread;->access$000(Lcom/sonyericsson/music/http/HttpServer$AcceptThread;)Lorg/apache/http/protocol/BasicHttpContext;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Lorg/apache/http/protocol/HttpService;->handleRequest(Lorg/apache/http/HttpServerConnection;Lorg/apache/http/protocol/HttpContext;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lorg/apache/http/HttpException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    :try_start_1
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 277
    :goto_1
    :try_start_2
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_5

    :catchall_0
    move-exception v3

    .line 268
    :try_start_3
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    :catch_1
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_0

    .line 277
    :try_start_4
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->shutdown()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 284
    :catch_2
    :cond_0
    throw v3

    .line 268
    :catch_3
    :try_start_5
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    const/4 v1, 0x0

    :goto_3
    if-nez v1, :cond_1

    goto :goto_1

    :catch_5
    :try_start_6
    invoke-virtual {v0}, Lorg/apache/http/impl/DefaultHttpServerConnection;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    goto :goto_4

    :catch_6
    const/4 v1, 0x0

    :goto_4
    if-nez v1, :cond_1

    goto :goto_1

    :catch_7
    :cond_1
    :goto_5
    return-void
.end method
