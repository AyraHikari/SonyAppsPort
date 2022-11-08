.class public Lcom/sonyericsson/music/metadata/MusicInfoService;
.super Landroidx/core/app/JobIntentService;
.source "MusicInfoService.java"


# static fields
.field private static final INTENT_ACTION_SYNC_HIGH_RES_MEDIA:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

.field private static final INTENT_ACTION_SYNC_MEDIASTORE_DATA:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

.field private static final INTENT_ACTION_SYNC_PLAYLISTS:Ljava/lang/String; = "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Landroidx/core/app/JobIntentService;-><init>()V

    return-void
.end method

.method private static enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 88
    const-class v0, Lcom/sonyericsson/music/metadata/MusicInfoService;

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, p1}, Landroidx/core/app/JobIntentService;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method

.method public static startHighResContainersSync(Landroid/content/Context;)V
    .locals 2

    .line 67
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_O_API:Z

    if-eqz v0, :cond_0

    .line 68
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startHighResContainersSync(Landroid/content/Context;)V

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/metadata/MusicInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

    .line 72
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 74
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startMediaStoreDataSync(Landroid/content/Context;)V
    .locals 2

    .line 78
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_R_API:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startMediaStoreDataSync(Landroid/content/Context;)V

    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/metadata/MusicInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 84
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method public static startPlaylistSync(Landroid/content/Context;)V
    .locals 1

    .line 42
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_O_API:Z

    if-eqz v0, :cond_0

    .line 43
    invoke-static {p0}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startPlaylistSync(Landroid/content/Context;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 46
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->startPlaylistSync(Landroid/content/Context;I)V

    return-void
.end method

.method public static startPlaylistSync(Landroid/content/Context;I)V
    .locals 2

    .line 50
    sget-boolean v0, Lcom/sonyericsson/music/common/MusicUtils;->SUPPORT_SDK_O_API:Z

    if-eqz v0, :cond_0

    .line 51
    invoke-static {p0, p1}, Lcom/sonyericsson/music/metadata/MusicInfoWorker;->startPlaylistSync(Landroid/content/Context;I)V

    return-void

    .line 55
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/music/metadata/MusicInfoService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

    .line 56
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "delay_art_refresh"

    .line 60
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 63
    invoke-static {p0, v0}, Lcom/sonyericsson/music/metadata/MusicInfoService;->enqueueWork(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onHandleWork(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_2

    .line 95
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 96
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 98
    sget-object v2, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-string v2, "com.sonyericsson.music.musicinfo.SYNC_PLAYLISTS"

    .line 102
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 103
    invoke-static {v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isWriteStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 104
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "delay_art_refresh"

    const-string v4, "delay_art_refresh"

    const/4 v5, 0x0

    .line 106
    invoke-virtual {p1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 105
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 110
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$Playlists;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v2, "sync_playlists"

    invoke-virtual {p1, v0, v2, v3, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_0
    const-string p1, "com.sonyericsson.music.musicinfo.SYNC_HIGH_RES_MEDIA"

    .line 113
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore$HighResMedia;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "sync"

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    goto :goto_0

    :cond_1
    const-string p1, "com.sonyericsson.music.musicinfo.SYNC_MEDIASTORE_DATA"

    .line 116
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 117
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.sonyericsson.music.musicinfo/"

    .line 118
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string v1, "sync_mediastore_data"

    invoke-virtual {p1, v0, v1, v3, v3}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    :cond_2
    :goto_0
    return-void
.end method
