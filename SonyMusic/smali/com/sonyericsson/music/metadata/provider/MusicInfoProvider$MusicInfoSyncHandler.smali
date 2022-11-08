.class Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;
.super Landroid/os/Handler;
.source "MusicInfoProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicInfoSyncHandler"
.end annotation


# static fields
.field static final MSG_SYNC_HIGH_RES_MEDIA:I = 0x3

.field static final MSG_SYNC_HIGH_RES_MEDIA_FORCED:I = 0x4

.field static final MSG_SYNC_MEDIASTORE_AUDIO_DATA:I = 0x5

.field static final MSG_SYNC_PLAYLISTS_WITH_MEDIASTORE:I = 0x1

.field static final MSG_SYNC_PLAYLISTS_WITH_MEDIASTORE_FORCED:I = 0x2


# instance fields
.field private final mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V
    .locals 0

    .line 5429
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 5430
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    return-void
.end method

.method public static createMusicInfoSyncHandler(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;
    .locals 3

    .line 5422
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicInfoProvider:SyncHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 5424
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 5425
    new-instance v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;-><init>(Landroid/os/Looper;Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 5436
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x12c

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    const-string v0, "mounted"

    .line 5489
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5490
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->access$100(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    goto/16 :goto_1

    .line 5492
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5495
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5496
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5470
    :pswitch_1
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_2

    const-string v0, "mounted"

    .line 5471
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 5474
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 5477
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 5478
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5472
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncHighResMedia()V

    goto :goto_1

    .line 5445
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    .line 5446
    sget-boolean v3, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v3, :cond_4

    const-string v3, "mounted"

    .line 5447
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 5448
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-static {p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->access$000(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;Landroid/os/Bundle;)V

    goto :goto_1

    .line 5450
    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_5

    .line 5453
    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 5454
    invoke-virtual {p0, p1, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    .line 5458
    :cond_4
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {p1, v0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncPlaylistsWithMediaStore(Landroid/os/Bundle;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
