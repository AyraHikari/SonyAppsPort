.class Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;
.super Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;
.source "ServiceStub.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/proxyservice/ServiceStub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ArtDecoderLister"
.end annotation


# instance fields
.field private final mBitmap:[Landroid/graphics/Bitmap;

.field private final mIdentifier:J

.field private final mLatch:Ljava/util/concurrent/CountDownLatch;

.field private final mPosition:I

.field final synthetic this$0:Lcom/sonyericsson/music/proxyservice/ServiceStub;


# direct methods
.method constructor <init>(Lcom/sonyericsson/music/proxyservice/ServiceStub;JILjava/util/concurrent/CountDownLatch;[Landroid/graphics/Bitmap;)V
    .locals 0

    .line 549
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->this$0:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-direct {p0}, Lcom/sonyericsson/music/artdecoder/ArtDecoder$OnDecodedListener;-><init>()V

    .line 550
    iput-wide p2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mIdentifier:J

    .line 551
    iput p4, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mPosition:I

    .line 552
    iput-object p5, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 553
    iput-object p6, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mBitmap:[Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public onDecoded(Landroid/graphics/Bitmap;)V
    .locals 7

    .line 559
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->this$0:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    monitor-enter v0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->this$0:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    iget-object v1, v1, Lcom/sonyericsson/music/proxyservice/ServiceStub;->mIdentifiers:[J

    iget v2, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mPosition:I

    aget-wide v2, v1, v2

    iget-wide v4, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mIdentifier:J

    const/4 v1, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 561
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 564
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mBitmap:[Landroid/graphics/Bitmap;

    aput-object p1, v0, v1

    .line 565
    iget-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStub$ArtDecoderLister;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    .line 561
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
