.class Lcom/sonyericsson/music/proxyservice/ServiceStubV3;
.super Lcom/sonyericsson/music/IPlayback_v3$Stub;
.source "ServiceStubV3.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Lcom/sonyericsson/music/IPlayback_v3$Stub;-><init>()V

    .line 25
    new-instance v0, Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-direct {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/ServiceStub;-><init>(Landroid/content/Context;Lcom/sonyericsson/music/proxyservice/ServiceStubHandler;)V

    iput-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    .line 26
    iput-object p1, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    return-void
.end method

.method private hasCallingProcessPermission(Landroid/content/Context;)Z
    .locals 3

    .line 165
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 167
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 169
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    array-length v2, v0

    if-lez v2, :cond_0

    .line 171
    aget-object v0, v0, v1

    invoke-static {p1, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isMusicServicePermissionGrantedForProcess(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    return v1
.end method


# virtual methods
.method public destroyArtDecoder()V
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->destroyArtDecoder()V

    return-void
.end method

.method public getAlbumArtForPosition(II)Landroid/graphics/Bitmap;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAlbumArtForPosition(II)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getAlbumId()I
    .locals 2

    .line 41
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAlbumId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getAlbumName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getArtistId()I
    .locals 2

    .line 55
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getArtistId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getArtistName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getDuration()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPluginIcon()Landroid/graphics/Bitmap;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPosition()J
    .locals 2

    .line 87
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getPosition()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getQueuePosition()I
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getQueuePosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getTrackId()I
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getTrackId()J

    move-result-wide v0

    long-to-int v1, v0

    return v1

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->getTrackName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isInPlayqueueMode()Z
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->isInPlayqueueMode()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->isPlaying()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public next()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->next()V

    :cond_0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->pause()V

    :cond_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 141
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->play()V

    :cond_0
    return-void
.end method

.method public prev()V
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->prev()V

    :cond_0
    return-void
.end method

.method public setQueuePosition(IZ)V
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0, p1, p2}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->setQueuePosition(IZ)V

    :cond_0
    return-void
.end method

.method public shuffleNext()V
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->hasCallingProcessPermission(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/sonyericsson/music/proxyservice/ServiceStubV3;->mServiceStub:Lcom/sonyericsson/music/proxyservice/ServiceStub;

    invoke-virtual {v0}, Lcom/sonyericsson/music/proxyservice/ServiceStub;->shuffleNext()V

    :cond_0
    return-void
.end method
