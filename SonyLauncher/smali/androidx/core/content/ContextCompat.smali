.class public Landroidx/core/content/ContextCompat;
.super Ljava/lang/Object;
.source "ContextCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/core/content/ContextCompat$Api33Impl;,
        Landroidx/core/content/ContextCompat$Api30Impl;,
        Landroidx/core/content/ContextCompat$Api28Impl;,
        Landroidx/core/content/ContextCompat$Api26Impl;,
        Landroidx/core/content/ContextCompat$Api24Impl;,
        Landroidx/core/content/ContextCompat$Api23Impl;,
        Landroidx/core/content/ContextCompat$Api21Impl;,
        Landroidx/core/content/ContextCompat$Api19Impl;,
        Landroidx/core/content/ContextCompat$Api16Impl;,
        Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;,
        Landroidx/core/content/ContextCompat$RegisterReceiverFlags;
    }
.end annotation


# static fields
.field private static final DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION_SUFFIX:Ljava/lang/String; = ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

.field public static final RECEIVER_EXPORTED:I = 0x2

.field public static final RECEIVER_NOT_EXPORTED:I = 0x4

.field public static final RECEIVER_VISIBLE_TO_INSTANT_APPS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ContextCompat"

.field private static final sLock:Ljava/lang/Object;

.field private static final sSync:Ljava/lang/Object;

.field private static sTempValue:Landroid/util/TypedValue;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 170
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    return-void
.end method

.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "permission"    # Ljava/lang/String;

    .line 591
    const-string v0, "permission must be non-null"

    invoke-static {p1, v0}, Landroidx/core/util/ObjectsCompat;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 592
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_1

    .line 593
    const-string v0, "android.permission.POST_NOTIFICATIONS"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 594
    invoke-static {p0}, Landroidx/core/app/NotificationManagerCompat;->from(Landroid/content/Context;)Landroidx/core/app/NotificationManagerCompat;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/core/app/NotificationManagerCompat;->areNotificationsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 595
    const/4 v0, 0x0

    goto :goto_0

    .line 596
    :cond_0
    const/4 v0, -0x1

    .line 594
    :goto_0
    return v0

    .line 598
    :cond_1
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 701
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 702
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->createDeviceProtectedStorageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    return-object v0

    .line 704
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static createFilesDir(Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p0, "file"    # Ljava/io/File;

    .line 654
    sget-object v0, Landroidx/core/content/ContextCompat;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 655
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 656
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 657
    monitor-exit v0

    return-object p0

    .line 661
    :cond_0
    const-string v1, "ContextCompat"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to create files subdir "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    :cond_1
    monitor-exit v0

    return-object p0

    .line 665
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getAttributionTag(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 194
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_0

    .line 195
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api30Impl;->getAttributionTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 198
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 641
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 642
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getCodeCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 645
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "code_cache"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getColor(Landroid/content/Context;I)I
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 575
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 576
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getColor(Landroid/content/Context;I)I

    move-result v0

    return v0

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    return v0
.end method

.method public static getColorStateList(Landroid/content/Context;I)Landroid/content/res/ColorStateList;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 556
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroidx/core/content/res/ResourcesCompat;->getColorStateList(Landroid/content/res/Resources;ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method

.method public static getDataDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 339
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 340
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->getDataDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 343
    .local v0, "dataDir":Ljava/lang/String;
    if-eqz v0, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "id"    # I

    .line 519
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 520
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api21Impl;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 521
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1

    .line 522
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 529
    :cond_1
    sget-object v0, Landroidx/core/content/ContextCompat;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 530
    :try_start_0
    sget-object v1, Landroidx/core/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    if-nez v1, :cond_2

    .line 531
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    sput-object v1, Landroidx/core/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    .line 533
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget-object v2, Landroidx/core/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    const/4 v3, 0x1

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 534
    sget-object v1, Landroidx/core/content/ContextCompat;->sTempValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->resourceId:I

    .line 535
    .local v1, "resolvedId":I
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 536
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 535
    .end local v1    # "resolvedId":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public static getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 498
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 499
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api19Impl;->getExternalCacheDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 501
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "type"    # Ljava/lang/String;

    .line 445
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 446
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api19Impl;->getExternalFilesDirs(Landroid/content/Context;Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 448
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 729
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    .line 730
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api28Impl;->getMainExecutor(Landroid/content/Context;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0

    .line 732
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0}, Landroidx/core/os/ExecutorCompat;->create(Landroid/os/Handler;)Ljava/util/concurrent/Executor;

    move-result-object v0

    return-object v0
.end method

.method public static getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 616
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 617
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api21Impl;->getNoBackupFilesDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 619
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 620
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    new-instance v1, Ljava/io/File;

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const-string v3, "no_backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroidx/core/content/ContextCompat;->createFilesDir(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    return-object v1
.end method

.method public static getObbDirs(Landroid/content/Context;)[Ljava/io/File;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 392
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 393
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api19Impl;->getObbDirs(Landroid/content/Context;)[Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 395
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/io/File;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getObbDir()Ljava/io/File;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 764
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 765
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 768
    :cond_0
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat;->getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    .line 769
    .local v0, "serviceName":Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 865
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 866
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api23Impl;->getSystemServiceName(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 868
    :cond_0
    sget-object v0, Landroidx/core/content/ContextCompat$LegacyServiceMapHolder;->SERVICES:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static isDeviceProtectedStorage(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .line 715
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 716
    invoke-static {p0}, Landroidx/core/content/ContextCompat$Api24Impl;->isDeviceProtectedStorage(Landroid/content/Context;)Z

    move-result v0

    return v0

    .line 718
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static obtainAndCheckReceiverPermission(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .param p0, "obj"    # Landroid/content/Context;

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 881
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".DYNAMIC_RECEIVER_NOT_EXPORTED_PERMISSION"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 882
    .local v0, "permission":Ljava/lang/String;
    invoke-static {p0, v0}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_0

    .line 887
    return-object v0

    .line 884
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is required by your application to receive broadcasts, please add it to your manifest"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "flags"    # I

    .line 790
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "receiver"    # Landroid/content/BroadcastReceiver;
    .param p2, "filter"    # Landroid/content/IntentFilter;
    .param p3, "broadcastPermission"    # Ljava/lang/String;
    .param p4, "scheduler"    # Landroid/os/Handler;
    .param p5, "flags"    # I

    .line 818
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_1

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_0

    goto :goto_0

    .line 820
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify both RECEIVER_VISIBLE_TO_INSTANT_APPS and RECEIVER_NOT_EXPORTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 824
    :cond_1
    :goto_0
    and-int/lit8 v0, p5, 0x1

    if-eqz v0, :cond_2

    .line 825
    or-int/lit8 p5, p5, 0x2

    .line 828
    :cond_2
    and-int/lit8 v0, p5, 0x2

    if-nez v0, :cond_4

    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_3

    goto :goto_1

    .line 829
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "One of either RECEIVER_EXPORTED or RECEIVER_NOT_EXPORTED is required"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :cond_4
    :goto_1
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_6

    and-int/lit8 v0, p5, 0x4

    if-nez v0, :cond_5

    goto :goto_2

    .line 834
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot specify both RECEIVER_EXPORTED and RECEIVER_NOT_EXPORTED"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 838
    :cond_6
    :goto_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-lt v0, v1, :cond_7

    .line 839
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat$Api33Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 842
    :cond_7
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_8

    .line 843
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Landroidx/core/content/ContextCompat$Api26Impl;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 846
    :cond_8
    and-int/lit8 v0, p5, 0x4

    if-eqz v0, :cond_9

    if-nez p3, :cond_9

    .line 847
    invoke-static {p0}, Landroidx/core/content/ContextCompat;->obtainAndCheckReceiverPermission(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 848
    .local v0, "permission":Ljava/lang/String;
    invoke-virtual {p0, p1, p2, v0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v1

    return-object v1

    .line 850
    .end local v0    # "permission":Ljava/lang/String;
    :cond_9
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;

    .line 256
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroidx/core/content/ContextCompat;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v0

    return v0
.end method

.method public static startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intents"    # [Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 288
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 289
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivities(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 291
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivities([Landroid/content/Intent;)V

    .line 293
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 315
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 316
    invoke-static {p0, p1, p2}, Landroidx/core/content/ContextCompat$Api16Impl;->startActivity(Landroid/content/Context;Landroid/content/Intent;Landroid/os/Bundle;)V

    goto :goto_0

    .line 318
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 320
    :goto_0
    return-void
.end method

.method public static startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 745
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 746
    invoke-static {p0, p1}, Landroidx/core/content/ContextCompat$Api26Impl;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 749
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 751
    :goto_0
    return-void
.end method
