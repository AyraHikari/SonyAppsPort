.class final synthetic Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;
.super Ljava/lang/Object;
.source "ConfigCacheClient.java"

# interfaces
.implements Lcom/google/android/gms/tasks/SuccessContinuation;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

.field private final arg$2:Z

.field private final arg$3:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iput-boolean p2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$2:Z

    iput-object p3, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$3:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;)Lcom/google/android/gms/tasks/SuccessContinuation;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;-><init>(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;)V

    return-object v0
.end method


# virtual methods
.method public then(Ljava/lang/Object;)Lcom/google/android/gms/tasks/Task;
    .locals 3

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$1:Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;

    iget-boolean v1, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$2:Z

    iget-object v2, p0, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient$$Lambda$2;->arg$3:Lcom/google/firebase/remoteconfig/internal/ConfigContainer;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, v1, v2, p1}, Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;->lambda$put$1(Lcom/google/firebase/remoteconfig/internal/ConfigCacheClient;ZLcom/google/firebase/remoteconfig/internal/ConfigContainer;Ljava/lang/Void;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    return-object p1
.end method
