.class public Lcom/sonymobile/quickstep/GeServiceHelper;
.super Ljava/lang/Object;
.source "GeServiceHelper.java"


# static fields
.field private static final CLASS_NAME_API_SERVICE:Ljava/lang/String; = "com.sonymobile.gameenhancer.api.GameEnhancerAPIService"

.field private static final PACKAGE_NAME_API_SERVICE:Ljava/lang/String; = "com.sonymobile.gameenhancer.api"

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/sonymobile/quickstep/GeServiceHelper;


# instance fields
.field private mBindingService:Z

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;


# direct methods
.method static bridge synthetic -$$Nest$fputmBindingService(Lcom/sonymobile/quickstep/GeServiceHelper;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mBindingService:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmService(Lcom/sonymobile/quickstep/GeServiceHelper;Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;)V
    .locals 0

    iput-object p1, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 20
    const-class v0, Lcom/sonymobile/quickstep/GeServiceHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/sonymobile/quickstep/GeServiceHelper;->sInstance:Lcom/sonymobile/quickstep/GeServiceHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    .line 46
    new-instance v0, Lcom/sonymobile/quickstep/GeServiceHelper$1;

    invoke-direct {v0, p0}, Lcom/sonymobile/quickstep/GeServiceHelper$1;-><init>(Lcom/sonymobile/quickstep/GeServiceHelper;)V

    iput-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    .line 61
    iput-object p1, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method private bindService()Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;
    .locals 6

    .line 77
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    return-object v1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mBindingService:Z

    if-nez v0, :cond_1

    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    const-string v2, "com.sonymobile.gameenhancer.api"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 85
    const-string v3, "com.sonymobile.gameenhancer.api.GameEnhancerAPIService"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 86
    .local v0, "intent":Landroid/content/Intent;
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mBindingService:Z

    .line 87
    const/4 v3, 0x0

    .line 89
    .local v3, "bindSucc":Z
    :try_start_0
    iget-object v4, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v4, v0, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Ljava/lang/SecurityException;
    sget-object v4, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    const-string v5, "Faild to bindService"

    invoke-static {v4, v5, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 93
    .end local v2    # "e":Ljava/lang/SecurityException;
    :goto_0
    if-nez v3, :cond_1

    .line 94
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mBindingService:Z

    .line 95
    return-object v1

    .line 99
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "bindSucc":Z
    :cond_1
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    return-object v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/sonymobile/quickstep/GeServiceHelper;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    const-class v0, Lcom/sonymobile/quickstep/GeServiceHelper;

    monitor-enter v0

    .line 30
    :try_start_0
    sget-object v1, Lcom/sonymobile/quickstep/GeServiceHelper;->sInstance:Lcom/sonymobile/quickstep/GeServiceHelper;

    if-nez v1, :cond_0

    .line 31
    new-instance v1, Lcom/sonymobile/quickstep/GeServiceHelper;

    invoke-direct {v1, p0}, Lcom/sonymobile/quickstep/GeServiceHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/sonymobile/quickstep/GeServiceHelper;->sInstance:Lcom/sonymobile/quickstep/GeServiceHelper;

    .line 33
    :cond_0
    sget-object v1, Lcom/sonymobile/quickstep/GeServiceHelper;->sInstance:Lcom/sonymobile/quickstep/GeServiceHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 29
    .end local p0    # "context":Landroid/content/Context;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private unbindService()Z
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    if-eqz v2, :cond_0

    .line 108
    iget-object v2, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 109
    iput-boolean v1, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mBindingService:Z

    .line 110
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    .line 111
    const/4 v0, 0x1

    return v0

    .line 113
    :cond_0
    return v1
.end method


# virtual methods
.method public done()V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/sonymobile/quickstep/GeServiceHelper;->unbindService()Z

    .line 70
    return-void
.end method

.method public init()V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/sonymobile/quickstep/GeServiceHelper;->bindService()Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    .line 66
    return-void
.end method

.method public maybeGameApp(Ljava/lang/String;)Z
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .line 117
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    if-nez v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/sonymobile/quickstep/GeServiceHelper;->bindService()Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    move-result-object v0

    iput-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/sonymobile/quickstep/GeServiceHelper;->mService:Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 121
    sget-object v0, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "mService is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    return v1

    .line 124
    :cond_1
    if-nez p1, :cond_2

    .line 125
    sget-object v0, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    const-string v2, "packageName is null"

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    return v1

    .line 130
    :cond_2
    :try_start_0
    invoke-interface {v0, p1}, Lcom/sonymobile/gameenhancer/api/IGameEnhancerAPIService;->isGameApp(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 136
    :catch_0
    move-exception v0

    goto :goto_0

    .line 131
    :catch_1
    move-exception v0

    .line 132
    .local v0, "e":Ljava/lang/IllegalStateException;
    :try_start_1
    sget-object v2, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "IllegalStateException occurred in isGameApp()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 134
    return v1

    .line 137
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    sget-object v2, Lcom/sonymobile/quickstep/GeServiceHelper;->TAG:Ljava/lang/String;

    const-string v3, "Faild to determine game app"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 138
    return v1
.end method
