.class public Lcom/sonyericsson/music/common/DrmUtilsImpl;
.super Ljava/lang/Object;
.source "DrmUtilsImpl.java"

# interfaces
.implements Lcom/sonyericsson/music/common/DrmUtils;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrmManager:Landroid/drm/DrmManagerClient;

.field private mRetryHasValidRights:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    .line 46
    iput-object p1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->initDrmUtils()V

    return-void
.end method

.method private initDrmUtils()V
    .locals 2

    .line 51
    new-instance v0, Landroid/drm/DrmManagerClient;

    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/drm/DrmManagerClient;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    return-void
.end method


# virtual methods
.method public canForward(Landroid/net/Uri;)Z
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 145
    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 150
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    if-eqz v1, :cond_1

    .line 156
    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    const/4 v3, 0x0

    invoke-virtual {v1, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    const/4 v3, 0x3

    .line 157
    invoke-virtual {v1, p1, v3}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result p1

    if-eqz p1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    .line 154
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 167
    iget-boolean v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    if-eqz v1, :cond_2

    .line 168
    iput-boolean v2, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    .line 169
    invoke-direct {p0}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->initDrmUtils()V

    .line 170
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->canForward(Landroid/net/Uri;)Z

    move-result p1

    .line 171
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    move v0, p1

    goto :goto_0

    :cond_2
    return v0

    :catch_1
    return v2

    :cond_3
    :goto_0
    return v0
.end method

.method public close()V
    .locals 2

    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->close()V

    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v0}, Landroid/drm/DrmManagerClient;->release()V

    :goto_0
    const/4 v0, 0x0

    .line 121
    iput-object v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    return-void
.end method

.method public hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;
    .locals 4

    .line 56
    sget-object v0, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    if-eqz p1, :cond_3

    .line 58
    invoke-static {p1}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 59
    iget-object v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/sonyericsson/music/common/PermissionUtils;->isReadStoragePermissionGranted(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 60
    sget-object p1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->FILE_ACCESS_PERMISSION_DENIED:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-object p1

    :cond_0
    const/4 v1, 0x1

    .line 64
    :try_start_0
    iget-object v2, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    if-eqz v2, :cond_1

    .line 70
    iget-object v2, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/drm/DrmManagerClient;->canHandle(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 71
    iget-object v2, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mDrmManager:Landroid/drm/DrmManagerClient;

    invoke-virtual {v2, p1, v1}, Landroid/drm/DrmManagerClient;->checkRightsStatus(Landroid/net/Uri;I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    sget-object p1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-object v0, p1

    goto :goto_0

    .line 68
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 81
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    .line 83
    invoke-direct {p0}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->initDrmUtils()V

    .line 84
    invoke-virtual {p0, p1}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v0

    .line 85
    iput-boolean v1, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mRetryHasValidRights:Z

    goto :goto_0

    .line 89
    :cond_2
    sget-object p1, Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;->HAS_NO_DRM_RIGHTS:Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    return-object p1

    :catch_1
    :cond_3
    :goto_0
    return-object v0
.end method

.method public renewRights(Landroid/app/Activity;Landroid/net/Uri;)V
    .locals 2

    if-eqz p2, :cond_0

    .line 99
    invoke-static {p2}, Lcom/sonyericsson/music/metadata/provider/MusicInfoStore;->isMediaStoreUri(Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sonyericsson.drmdialogs.RENEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    .line 102
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.sonyericsson.drmdialogs.EXTRA_FILE_PATH"

    .line 103
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    iget-object p2, p0, Lcom/sonyericsson/music/common/DrmUtilsImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    const/4 v1, 0x0

    .line 106
    invoke-virtual {p2, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 107
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 108
    invoke-virtual {p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public validateDrm(Landroid/app/Activity;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p0, p2}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->hasValidRights(Landroid/net/Uri;)Lcom/sonyericsson/music/common/DrmUtils$RightsCheckResult;

    move-result-object v1

    .line 129
    sget-object v2, Lcom/sonyericsson/music/common/DrmUtilsImpl$1;->$SwitchMap$com$sonyericsson$music$common$DrmUtils$RightsCheckResult:[I

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 134
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/sonyericsson/music/common/DrmUtilsImpl;->renewRights(Landroid/app/Activity;Landroid/net/Uri;)V

    return v0

    :pswitch_1
    const/4 p1, 0x1

    return p1

    :cond_0
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
