.class public final Lcom/sonyericsson/music/common/PermissionUtils;
.super Ljava/lang/Object;
.source "PermissionUtils.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x17
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/PermissionUtils$BroadcastPriorities;,
        Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;
    }
.end annotation


# static fields
.field public static final BROADCAST_PERMISSION:Ljava/lang/String; = "com.sonyericsson.music.permission.BROADCAST"

.field public static final MUSIC_SERVICE_PERMISSION:Ljava/lang/String; = "com.sonyericsson.permission.MUSICSERVICE"

.field public static final PERMISSION_GROUP:Ljava/lang/String; = "permission-group"

.field public static final READ_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.READ_EXTERNAL_STORAGE"

.field public static final STORAGE_PERMISSION_GROUP:Ljava/lang/String; = "android.permission-group.STORAGE"

.field public static final WRITE_STORAGE_PERMISSION:Ljava/lang/String; = "android.permission.WRITE_EXTERNAL_STORAGE"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPermissionIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "permission-group"

    .line 177
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    .line 178
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 187
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v2, Lcom/sonyericsson/music/common/PermissionUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occured for="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getPermissionLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 195
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "permission-group"

    .line 198
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/16 v2, 0x80

    if-eqz v1, :cond_0

    .line 199
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionGroupInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionGroupInfo;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_0
    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getPermissionInfo(Ljava/lang/String;I)Landroid/content/pm/PermissionInfo;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_1

    .line 205
    invoke-virtual {v1, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 208
    sget-object v1, Lcom/sonyericsson/music/common/Debug;->DEBUG:Lcom/sonyericsson/music/common/Debug;

    const-class v2, Lcom/sonyericsson/music/common/PermissionUtils;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NameNotFoundException occured for="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1, p0}, Lcom/sonymobile/music/debug/DebugBase;->logE(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static isDataAllowed(Landroid/content/Context;)Z
    .locals 1

    .line 87
    new-instance v0, Lcom/sonyericsson/music/common/ServiceProviderChecker;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ServiceProviderChecker;-><init>()V

    .line 88
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataAllowed(Landroid/content/Context;Lcom/sonyericsson/music/common/ServiceProviderChecker;)Z

    move-result p0

    return p0
.end method

.method static isDataAllowed(Landroid/content/Context;Lcom/sonyericsson/music/common/ServiceProviderChecker;)Z
    .locals 3

    .line 97
    invoke-static {p0, p1}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;Lcom/sonyericsson/music/common/ServiceProviderChecker;)Z

    move-result p1

    .line 100
    invoke-static {p0}, Lcom/sonymobile/music/common/ProcessUtils;->isRunningInServiceProcess(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 103
    invoke-static {p0}, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils;->isWifiAndMobileDataAccepted(Landroid/content/Context;)Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    move-result-object p0

    sget-object v0, Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;->ACCEPTED:Lcom/sonymobile/music/common/ServiceProcessPreferenceUtils$WifiAndMobileDataAccepted;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isWifiAndMobileDataAccepted(Landroid/content/Context;)Z

    move-result p0

    :goto_0
    if-eqz p1, :cond_3

    if-eqz p0, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static isDataTrafficWarningRequired(Landroid/content/Context;)Z
    .locals 1

    .line 63
    new-instance v0, Lcom/sonyericsson/music/common/ServiceProviderChecker;

    invoke-direct {v0}, Lcom/sonyericsson/music/common/ServiceProviderChecker;-><init>()V

    .line 64
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;Lcom/sonyericsson/music/common/ServiceProviderChecker;)Z

    move-result p0

    return p0
.end method

.method static isDataTrafficWarningRequired(Landroid/content/Context;Lcom/sonyericsson/music/common/ServiceProviderChecker;)Z
    .locals 1

    .line 75
    invoke-static {p0}, Lcom/sonyericsson/music/common/AvailabilityUtils;->isCtaPackageInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    .line 81
    invoke-virtual {p1}, Lcom/sonyericsson/music/common/ServiceProviderChecker;->isChineseServiceProvider()Z

    move-result v0

    :cond_1
    return v0
.end method

.method public static isMusicServicePermissionGrantedForProcess(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .locals 2

    .line 142
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const-string v0, "com.sonyericsson.permission.MUSICSERVICE"

    .line 143
    invoke-static {p0, p1, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGrantedForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 129
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isPermissionGrantedForPackage(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 152
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    return v1
.end method

.method public static isReadStoragePermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 133
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWriteStoragePermissionGranted(Landroid/content/Context;)Z
    .locals 1

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 137
    invoke-static {p0, v0}, Lcom/sonyericsson/music/common/PermissionUtils;->isPermissionGranted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static needsAcceptanceFromUser(Landroid/content/Context;)Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;
    .locals 1

    .line 112
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    if-eqz p0, :cond_2

    .line 115
    invoke-static {p0}, Lcom/sonyericsson/music/common/ActivityProcessPreferenceUtils;->isCtaDialogShown(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 116
    invoke-static {p0}, Lcom/sonyericsson/music/common/PermissionUtils;->isDataTrafficWarningRequired(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 117
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->SHOW_CTA_DIALOG:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    goto :goto_0

    .line 119
    :cond_0
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_AUTO_ACCEPT:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    goto :goto_0

    .line 122
    :cond_1
    sget-object v0, Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;->CTA_ALREADY_SHOWN:Lcom/sonyericsson/music/common/PermissionUtils$UserAcceptance;

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static parseMusicPermissionMetadata(Ljava/lang/String;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, ""

    const-string v1, ""

    .line 161
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const/16 v2, 0xa

    .line 162
    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v0, 0x0

    .line 164
    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    .line 165
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 169
    :cond_0
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method
