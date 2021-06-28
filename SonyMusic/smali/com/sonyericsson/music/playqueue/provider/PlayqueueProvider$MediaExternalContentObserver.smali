.class final Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;
.super Landroid/database/ContentObserver;
.source "PlayqueueProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MediaExternalContentObserver"
.end annotation


# static fields
.field private static final CONSECUTIVE_CALLS_LIMIT:J = 0xaL

.field private static final POST_DELAY_MS:J = 0x12cL


# instance fields
.field private mNbrOfCalls:I

.field private mStart:J

.field final synthetic this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;


# direct methods
.method public constructor <init>(Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;)V
    .locals 2

    .line 337
    iput-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    const/4 p1, 0x0

    .line 338
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-wide/16 v0, 0x0

    .line 334
    iput-wide v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->mStart:J

    const/4 p1, 0x0

    .line 335
    iput p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->mNbrOfCalls:I

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    .line 352
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 356
    iget p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->mNbrOfCalls:I

    const/4 v2, 0x1

    add-int/2addr p1, v2

    iput p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->mNbrOfCalls:I

    int-to-long v3, p1

    const-wide/16 v5, 0xa

    rem-long/2addr v3, v5

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    .line 359
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 360
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 362
    :cond_1
    iget-object p1, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object p1, p1, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 363
    iget-object v0, p0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$MediaExternalContentObserver;->this$0:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;

    iget-object v0, v0, Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider;->mSyncHandler:Lcom/sonyericsson/music/playqueue/provider/PlayqueueProvider$PlayQueueProviderHandler;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    :goto_1
    return-void
.end method
