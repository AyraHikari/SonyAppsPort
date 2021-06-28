.class public Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;
.super Ljava/lang/Object;
.source "DlnaScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;,
        Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DlnaScanner"


# instance fields
.field private mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDmrContentObserver:Landroid/database/ContentObserver;

.field private mDmrDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mDmrTableUri:Landroid/net/Uri;

.field private mHandlerLock:Ljava/lang/Object;

.field private mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

.field private mScannerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-static {}, Lcom/sonymobile/somcmediarouter/provider/dlna/dmr/DmrDevicesCompat$Factory;->getUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrTableUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mContext:Landroid/content/Context;

    .line 42
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    .line 43
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    .line 44
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    .line 48
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mHandlerLock:Ljava/lang/Object;

    .line 50
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    .line 52
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    .line 114
    new-instance v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$1;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrContentObserver:Landroid/database/ContentObserver;

    .line 127
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 23
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;I)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->stopObserver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->disposeDmrCursor()V

    return-void
.end method

.method static synthetic access$200(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    return-object p0
.end method

.method static synthetic access$202(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    return-object p1
.end method

.method static synthetic access$300(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->startObserver()V

    return-void
.end method

.method static synthetic access$400(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->createDmrList()V

    return-void
.end method

.method static synthetic access$500(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Ljava/util/List;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->handleUpdateDmrList()V

    return-void
.end method

.method static synthetic access$700(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;)Ljava/lang/Object;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mHandlerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$802(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    return-object p1
.end method

.method static synthetic access$902(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    return-object p1
.end method

.method private createDeviceFromDmrCursor(Landroid/database/Cursor;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;
    .locals 7

    .line 211
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 212
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "createDeviceFromDmrCursor"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const-string v0, "device_id"

    .line 216
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    const-string v1, "device_name"

    .line 217
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "uri_icon"

    .line 218
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "device_capabilities"

    .line 219
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "IsVolumeControlSupported"

    .line 220
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, -0x1

    if-eq v4, v6, :cond_1

    .line 225
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 228
    :cond_1
    new-instance v4, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    invoke-direct {v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;-><init>()V

    .line 229
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setDlnaUdn(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 230
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setName(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 231
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setDlnaIconUri(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 232
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setCapabilities(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 233
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->getCategory(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setSupportCategory(Ljava/lang/String;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 234
    invoke-virtual {v4, v5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->setDlnaVolumeControlSupported(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;

    .line 235
    invoke-virtual {v4}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice$Builder;->build()Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    move-result-object p1

    return-object p1
.end method

.method private createDmrList()V
    .locals 2

    .line 539
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 540
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "createDmrList in"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->updateDmrCursor()V

    .line 547
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    if-nez v0, :cond_1

    .line 554
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "mCursor == null"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void

    .line 561
    :cond_1
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_2

    .line 562
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "initialize DMR List"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 568
    :goto_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 569
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    invoke-direct {p0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->createDeviceFromDmrCursor(Landroid/database/Cursor;)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    move-result-object v1

    .line 570
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 573
    :cond_3
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 575
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 578
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_4

    .line 579
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "createDmrList out"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method private disposeDmrCursor()V
    .locals 2

    .line 199
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "disposeDmrCursor"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_1

    .line 204
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    :cond_1
    return-void
.end method

.method private handleUpdateDmrList()V
    .locals 2

    .line 594
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 595
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "updateDmrList"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 604
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->createDmrList()V

    .line 606
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->notifyDmrListUpdated(Ljava/util/List;)V

    return-void
.end method

.method private isEqual(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)Z"
        }
    .end annotation

    .line 438
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 439
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "isEqual"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return v2

    .line 446
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    if-nez v0, :cond_3

    .line 450
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "oldDevice is null"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_3
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v3

    .line 455
    invoke-virtual {v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaIconUri()Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_8

    if-nez v0, :cond_4

    goto :goto_3

    .line 462
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    .line 463
    invoke-virtual {v5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    .line 467
    :cond_6
    invoke-virtual {v5}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaIconUri()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_2

    :cond_7
    const/4 v1, 0x0

    :goto_2
    if-nez v1, :cond_2

    return v2

    .line 458
    :cond_8
    :goto_3
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "oldDevice udn or iconUri is null"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    return v1
.end method

.method private notifyDmrListUpdated(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)V"
        }
    .end annotation

    .line 424
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 425
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "notifyDmrListUpdated"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->removeDisappearedDevices(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    .line 429
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->isEqual(Ljava/util/List;Ljava/util/List;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 430
    :cond_1
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    if-eqz p1, :cond_2

    .line 431
    sget-object p1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v0, "updateDlnaList()"

    invoke-static {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCallback:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;

    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;->updateDlnaList(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method private removeDisappearedDevices(Ljava/util/List;Ljava/util/List;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;",
            "Ljava/util/List<",
            "Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;",
            ">;)Z"
        }
    .end annotation

    .line 483
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 484
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "removeDisappearedDevices"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 490
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    if-nez v3, :cond_2

    goto :goto_0

    .line 497
    :cond_2
    invoke-virtual {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v5

    .line 498
    invoke-virtual {v3}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v6

    if-nez v5, :cond_3

    goto :goto_0

    .line 504
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;

    .line 505
    invoke-virtual {v8}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getDlnaUdn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    goto :goto_1

    .line 512
    :cond_4
    invoke-virtual {v8}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaDevice;->getCapabilities()I

    move-result v5

    if-eq v6, v5, :cond_5

    const/4 v5, -0x1

    if-ne v6, v5, :cond_5

    const/4 v2, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :goto_2
    if-nez v4, :cond_1

    .line 521
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v2, :cond_7

    .line 526
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 527
    iget-object p1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrDevices:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return v4

    :cond_7
    return v1
.end method

.method private sendMessage(I)V
    .locals 1

    const/4 v0, 0x0

    .line 300
    invoke-direct {p0, p1, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method private sendMessage(ILjava/lang/Object;)V
    .locals 2

    .line 304
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    if-eqz v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 307
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 308
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 310
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private setupDmrCursor()V
    .locals 8

    .line 178
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 179
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "setupDmrCursor"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    if-nez v1, :cond_1

    .line 183
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrTableUri:Landroid/net/Uri;

    if-eqz v1, :cond_1

    .line 184
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrTableUri:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mCursor:Landroid/database/Cursor;

    :cond_1
    return-void
.end method

.method private startObserver()V
    .locals 4

    .line 162
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 163
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "startObserver"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrTableUri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const/4 v0, 0x2

    .line 167
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(I)V

    return-void
.end method

.method private stopObserver()V
    .locals 2

    .line 171
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 172
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "endObserver"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mDmrContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateDmrCursor()V
    .locals 2

    .line 190
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 191
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "updateDmrCursor"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->disposeDmrCursor()V

    .line 195
    invoke-direct {p0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->setupDmrCursor()V

    return-void
.end method


# virtual methods
.method public getCategory(I)Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;
    .locals 4

    const/4 v0, 0x4

    .line 610
    new-array v0, v0, [Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_SPEAKER:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;->CATEGORY_TV:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$CategoryCode;

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const/4 v3, 0x3

    aput-object v1, v0, v3

    and-int/lit8 v1, p1, 0x6

    shr-int/2addr v1, v2

    .line 618
    aget-object v0, v0, v1

    .line 620
    sget-object v1, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCategory() capability="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " category="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setup(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$ScanResultCallback;)V
    .locals 3

    .line 131
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 132
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "setup"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mHandlerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    if-nez v1, :cond_2

    .line 138
    new-instance v1, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    .line 139
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 141
    iget-object v1, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScannerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 143
    new-instance v2, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    invoke-direct {v2, p0, v1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;-><init>(Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->mScanner:Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner$DlnaScannerHandler;

    :cond_1
    const/4 v1, 0x1

    .line 145
    invoke-direct {p0, v1, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    .line 148
    invoke-direct {p0, p1}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(I)V

    .line 150
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public teardown()V
    .locals 2

    .line 154
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 155
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "teardown"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    .line 158
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(I)V

    return-void
.end method

.method public updateDmrList()V
    .locals 2

    .line 584
    sget-boolean v0, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->LOG_ENABLE:Z

    if-eqz v0, :cond_0

    .line 585
    sget-object v0, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->TAG:Ljava/lang/String;

    const-string v1, "updateDmrList"

    invoke-static {v0, v1}, Lcom/sonymobile/somcmediarouter/provider/utils/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x3

    .line 587
    invoke-direct {p0, v0}, Lcom/sonymobile/somcmediarouter/provider/dlna/DlnaScanner;->sendMessage(I)V

    return-void
.end method
