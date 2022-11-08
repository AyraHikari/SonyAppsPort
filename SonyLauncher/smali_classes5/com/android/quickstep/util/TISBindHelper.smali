.class public Lcom/android/quickstep/util/TISBindHelper;
.super Ljava/lang/Object;
.source "TISBindHelper.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final BACKOFF_MILLIS:J = 0x3e8L

.field private static final MAX_BACKOFF_MILLIS:J = 0x927c0L

.field private static final TAG:Ljava/lang/String; = "TISBindHelper"


# instance fields
.field private mConnectionAttempts:S

.field private final mConnectionCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/TouchInteractionService$TISBinder;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionRunnable:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mIsConnected:Z

.field private final mPendingConnectedCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTisServiceBound:Z


# direct methods
.method public static synthetic $r8$lambda$ZHmtsQ1ySi_s2Z8JfvFh9flZFB8(Lcom/android/quickstep/util/TISBindHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->internalBindToTIS()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/function/Consumer<",
            "Lcom/android/quickstep/TouchInteractionService$TISBinder;",
            ">;)V"
        }
    .end annotation

    .line 54
    .local p2, "connectionCallback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/quickstep/TouchInteractionService$TISBinder;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mHandler:Landroid/os/Handler;

    .line 45
    new-instance v0, Lcom/android/quickstep/util/TISBindHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/TISBindHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/quickstep/util/TISBindHelper;)V

    iput-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionRunnable:Ljava/lang/Runnable;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mPendingConnectedCallbacks:Ljava/util/ArrayList;

    .line 55
    iput-object p1, p0, Lcom/android/quickstep/util/TISBindHelper;->mContext:Landroid/content/Context;

    .line 56
    iput-object p2, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionCallback:Ljava/util/function/Consumer;

    .line 57
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->internalBindToTIS()V

    .line 58
    return-void
.end method

.method private internalBindToTIS()V
    .locals 4

    .line 107
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/quickstep/util/TISBindHelper;->mContext:Landroid/content/Context;

    const-class v3, Lcom/android/quickstep/TouchInteractionService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mTisServiceBound:Z

    .line 109
    if-eqz v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->resetServiceBindRetryState()V

    .line 111
    return-void

    .line 114
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Retrying TIS Binder connection attempt: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionAttempts:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TISBindHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const/high16 v0, 0x447a0000    # 1000.0f

    iget-short v1, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionAttempts:S

    .line 116
    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    const v1, 0x49127c00    # 600000.0f

    .line 115
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    .line 117
    .local v0, "timeoutMs":J
    iget-object v2, p0, Lcom/android/quickstep/util/TISBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 118
    iget-short v2, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionAttempts:S

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    iput-short v2, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionAttempts:S

    .line 119
    return-void
.end method

.method private internalUnbindToTIS()V
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mTisServiceBound:Z

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 125
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mTisServiceBound:Z

    .line 127
    :cond_0
    return-void
.end method

.method private resetServiceBindRetryState()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 133
    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionAttempts:S

    .line 134
    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 87
    const-string v0, "TISBindHelper"

    const-string v1, "TIS binding died"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->internalBindToTIS()V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 140
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->internalUnbindToTIS()V

    .line 141
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->resetServiceBindRetryState()V

    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mIsConnected:Z

    .line 143
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mPendingConnectedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 144
    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "componentName"    # Landroid/content/ComponentName;
    .param p2, "iBinder"    # Landroid/os/IBinder;

    .line 62
    instance-of v0, p2, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    if-nez v0, :cond_0

    .line 66
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->internalUnbindToTIS()V

    .line 67
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 68
    return-void

    .line 71
    :cond_0
    const-string v0, "TISBindHelper"

    const-string v1, "TIS service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mIsConnected:Z

    .line 73
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mConnectionCallback:Ljava/util/function/Consumer;

    move-object v1, p2

    check-cast v1, Lcom/android/quickstep/TouchInteractionService$TISBinder;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 75
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mPendingConnectedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    .line 76
    .local v1, "r":Ljava/lang/Runnable;
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 77
    .end local v1    # "r":Ljava/lang/Runnable;
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mPendingConnectedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 79
    invoke-direct {p0}, Lcom/android/quickstep/util/TISBindHelper;->resetServiceBindRetryState()V

    .line 80
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .line 83
    return-void
.end method

.method public runOnBindToTouchInteractionService(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .line 95
    iget-boolean v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mIsConnected:Z

    if-eqz v0, :cond_0

    .line 96
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/quickstep/util/TISBindHelper;->mPendingConnectedCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    :goto_0
    return-void
.end method
