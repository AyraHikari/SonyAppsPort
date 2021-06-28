.class public Lcom/sonyericsson/music/common/DataSaverStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DataSaverStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;

.field private mRegisteredReceiver:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 32
    iput-object p2, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mListener:Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;

    .line 33
    iput-object p1, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private reportDataSaveStatus()V
    .locals 2

    .line 64
    iget-object v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mListener:Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonyericsson/music/common/DataSaverUtil;->getDataSaverStatus(Landroid/content/Context;)Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mListener:Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;

    invoke-interface {v1, v0}, Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;->onDataSaverStatusChanged(Lcom/sonyericsson/music/common/DataSaverUtil$DataSaverStatus;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 72
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x18

    if-lt p1, v0, :cond_1

    .line 73
    iget-boolean p1, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mRegisteredReceiver:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 77
    invoke-direct {p0}, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->reportDataSaveStatus()V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;)V
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mListener:Lcom/sonyericsson/music/common/DataSaverStatusReceiver$DataSaverStatusListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 41
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 42
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mRegisteredReceiver:Z

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.net.conn.RESTRICT_BACKGROUND_CHANGED"

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mRegisteredReceiver:Z

    .line 51
    :cond_0
    invoke-direct {p0}, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->reportDataSaveStatus()V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    .line 56
    iget-boolean v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 58
    iput-boolean v0, p0, Lcom/sonyericsson/music/common/DataSaverStatusReceiver;->mRegisteredReceiver:Z

    :cond_0
    return-void
.end method
