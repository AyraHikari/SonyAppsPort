.class final synthetic Lcom/google/firebase/remoteconfig/RemoteConfigComponent$$Lambda$4;
.super Ljava/lang/Object;
.source "RemoteConfigComponent.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final arg$1:Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;


# direct methods
.method private constructor <init>(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;

    return-void
.end method

.method public static lambdaFactory$(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;)Ljava/util/concurrent/Callable;
    .locals 1

    new-instance v0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent$$Lambda$4;

    invoke-direct {v0, p0}, Lcom/google/firebase/remoteconfig/RemoteConfigComponent$$Lambda$4;-><init>(Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;)V

    return-object v0
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/firebase/remoteconfig/RemoteConfigComponent$$Lambda$4;->arg$1:Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;

    invoke-virtual {v0}, Lcom/google/firebase/remoteconfig/internal/LegacyConfigsHandler;->saveLegacyConfigsIfNecessary()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
