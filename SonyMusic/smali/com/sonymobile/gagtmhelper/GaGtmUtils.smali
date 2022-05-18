.class public Lcom/sonymobile/gagtmhelper/GaGtmUtils;
.super Ljava/lang/Object;
.source "GaGtmUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    }
.end annotation


# static fields
.field private static volatile sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

.field private static final sLock:Ljava/lang/Object;

.field private static final sPendingEventsLock:Ljava/lang/Object;


# instance fields
.field private mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

.field private mContainerId:Ljava/lang/String;

.field private volatile mContainerLoaded:Z

.field private mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

.field private mContainerLoadingTimeout:I

.field private mContext:Landroid/content/Context;

.field private mDefaultContainerResourceId:I

.field private mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

.field private mInitCalled:Z

.field private mPendingEvents:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSettingsMode:I

.field private mTagManager:Lcom/google/android/gms/tagmanager/TagManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 130
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 131
    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 152
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 132
    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    const/4 v1, -0x1

    .line 133
    iput v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    const/4 v1, 0x2

    .line 136
    iput v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 138
    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 141
    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    .line 144
    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultHandler:Ljava/lang/Thread$UncaughtExceptionHandler;

    .line 154
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    .line 158
    iput-boolean v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    .line 301
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "GaGtmUtils constructor"

    .line 302
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 46
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)I
    .locals 0

    .line 46
    iget p0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mSettingsMode:I

    return p0
.end method

.method static synthetic access$1000(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->deserializeQueueFromFileAndPushLocked()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->flushDataLayerQueueLocked()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Z
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->isRunningOnXperia()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$402(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;)Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mGaGtmSubscriber:Lcom/sonymobile/gagtmhelper/GaGtmSubscriber;

    return-object p1
.end method

.method static synthetic access$500(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->downloadContainerLocked()V

    return-void
.end method

.method static synthetic access$602(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Lcom/google/android/gms/tagmanager/ContainerHolder;)Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    return-object p1
.end method

.method static synthetic access$700(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushInitDefaultsToDataLayer()V

    return-void
.end method

.method static synthetic access$902(Lcom/sonymobile/gagtmhelper/GaGtmUtils;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    return p1
.end method

.method private deserializeQueueFromFileAndPushLocked()V
    .locals 8

    .line 397
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "deserializeQueueFromFile"

    .line 398
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "GTM_buffered_events"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 404
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 405
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GaGtmHelper"

    const-string v1, "File is empty skip"

    .line 406
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 417
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 416
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 418
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, ""

    .line 423
    :goto_0
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "GaGtmHelper"

    .line 424
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current appVersion="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v1, 0x0

    .line 432
    :try_start_1
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v3, "GTM_buffered_events"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/OptionalDataException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 433
    :try_start_2
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_9
    .catch Ljava/io/OptionalDataException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 437
    :try_start_3
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 438
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "GaGtmHelper"

    .line 439
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read version="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-nez v4, :cond_7

    .line 443
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    .line 446
    check-cast v4, Ljava/lang/String;

    .line 447
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v5, "GaGtmHelper"

    .line 448
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Read bufferedAppVersion="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 453
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    .line 456
    check-cast v0, Ljava/util/LinkedList;

    move-object v1, v0

    goto :goto_1

    .line 458
    :cond_6
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GaGtmHelper"

    const-string v4, "Bad app version. Skip"

    .line 459
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 463
    :cond_7
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "GaGtmHelper"

    const-string v4, "Bad format version. Skip"

    .line 464
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/OptionalDataException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 486
    :cond_8
    :goto_1
    :try_start_4
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    if-eqz v2, :cond_11

    .line 493
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_12

    goto/16 :goto_b

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto/16 :goto_7

    :catch_5
    move-exception v0

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    move-object v3, v1

    goto/16 :goto_d

    :catch_6
    move-exception v0

    move-object v3, v1

    goto :goto_3

    :catch_7
    move-exception v0

    move-object v3, v1

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v3, v1

    goto/16 :goto_7

    :catch_9
    move-exception v0

    move-object v3, v1

    goto/16 :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    goto/16 :goto_d

    :catch_a
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 480
    :goto_3
    :try_start_6
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "GaGtmHelper"

    .line 481
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ClassNotFoundException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :cond_9
    if-eqz v3, :cond_a

    .line 486
    :try_start_7
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_b

    goto :goto_4

    :catch_b
    nop

    :cond_a
    :goto_4
    if-eqz v2, :cond_11

    goto :goto_2

    :catch_c
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 476
    :goto_5
    :try_start_8
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "GaGtmHelper"

    .line 477
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "IOException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :cond_b
    if-eqz v3, :cond_c

    .line 486
    :try_start_9
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_d

    goto :goto_6

    :catch_d
    nop

    :cond_c
    :goto_6
    if-eqz v2, :cond_11

    goto :goto_2

    :catch_e
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 472
    :goto_7
    :try_start_a
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v4, "GaGtmHelper"

    .line 473
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "OptionalDataException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/OptionalDataException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    :cond_d
    if-eqz v3, :cond_e

    .line 486
    :try_start_b
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_f

    goto :goto_8

    :catch_f
    nop

    :cond_e
    :goto_8
    if-eqz v2, :cond_11

    goto/16 :goto_2

    :catch_10
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    .line 468
    :goto_9
    :try_start_c
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_f

    const-string v4, "GaGtmHelper"

    .line 469
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FileNotFoundException="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :cond_f
    if-eqz v3, :cond_10

    .line 486
    :try_start_d
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_11

    goto :goto_a

    :catch_11
    nop

    :cond_10
    :goto_a
    if-eqz v2, :cond_11

    goto/16 :goto_2

    .line 500
    :catch_12
    :cond_11
    :goto_b
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v2, "GTM_buffered_events"

    invoke-virtual {v0, v2}, Landroid/content/Context;->deleteFile(Ljava/lang/String;)Z

    move-result v0

    .line 501
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_12

    const-string v2, "GaGtmHelper"

    .line 502
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer file deleted="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    if-nez v1, :cond_13

    return-void

    .line 510
    :cond_13
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_14

    const-string v0, "GaGtmHelper"

    const-string v2, "Push buffered events"

    .line 511
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_14
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    .line 514
    sget-object v4, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v4

    .line 516
    :goto_c
    :try_start_e
    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_16

    .line 517
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v3, "GaGtmHelper"

    .line 518
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "item="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    :cond_15
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_c

    .line 522
    :cond_16
    monitor-exit v4

    return-void

    :catchall_2
    move-exception v0

    monitor-exit v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    throw v0

    :catchall_3
    move-exception v0

    :goto_d
    if-eqz v3, :cond_17

    .line 486
    :try_start_f
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_13

    goto :goto_e

    :catch_13
    nop

    :cond_17
    :goto_e
    if-eqz v2, :cond_18

    .line 493
    :try_start_10
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_14

    .line 495
    :catch_14
    :cond_18
    throw v0

    return-void
.end method

.method private downloadContainerLocked()V
    .locals 5

    .line 545
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "downloadContainerLocked"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 548
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/tagmanager/TagManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    .line 549
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 550
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/tagmanager/TagManager;->loadContainerPreferFresh(Ljava/lang/String;I)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v0

    .line 551
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;

    invoke-direct {v1, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$2;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    iget v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    int-to-long v2, v2

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/google/android/gms/common/api/PendingResult;->setResultCallback(Lcom/google/android/gms/common/api/ResultCallback;JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method private flushDataLayerQueueLocked()V
    .locals 6

    .line 628
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "flushDataLayerQueueLocked"

    .line 629
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v0

    .line 634
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 635
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_2

    .line 636
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "GaGtmHelper"

    .line 637
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "item="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_1
    invoke-virtual {v0, v2}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    goto :goto_0

    .line 641
    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    return-void
.end method

.method public static getInstance()Lcom/sonymobile/gagtmhelper/GaGtmUtils;
    .locals 2

    .line 530
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v0, :cond_1

    .line 531
    const-class v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    monitor-enter v0

    .line 532
    :try_start_0
    sget-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    if-nez v1, :cond_0

    .line 533
    new-instance v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    invoke-direct {v1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;-><init>()V

    sput-object v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    .line 535
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 538
    :cond_1
    :goto_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sInstance:Lcom/sonymobile/gagtmhelper/GaGtmUtils;

    return-object v0
.end method

.method private isRunningOnXperia()Z
    .locals 2

    .line 267
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "Sony"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    const-string v1, "SonyEricsson"

    .line 268
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private pushInitDefaultsToDataLayer()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, ""

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    .line 801
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v9, "pushInitDefaultsToDataLayer"

    .line 802
    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    :cond_0
    :try_start_0
    iget-object v0, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v9, "ro.semc.version.cust"

    invoke-static {v0, v9}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    iget-object v0, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v9, "ro.semc.version.cust_revision"

    .line 809
    invoke-static {v0, v9}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 810
    iget-object v0, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v9, "ro.somc.customerid"

    invoke-static {v0, v9}, Lcom/sonymobile/gagtmhelper/SystemPropertiesProxy;->get(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 813
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_1

    const-string v9, "GaGtmHelper"

    .line 814
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SystemProperty exception:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :cond_1
    :goto_0
    iget-object v0, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    const-string v9, "phone"

    .line 819
    invoke-virtual {v0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Landroid/telephony/TelephonyManager;

    const/4 v10, 0x6

    const/4 v11, 0x0

    const/4 v12, 0x5

    const/4 v13, 0x3

    .line 823
    :try_start_1
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v0

    if-ne v0, v12, :cond_3

    .line 825
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-eq v14, v12, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    if-ne v14, v10, :cond_4

    .line 827
    :cond_2
    invoke-virtual {v0, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 829
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 834
    :cond_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "GaGtmHelper"

    const-string v14, "SIM state is not ready"

    .line 835
    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 839
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v14

    if-eqz v14, :cond_4

    const-string v14, "GaGtmHelper"

    .line 840
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected exception reading SIM info:"

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    :cond_4
    :goto_1
    :try_start_2
    invoke-virtual {v9}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    .line 847
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-eq v9, v12, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-ne v9, v10, :cond_6

    :cond_5
    const/4 v9, 0x0

    .line 848
    invoke-virtual {v0, v9, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 849
    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    .line 852
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "GaGtmHelper"

    .line 853
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unexpected exception reading network info:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_6
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Landroid/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v9, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 859
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "GaGtmHelper"

    .line 860
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Pushing to data layer deviceBuildModel:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceBuildId: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", deviceBuildType:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceCustomization:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceCustomizationRevision:"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceCustomerId: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", deviceSimMcc: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceSimMnc: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", deviceNetworkMcc: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ", "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "deviceNetworkMnc: "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    :cond_7
    sget-object v9, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v9

    .line 872
    :try_start_3
    iget-object v11, v1, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    const/16 v14, 0x14

    new-array v14, v14, [Ljava/lang/Object;

    const-string v15, "gagtm-deviceBuildModel"

    const/16 v16, 0x0

    aput-object v15, v14, v16

    const/4 v15, 0x1

    sget-object v16, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v16, v14, v15

    const/4 v15, 0x2

    const-string v16, "gagtm-deviceBuildId"

    aput-object v16, v14, v15

    aput-object v0, v14, v13

    const/4 v0, 0x4

    const-string v13, "gagtm-deviceBuildType"

    aput-object v13, v14, v0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v0, v14, v12

    const-string v0, "gagtm-deviceCustomization"

    aput-object v0, v14, v10

    const/4 v0, 0x7

    aput-object v2, v14, v0

    const/16 v0, 0x8

    const-string v2, "gagtm-deviceCustomizationRevision"

    aput-object v2, v14, v0

    const/16 v0, 0x9

    aput-object v3, v14, v0

    const/16 v0, 0xa

    const-string v2, "gagtm-deviceCustomerId"

    aput-object v2, v14, v0

    const/16 v0, 0xb

    aput-object v4, v14, v0

    const/16 v0, 0xc

    const-string v2, "gagtm-deviceSimMcc"

    aput-object v2, v14, v0

    const/16 v0, 0xd

    aput-object v6, v14, v0

    const/16 v0, 0xe

    const-string v2, "gagtm-deviceSimMnc"

    aput-object v2, v14, v0

    const/16 v0, 0xf

    aput-object v5, v14, v0

    const/16 v0, 0x10

    const-string v2, "gagtm-deviceNetworkMcc"

    aput-object v2, v14, v0

    const/16 v0, 0x11

    aput-object v8, v14, v0

    const/16 v0, 0x12

    const-string v2, "gagtm-deviceNetworkMnc"

    aput-object v2, v14, v0

    const/16 v0, 0x13

    aput-object v7, v14, v0

    .line 873
    invoke-static {v14}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    .line 872
    invoke-virtual {v11, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 883
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0
.end method


# virtual methods
.method public getContainerHolder()Lcom/google/android/gms/tagmanager/ContainerHolder;
    .locals 2

    .line 649
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 650
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 651
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public init(Landroid/content/Context;Ljava/lang/String;IIILcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;)Z
    .locals 5

    .line 198
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 200
    :try_start_0
    iget-boolean v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    if-eqz v1, :cond_1

    .line 201
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GaGtmHelper"

    const-string p2, "Ignoring call to init, already called."

    .line 202
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    .line 204
    monitor-exit v0

    return p1

    :cond_1
    const/4 v1, 0x1

    .line 206
    iput-boolean v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mInitCalled:Z

    .line 208
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "GaGtmHelper"

    .line 209
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setContainerId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " defaultContainerResourceId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " containerLoadingTimeout="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p6, :cond_2

    const-string v2, "GaGtmHelper"

    .line 214
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    .line 220
    iput-object p2, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerId:Ljava/lang/String;

    .line 221
    iput p3, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mDefaultContainerResourceId:I

    .line 222
    iput p5, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadingTimeout:I

    .line 223
    iput-object p6, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoadedCallback:Lcom/sonymobile/gagtmhelper/GaGtmUtils$OnContainerLoadedListener;

    .line 224
    iput p4, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mSettingsMode:I

    .line 227
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;

    invoke-direct {p2, p0}, Lcom/sonymobile/gagtmhelper/GaGtmUtils$1;-><init>(Lcom/sonymobile/gagtmhelper/GaGtmUtils;)V

    const-string p3, "init_thread"

    invoke-direct {p1, p2, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 261
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public pushAppView(Ljava/lang/String;)V
    .locals 3

    .line 660
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushAppView screenName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    .line 664
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "appView"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-screenName"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    .line 665
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 664
    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    return-void
.end method

.method public pushEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 3

    .line 679
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushEvent category="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0xa

    .line 685
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-eventCategory"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 p1, 0x4

    const-string v1, "gagtm-eventAction"

    aput-object v1, v0, p1

    const/4 p1, 0x5

    aput-object p2, v0, p1

    const/4 p1, 0x6

    const-string p2, "gagtm-eventLabel"

    aput-object p2, v0, p1

    const/4 p1, 0x7

    aput-object p3, v0, p1

    const/16 p1, 0x8

    const-string p2, "gagtm-eventValue"

    aput-object p2, v0, p1

    const/16 p1, 0x9

    .line 688
    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v0, p1

    .line 686
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    .line 685
    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    return-void
.end method

.method public pushException(Ljava/lang/String;)V
    .locals 3

    .line 742
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    .line 743
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pushException exceptionDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x4

    .line 746
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "event"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "exception"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "gagtm-exceptionDescription"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/DataLayer;->mapOf([Ljava/lang/Object;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->pushToDataLayer(Ljava/util/Map;)V

    return-void
.end method

.method public pushToDataLayer(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 758
    iget-boolean v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerLoaded:Z

    if-eqz v0, :cond_1

    .line 759
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "pushToDataLayer send directly to data layer"

    .line 760
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    :cond_0
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 763
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mTagManager:Lcom/google/android/gms/tagmanager/TagManager;

    invoke-virtual {v1}, Lcom/google/android/gms/tagmanager/TagManager;->getDataLayer()Lcom/google/android/gms/tagmanager/DataLayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/android/gms/tagmanager/DataLayer;->push(Ljava/util/Map;)V

    .line 764
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 767
    :cond_1
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "GaGtmHelper"

    const-string v1, "Container is NOT loaded, add to queue"

    .line 768
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_2
    sget-object v0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->sPendingEventsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 773
    :try_start_1
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    const/16 v2, 0x32

    if-ge v1, v2, :cond_3

    .line 774
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mPendingEvents:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 776
    :cond_3
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GaGtmHelper"

    .line 777
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Max pending events reached. Dropping event "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    :cond_4
    :goto_0
    monitor-exit v0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setContainerDefaults()V
    .locals 6

    .line 891
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "GaGtmHelper"

    const-string v1, "setContainerDefaults"

    .line 892
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 895
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContainerHolder:Lcom/google/android/gms/tagmanager/ContainerHolder;

    if-nez v0, :cond_2

    .line 896
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "GaGtmHelper"

    const-string v1, "container holder is null exiting"

    .line 897
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 902
    :cond_2
    invoke-interface {v0}, Lcom/google/android/gms/tagmanager/ContainerHolder;->getContainer()Lcom/google/android/gms/tagmanager/Container;

    move-result-object v0

    if-nez v0, :cond_4

    .line 905
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "GaGtmHelper"

    const-string v1, "container is null exiting"

    .line 906
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 911
    :cond_4
    invoke-virtual {v0}, Lcom/google/android/gms/tagmanager/Container;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GaGtmHelper"

    const-string v2, "container is default"

    .line 912
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const-string v1, "gagtm-dispatchPeriod"

    .line 916
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    if-gtz v2, :cond_6

    const/16 v2, 0x708

    .line 922
    :cond_6
    iget-object v1, p0, Lcom/sonymobile/gagtmhelper/GaGtmUtils;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v1

    .line 923
    invoke-static {}, Lcom/sonymobile/gagtmhelper/GaGtmLog;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "GaGtmHelper"

    .line 924
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "gaDispatchPeriod:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    :cond_7
    invoke-virtual {v1, v2}, Lcom/google/android/gms/analytics/GoogleAnalytics;->setLocalDispatchPeriod(I)V

    const-string v1, "gagtm-exceptionMaxReportedRows"

    .line 932
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 933
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxReportedRows(I)V

    const-string v1, "gagtm-exceptionMaxTraversedRows"

    .line 937
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/Container;->getLong(Ljava/lang/String;)J

    move-result-wide v1

    long-to-int v2, v1

    .line 938
    invoke-static {v2}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setMaxTraversedRows(I)V

    const-string v1, "gagtm-exceptionPackageNames"

    .line 941
    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/Container;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 942
    invoke-static {v0}, Lcom/sonymobile/gagtmhelper/GaGtmExceptionParser;->setEnabledPackageNames(Ljava/lang/String;)V

    return-void
.end method
