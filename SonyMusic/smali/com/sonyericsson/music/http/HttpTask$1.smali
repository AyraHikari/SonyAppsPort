.class Lcom/sonyericsson/music/http/HttpTask$1;
.super Lorg/apache/http/entity/BasicHttpEntity;
.source "HttpTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/music/http/HttpTask;->handle(Lorg/apache/http/HttpRequest;Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/music/http/HttpTask;

.field final synthetic val$file:Ljava/io/File;

.field final synthetic val$fileRange:Lcom/sonyericsson/music/http/ByteRange;

.field final synthetic val$inputStream:Ljava/io/InputStream;

.field final synthetic val$line:Lorg/apache/http/RequestLine;

.field final synthetic val$type:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/http/HttpTask;Ljava/lang/String;Ljava/io/File;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/ByteRange;Ljava/io/InputStream;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/sonyericsson/music/http/HttpTask$1;->this$0:Lcom/sonyericsson/music/http/HttpTask;

    iput-object p2, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$type:Ljava/lang/String;

    iput-object p3, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$file:Ljava/io/File;

    iput-object p4, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$line:Lorg/apache/http/RequestLine;

    iput-object p5, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$fileRange:Lcom/sonyericsson/music/http/ByteRange;

    iput-object p6, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$inputStream:Ljava/io/InputStream;

    invoke-direct {p0}, Lorg/apache/http/entity/BasicHttpEntity;-><init>()V

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "track"

    .line 121
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$file:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 122
    new-instance v1, Lcom/sonyericsson/music/http/RangeFile;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sonyericsson/music/http/RangeFile;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v1}, Lcom/sonyericsson/music/http/RangeFile;->initRead()V

    .line 124
    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$line:Lorg/apache/http/RequestLine;

    iget-object v2, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$fileRange:Lcom/sonyericsson/music/http/ByteRange;

    invoke-static {p1, v0, v1, v2}, Lcom/sonyericsson/music/http/HttpTask;->access$000(Ljava/io/OutputStream;Lorg/apache/http/RequestLine;Lcom/sonyericsson/music/http/RangeFile;Lcom/sonyericsson/music/http/ByteRange;)V

    .line 125
    sget-object p1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    goto :goto_0

    :cond_0
    const-string v0, "album_art"

    .line 128
    iget-object v1, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sonyericsson/music/http/HttpTask$1;->val$inputStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 129
    invoke-static {v0, p1}, Lcom/sonyericsson/music/http/HttpTask;->access$100(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    :cond_1
    :goto_0
    return-void
.end method
