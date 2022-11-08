.class public Lcom/android/launcher3/util/MainThreadInitializedObject;
.super Ljava/lang/Object;
.source "MainThreadInitializedObject.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;,
        Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;"
        }
    .end annotation
.end field

.field private mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<",
            "TT;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    .local p1, "provider":Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;, "Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    .line 48
    return-void
.end method

.method public static forOverride(Ljava/lang/Class;I)Lcom/android/launcher3/util/MainThreadInitializedObject;
    .locals 2
    .param p1, "resourceId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/android/launcher3/util/ResourceBasedOverride;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;I)",
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "TT;>;"
        }
    .end annotation

    .line 84
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    new-instance v1, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda2;-><init>(Ljava/lang/Class;I)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    return-object v0
.end method

.method static synthetic lambda$forOverride$2(Ljava/lang/Class;ILandroid/content/Context;)Lcom/android/launcher3/util/ResourceBasedOverride;
    .locals 1
    .param p0, "clazz"    # Ljava/lang/Class;
    .param p1, "resourceId"    # I
    .param p2, "c"    # Landroid/content/Context;

    .line 84
    invoke-static {p0, p2, p1}, Lcom/android/launcher3/util/ResourceBasedOverride$Overrides;->getObject(Ljava/lang/Class;Landroid/content/Context;I)Lcom/android/launcher3/util/ResourceBasedOverride;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public get(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")TT;"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    instance-of v0, p1, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    if-eqz v0, :cond_0

    .line 52
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;

    iget-object v1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-static {v0, p0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;->-$$Nest$mgetObject(Lcom/android/launcher3/util/MainThreadInitializedObject$SandboxContext;Lcom/android/launcher3/util/MainThreadInitializedObject;Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    if-nez v0, :cond_2

    .line 56
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 57
    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda0;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V

    const-string v1, "main.thread.object"

    invoke-static {v1, v0}, Lcom/android/launcher3/util/TraceHelper;->allowIpcs(Ljava/lang/String;Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    goto :goto_0

    .line 61
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject$$ExternalSyntheticLambda1;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 67
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public getNoCreate()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public initializeForTesting(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    iput-object p1, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mValue:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method synthetic lambda$get$0$com-android-launcher3-util-MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 58
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    iget-object v0, p0, Lcom/android/launcher3/util/MainThreadInitializedObject;->mProvider:Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$get$1$com-android-launcher3-util-MainThreadInitializedObject(Landroid/content/Context;)Ljava/lang/Object;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/android/launcher3/util/MainThreadInitializedObject;, "Lcom/android/launcher3/util/MainThreadInitializedObject<TT;>;"
    invoke-virtual {p0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
