.class public Lcom/sonyericsson/music/NotificationChannels;
.super Ljava/lang/Object;
.source "NotificationChannels.java"


# static fields
.field public static final ID_DOWNLOAD_METADATA:Ljava/lang/String; = "download_metadata"

.field public static final ID_DOWNLOAD_MUSIC:Ljava/lang/String; = "download_music"

.field public static final ID_PLAYBACK:Ljava/lang/String; = "playback"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static create(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 36
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-static {p0}, Lcom/sonyericsson/music/NotificationChannels;->createPlaybackChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    invoke-static {p0}, Lcom/sonyericsson/music/NotificationChannels;->createDownloadMetadataChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    invoke-static {p0}, Lcom/sonyericsson/music/NotificationChannels;->createDownloadMusicChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "notification"

    .line 43
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 45
    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->createNotificationChannels(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method private static createDownloadMetadataChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 79
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "download_metadata"

    const v2, 0x7f10019a

    .line 80
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 82
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    return-object v0
.end method

.method private static createDownloadMusicChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 67
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "download_music"

    const v2, 0x7f10019b

    .line 68
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 70
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    return-object v0
.end method

.method private static createPlaybackChannel(Landroid/content/Context;)Landroid/app/NotificationChannel;
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1a
    .end annotation

    .line 54
    new-instance v0, Landroid/app/NotificationChannel;

    const-string v1, "playback"

    const v2, 0x7f10019c

    .line 55
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 v2, 0x2

    invoke-direct {v0, v1, p0, v2}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p0, 0x0

    .line 57
    invoke-virtual {v0, p0}, Landroid/app/NotificationChannel;->setShowBadge(Z)V

    return-object v0
.end method
