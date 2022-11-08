.class Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;
.super Ljava/lang/Object;
.source "MusicInfoWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/music/metadata/MusicInfoWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MusicInfoWorkRunner"
.end annotation


# instance fields
.field private final mAction:Ljava/lang/String;

.field private final mBundle:Landroid/os/Bundle;

.field private final mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 134
    invoke-direct {p0, p1, p2, v0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    iput-object p1, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mAction:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mBundle:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Lcom/sonyericsson/music/metadata/MusicInfoWorker$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/sonyericsson/music/metadata/MusicInfoWorker$1;)V
    .locals 0

    .line 128
    invoke-direct {p0, p1, p2}, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 149
    iget-object v0, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mAction:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 150
    iget-object v1, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mContext:Landroid/content/Context;

    const/4 v2, -0x1

    .line 152
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x646c5d8b

    if-eq v3, v4, :cond_2

    const v4, -0x20f8844c

    if-eq v3, v4, :cond_1

    const v4, 0x4df345e0    # 5.10180352E8f

    if-eq v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string v3, "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x2

    goto :goto_0

    :cond_1
    const-string v3, "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const-string v3, "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 164
    :pswitch_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "content://com.sonyericsson.music.musicinfo/"

    .line 165
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sync_mediastore_data"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    .line 160
    :pswitch_1
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sync"

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_1

    .line 154
    :pswitch_2
    invoke-static {v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 155
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v2

    const-string v3, "sync_playlists"

    iget-object v4, p0, Lcom/sonyericsson/music/metadata/MusicInfoWorker$MusicInfoWorkRunner;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_4
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
