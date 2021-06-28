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

    .line 3425
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3426
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    return-void
.end method

.method public static createMusicInfoSyncHandler(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;
    .locals 3

    .line 3418
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MusicInfoProvider:SyncHandler"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 3420
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 3421
    new-instance v1, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, v0, p0}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;-><init>(Landroid/os/Looper;Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    return-object v1
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 3432
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 3447
    :pswitch_0
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->access$000(Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;)V

    goto :goto_0

    .line 3443
    :pswitch_1
    iget-object p1, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncHighResMedia()V

    goto :goto_0

    .line 3436
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 3437
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider$MusicInfoSyncHandler;->mMusicInfoprovider:Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;

    invoke-virtual {v0, p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoProvider;->syncPlaylistsWithMediaStore(Landroid/os/Bundle;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
