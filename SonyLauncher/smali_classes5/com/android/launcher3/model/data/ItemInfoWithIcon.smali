.class public abstract Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.super Lcom/android/launcher3/model/data/ItemInfo;
.source "ItemInfoWithIcon.java"


# static fields
.field public static final FLAG_ADAPTIVE_ICON:I = 0x100

.field public static final FLAG_DISABLED_BY_PUBLISHER:I = 0x10

.field public static final FLAG_DISABLED_LOCKED_USER:I = 0x20

.field public static final FLAG_DISABLED_MASK:I = 0x103f

.field public static final FLAG_DISABLED_NOT_AVAILABLE:I = 0x2

.field public static final FLAG_DISABLED_QUIET_USER:I = 0x8

.field public static final FLAG_DISABLED_SAFEMODE:I = 0x1

.field public static final FLAG_DISABLED_SUSPENDED:I = 0x4

.field public static final FLAG_DISABLED_VERSION_LOWER:I = 0x1000

.field public static final FLAG_ICON_BADGED:I = 0x200

.field public static final FLAG_INCREMENTAL_DOWNLOAD_ACTIVE:I = 0x800

.field public static final FLAG_INSTALL_SESSION_ACTIVE:I = 0x400

.field public static final FLAG_SHOW_DOWNLOAD_PROGRESS_MASK:I = 0xc00

.field public static final FLAG_SYSTEM_MASK:I = 0xc0

.field public static final FLAG_SYSTEM_NO:I = 0x80

.field public static final FLAG_SYSTEM_YES:I = 0x40

.field public static final TAG:Ljava/lang/String; = "ItemInfoDebug"


# instance fields
.field public bitmap:Lcom/android/launcher3/icons/BitmapInfo;

.field private mProgressLevel:I

.field public runtimeStatusFlags:I


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Lcom/android/launcher3/model/data/ItemInfo;-><init>()V

    .line 42
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 134
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 136
    return-void
.end method

.method protected constructor <init>(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)V
    .locals 1
    .param p1, "info"    # Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    .line 139
    invoke-direct {p0, p1}, Lcom/android/launcher3/model/data/ItemInfo;-><init>(Lcom/android/launcher3/model/data/ItemInfo;)V

    .line 42
    sget-object v0, Lcom/android/launcher3/icons/BitmapInfo;->LOW_RES_INFO:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 126
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 134
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 140
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    .line 141
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 142
    iget v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 143
    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    iput-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->user:Landroid/os/UserHandle;

    .line 144
    return-void
.end method


# virtual methods
.method public abstract clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->clone()Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    move-result-object v0

    return-object v0
.end method

.method public getMarketIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 223
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 225
    .local v0, "componentName":Landroid/content/ComponentName;
    if-eqz v0, :cond_0

    .line 226
    new-instance v1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {v1, p1}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    .line 227
    :cond_0
    const/4 v1, 0x0

    .line 225
    :goto_0
    return-object v1
.end method

.method public getProgressLevel()I
    .locals 1

    .line 176
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0xc00

    if-eqz v0, :cond_0

    .line 177
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    return v0

    .line 179
    :cond_0
    const/16 v0, 0x64

    return v0
.end method

.method public isAppStartable()Z
    .locals 2

    .line 165
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v0, 0x400

    if-nez v1, :cond_1

    and-int/lit16 v0, v0, 0x800

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    const/16 v1, 0x64

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isDisabled()Z
    .locals 1

    .line 148
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, 0x103f

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public newIcon(Landroid/content/Context;)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 240
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    return-object v0
.end method

.method public newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "creationFlags"    # I

    .line 247
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/icons/BitmapInfo;->newIcon(Landroid/content/Context;I)Lcom/android/launcher3/icons/FastBitmapDrawable;

    move-result-object v0

    .line 248
    .local v0, "drawable":Lcom/android/launcher3/icons/FastBitmapDrawable;
    invoke-virtual {p0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->isDisabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/icons/FastBitmapDrawable;->setIsDisabled(Z)V

    .line 249
    return-object v0
.end method

.method public setProgressLevel(II)V
    .locals 2
    .param p1, "progress"    # I
    .param p2, "status"    # I

    .line 202
    const/16 v0, 0x64

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 203
    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 204
    if-ge p1, v0, :cond_0

    .line 205
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    or-int/lit16 v0, v0, 0x400

    goto :goto_0

    .line 206
    :cond_0
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, -0x401

    :goto_0
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_3

    .line 207
    :cond_1
    const/4 v1, 0x2

    if-ne p2, v1, :cond_3

    .line 208
    iput p1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 209
    iget v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v1, v1, -0x401

    iput v1, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 210
    if-ge p1, v0, :cond_2

    .line 211
    or-int/lit16 v0, v1, 0x800

    goto :goto_1

    .line 212
    :cond_2
    and-int/lit16 v0, v1, -0x801

    :goto_1
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    goto :goto_3

    .line 214
    :cond_3
    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->mProgressLevel:I

    .line 215
    iget v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 216
    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    .line 218
    :goto_3
    return-void
.end method

.method public setProgressLevel(Lcom/android/launcher3/pm/PackageInstallInfo;)V
    .locals 3
    .param p1, "installInfo"    # Lcom/android/launcher3/pm/PackageInstallInfo;

    .line 189
    iget v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->progress:I

    iget v1, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    invoke-virtual {p0, v0, v1}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->setProgressLevel(II)V

    .line 191
    iget v0, p1, Lcom/android/launcher3/pm/PackageInstallInfo;->state:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Icon info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " marked broken with install info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    const-string v2, "ItemInfoDebug"

    invoke-static {v2, v0, v1}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 196
    :cond_0
    return-void
.end method

.method public usingLowResIcon()Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/icons/BitmapInfo;->isLowRes()Z

    move-result v0

    return v0
.end method
