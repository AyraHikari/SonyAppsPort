.class public Lcom/sonymobile/music/common/NetworkStatusReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetworkStatusReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;

.field private mRegisteredReceiver:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mListener:Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;

    .line 32
    iput-object p1, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mContext:Landroid/content/Context;

    return-void
.end method

.method private reportConnectivityStatus()V
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mListener:Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mContext:Landroid/content/Context;

    .line 72
    invoke-static {v0}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->hasNetworkConnection(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mListener:Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v2, v0}, Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;->onNetworkAvailabilityChanged(ZI)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getConnectivityStatus()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/sonymobile/music/common/NetworkConnectivityUtil;->hasNetworkConnection(Landroid/content/Context;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .line 65
    invoke-virtual {p0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;->getConnectivityStatus()Landroid/util/Pair;

    move-result-object v0

    .line 66
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    iget-boolean p1, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mRegisteredReceiver:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 83
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 84
    invoke-direct {p0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;->reportConnectivityStatus()V

    :cond_1
    return-void
.end method

.method public setListener(Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mListener:Lcom/sonymobile/music/common/NetworkStatusReceiver$ConnectivityListener;

    return-void
.end method

.method public start()V
    .locals 2

    .line 44
    iget-boolean v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mRegisteredReceiver:Z

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v1, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 47
    iput-boolean v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mRegisteredReceiver:Z

    .line 50
    :cond_0
    invoke-direct {p0}, Lcom/sonymobile/music/common/NetworkStatusReceiver;->reportConnectivityStatus()V

    return-void
.end method

.method public stop()V
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mRegisteredReceiver:Z

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 56
    iput-boolean v0, p0, Lcom/sonymobile/music/common/NetworkStatusReceiver;->mRegisteredReceiver:Z

    :cond_0
    return-void
.end method
